using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseDeDatos;
using BaseDeDatos.Modelo;

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
                                      where !maratonesInscriptas.Contains(mar.ID) // !subquery.Contains =  NOT IN por el ! 
                                      select mar).ToList();

            return inscripcionMaraton;

            
           
        }

        public void InscripcionMaraton(Maraton_Usuario maraton_usuario)
        {
            Contexto.Maraton_Usuario.Add(maraton_usuario);

            Contexto.SaveChanges();
        }
    }
}
