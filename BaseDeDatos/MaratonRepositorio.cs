using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseDeDatos;
using BaseDeDatos.Modelo;
using System.Data.Objects;
using System.Collections;
using System.Data.Objects.SqlClient;

namespace BaseDeDatos
{
    public class MaratonRepositorio
    {
        private MaratonEntities Contexto { get; set; }

        public MaratonRepositorio()
        {
            this.Contexto = new MaratonEntities();
        }

        public int Crear(Maraton maraton)
        {
            Contexto.Maraton.Add(maraton);

            Contexto.SaveChanges();

            return maraton.ID;
        }

        public List<Maraton> ObtenerUltima()
        {
            var _maratones = (from m in Contexto.Maraton
                              select m).ToList();

            return _maratones;
        }

        public List<Maraton> ObtenerPendientesUsuario(Usuario usu)
        {
            return (from m in Contexto.Maraton
                    join mu in Contexto.Maraton_Usuario on m.ID equals mu.MaratonID
                    where mu.UsuarioID == usu.ID
                       && mu.Tiempo_Llegada == null
                    select m).ToList();
        }

        public void AnularInscripcionUsuario(int usu, int mar)
        {
            var anularMaraton = (from mu in Contexto.Maraton_Usuario
                                 where mu.MaratonID == mar &&
                                       mu.UsuarioID == usu
                                 select mu);


            foreach (Maraton_Usuario mu in anularMaraton)
            {
                Contexto.Maraton_Usuario.Remove(mu);
            }

            Contexto.SaveChanges();

        }

        public List<Maraton> ObtenerMaratonesInscripcion(int usuarioID)
        {

            var maratonesInscriptas = (from mu in Contexto.Maraton_Usuario
                                       where mu.UsuarioID == usuarioID
                                       select mu.MaratonID).ToList();

            var inscripcionMaraton = (from mar in Contexto.Maraton
                                      where mar.Fecha > DateTime.Now
                                       && !maratonesInscriptas.Contains(mar.ID) // !subquery.Contains =  NOT IN por el ! 
                                      select mar).ToList();

            return inscripcionMaraton;
        }

        public void InscripcionMaraton(Maraton_Usuario maraton_usuario)
        {
            Contexto.Maraton_Usuario.Add(maraton_usuario);

            Contexto.SaveChanges();
        }

        public  object ObtenerMaratonesPendientes()
        {
            var maratonesPendientes = (from m in Contexto.Maraton
                                       where m.Fecha > DateTime.Now
                                       join c in (
                                                    from mu in Contexto.Maraton_Usuario
                                                    group mu by new
                                                        {
                                                            mu.MaratonID
                                                        } into g
                                                    select new
                                                    {
                                                        g.Key.MaratonID,
                                                        Cantidad = g.Count(p => p.MaratonID != 0)
                                                    })
                                       on m.ID equals c.MaratonID
                                       join e in (
                                                    from mu in Contexto.Maraton_Usuario
                                                    where mu.Lista_Espera == true
                                                    group mu by new
                                                        {
                                                            mu.MaratonID
                                                        } into g
                                                    select new
                                                    {
                                                        Espera = g.Count(p => p.Lista_Espera != false),
                                                        g.Key.MaratonID
                                                    }) 
                                       on c.MaratonID equals e.MaratonID into e_join //LEFT JOIN
                                       from e in e_join.DefaultIfEmpty()
                                       select new
                                       {
                                           Nombre_de_Maraton = m.Nombre,
                                           m.Fecha,
                                           m.Km,
                                           Esperados = m.Cant_Participantes,
                                           Inscriptos = c.Cantidad,
                                           Espera = e.Espera != 0 && e.Espera != 1 ? 0 : 0,
                                           Premio_N1 = m.Premio_Uno,
                                           Premio_N2 = m.Premio_Dos,
                                           Premio_N3 = m.Premio_Tres
                                       }).ToList();

            return maratonesPendientes;
        }
        public object ObtenerRealizadasUsuario(int usuarioID)
        {
            var usuarioHistorial = (from b in Contexto.Maraton_Usuario
                                    where
                                      b.UsuarioID == usuarioID
                                      && b.Maraton.Fecha < DateTime.Now
                                    select new
                                    {
                                        b.Maraton.Nombre,
                                        b.Maraton.Lugar_Salida,
                                        b.Presente,
                                        b.Posicion,
                                        b.Abandono,
                                        b.Tiempo_Llegada,
                                        Premio = b.Posicion == 1 ? b.Maraton.Premio_Uno :
                                                    b.Posicion == 2 ? b.Maraton.Premio_Dos :
                                                    b.Posicion == 3 ? b.Maraton.Premio_Tres : 0
                                    });
             return usuarioHistorial.ToList();
        }
        public object ObtenerPosiciones()
        {
            var maximo = (  from m in Contexto.Maraton
                            where m.Fecha < DateTime.Now
                            orderby m.Fecha descending
                            select m.Fecha).FirstOrDefault();

            var posiciones = (from mu in Contexto.Maraton_Usuario
                              join u in Contexto.Usuario on mu.UsuarioID equals u.ID
                              join m in Contexto.Maraton on mu.MaratonID equals m.ID
                              where maximo.Equals(m.Fecha)
                              select new
                              {
                                  Posicion = SqlFunctions.StringConvert((double)mu.Posicion) + " " + u.Nombre + " " + u.Apellido
                              }).OrderBy(p =>p.Posicion).ToList();

            return posiciones;
        }
    }
}
