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
using System.Data.SqlClient;

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

		public List<Maraton> ObtenerRealizadas()
        {
            return (from maraton in Contexto.Maraton
                    where maraton.Fecha < DateTime.Now
                    orderby maraton.Fecha descending
                    select maraton).ToList();
        }

        public List<Maraton> ObtenerPendientesUsuario(Usuario usu)
        {
            return (from m in Contexto.Maraton
                    join mu in Contexto.Maraton_Usuario on m.ID equals mu.MaratonID
                    where mu.UsuarioID == usu.ID
                       && mu.Tiempo_Llegada == null
                    select m).ToList();
        }
	
	 public string obtenerNombre(int maratonID)
        {
            var _maratones = (from m in Contexto.Maraton
                              where m.ID == maratonID
                              select m).FirstOrDefault(); ;

            return (_maratones.Nombre == null ? "" : _maratones.Nombre);
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
		
		 public object ObtenerParticipantes(int maratonID)
        {
             var userMaraton =
                      (from u in Contexto.Usuario
                      join mu in Contexto.Maraton_Usuario
                      on u.ID equals mu.UsuarioID
                      where mu.MaratonID == maratonID 
                      orderby mu.Posicion
                      select new {  Nombre = u.Nombre + " " + u.Apellido , u.ID, mu.MaratonID, mu.Presente, mu.Abandono, mu.Tiempo_Llegada, mu.Posicion }).ToList();

             return userMaraton;
        }

        public void Actualizar(Maraton_Usuario resultado)
        { 
            Maraton_Usuario participante = (from mu in Contexto.Maraton_Usuario 
                                            where mu.UsuarioID == resultado.UsuarioID && mu.MaratonID == resultado.MaratonID
                                            select mu).First();

            participante.Abandono = resultado.Abandono;
            participante.Presente = resultado.Presente;
            participante.Tiempo_Llegada = resultado.Tiempo_Llegada;

            var posicion = (from mu in Contexto.Maraton_Usuario
                            where mu.MaratonID == resultado.MaratonID 
                               && mu.Tiempo_Llegada != null
                            select mu).Count();

            if (participante.Posicion == null) { 
                participante.Posicion = (posicion + 1);
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
                                       on m.ID equals c.MaratonID into c_join
                                       from c in c_join.DefaultIfEmpty()
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
                                           Inscriptos = c.Cantidad == null ? 0 : 0,
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
        public List<UltimaMaraton> ObtenerPosiciones()
        {
            int idUltimaMaraton = ObtenrUltimaMaratonRealizada();
            
            var posiciones = (from mu in Contexto.Maraton_Usuario
                              join u in Contexto.Usuario on mu.UsuarioID equals u.ID
                              join m in Contexto.Maraton on mu.MaratonID equals m.ID
                              where mu.MaratonID == idUltimaMaraton
                                 && mu.Tiempo_Llegada != null
                              select new UltimaMaraton ()
                              {
                                 Posicion = mu.Posicion,
                                 Nombre = u.Nombre,
                                 Apellido = u.Apellido,
                                 Tiempo_Llegada = mu.Tiempo_Llegada

                              }).OrderBy(p => p.Posicion).ToList();
                              

            return posiciones;
        }

        public int ObtenrUltimaMaratonRealizada () 
        {
            // OBTENGO TODAS LAS MARATONES CON FECHA ANTERIOR A LA ACTUAL
            //int idUltima = 0;

            List<Maraton> lstMaraton = (from m in Contexto.Maraton
                                        //join mu in Contexto.Maraton_Usuario  on m.ID equals mu.MaratonID
                                        where m.Fecha < DateTime.Now
                                        select m).ToList();

            int flag = 0;

            Maraton maratonAUX = new Maraton();


            foreach (Maraton maraton in lstMaraton) //RECORRO TODAS LAS MARATONES
            {
                if (flag == 0) // GUARDO LA PRIMER MARATON EN MARATONAUX
                {
                    maratonAUX = maraton;
                    flag = 1;
                }
                else
                {
                    if (maraton.Fecha > maratonAUX.Fecha) // SI LA FECHA DE LA MARATON ACTUAL DEL FOREACH ES MAYOR A LA FECHA DE MARATONAUX, PISO MARATONAUX.
                    { 
                        maratonAUX = maraton;
                    }
                    else if (maraton.Fecha == maratonAUX.Fecha) // // SI LA FECHA DE LA MARATON ACTUAL DEL FOREACH ES IGUAL A LA FECHA DE MARATONAUX,  OBTENGO LA CANTIDAD DE INSCRIPTOS DE CADA UNA 
                    {

                        int maxMaratonActual = (from mu in Contexto.Maraton_Usuario
                                                   where mu.MaratonID == maraton.ID
                                                   select mu).Count();

                        int maxMaratonAux = (from mu in Contexto.Maraton_Usuario
                                                   where mu.MaratonID == maratonAUX.ID
                                                   select mu).Count();




                        if (maxMaratonActual > maxMaratonAux)
                        //SI LA CANTIDAD DE LA ACTUAL ES MAYOR A LA DE LA maratonAUX, PISO maratonAUX Con la acutal ACTUAL 
                        {
                            maratonAUX = maraton;
                        }

                    } 
                }
                

            }


            return maratonAUX.ID;
        }
		
	  public Maraton_Usuario ObtenerResultado(int MaratonID, int UsuarioID)
        {
            Maraton_Usuario participante = (from mu in Contexto.Maraton_Usuario
                                            where mu.UsuarioID == UsuarioID && mu.MaratonID == MaratonID
                                            select mu).First();

            return participante;
        }


      public string obtenerNombreUltimaMaraton()
      {

          int idUltimaMaraton = ObtenrUltimaMaratonRealizada();

          string ultimaMaraton = (from m in Contexto.Maraton
                                  where m.ID == idUltimaMaraton
                                  select m.Nombre).First();

          return ultimaMaraton;

      }
    }

   
}
