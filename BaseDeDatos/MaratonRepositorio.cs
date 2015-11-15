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
            var maratonesPendientes = (from mu in Contexto.Maraton_Usuario
                                       group new { mu.Maraton, mu } by new
                                       {
                                           ID = mu.Maraton.ID,
                                           Nombre = mu.Maraton.Nombre,
                                           Fecha = mu.Maraton.Fecha,
                                           Km = mu.Maraton.Km,
                                           Cant_Participantes = mu.Maraton.Cant_Participantes,
                                           Premio_Uno = mu.Maraton.Premio_Uno,
                                           Premio_Dos = mu.Maraton.Premio_Dos,
                                           Premio_Tres = mu.Maraton.Premio_Tres,
                                           mu.MaratonID
                                       } into g
                                       select new
                                       {
                                           Nombre_de_Maraton = g.Key.Nombre,
                                           Fecha = g.Key.Fecha,
                                           Km = g.Key.Km,
                                           Esperados = g.Key.Cant_Participantes,
                                           Inscriptos = g.Count(p => p.mu.UsuarioID != null),
                                           Espera =
                                           (from mu2 in Contexto.Maraton_Usuario
                                            where
                                            g.Key.MaratonID == mu2.MaratonID &&
                                            mu2.Lista_Espera == true
                                            select new
                                            {
                                                mu2.UsuarioID
                                            }).Count(p => p.UsuarioID != null),
                                           Premio_N1 = g.Key.Premio_Uno,
                                           Premio_N2 = g.Key.Premio_Dos,
                                           Premio_N3 = g.Key.Premio_Tres
                                       });

            return maratonesPendientes.ToList();
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
            DateTime fecha = DateTime.Now;

            var maximo = (from m in Contexto.Maraton
                              where m.Fecha < fecha
                              orderby m.Fecha descending
                              select m.Fecha).FirstOrDefault();

            //var maximo = Contexto.Maraton.Max(m => m.Fecha);

            var posiciones = (from mu in Contexto.Maraton_Usuario
                              join u in Contexto.Usuario on mu.UsuarioID equals u.ID
                              join m in Contexto.Maraton on mu.MaratonID equals m.ID
                              where maximo.Equals(m.Fecha)
                              select new
                              {
                                  Posicion = SqlFunctions.StringConvert((double)mu.Posicion) + " " + u.Nombre + " " + u.Apellido
                              }).ToList();

            return posiciones;
        }
    }
}
