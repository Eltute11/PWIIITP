using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseDeDatos.Modelo;

namespace BaseDeDatos
{
    public class UsuarioRepositorio
    {
        private MaratonEntities Contexto { get; set; }

        public UsuarioRepositorio()
        {
            this.Contexto = new MaratonEntities();
        }

        public int Crear(Usuario usuario)
        {
            Contexto.Usuario.Add(usuario);
            Contexto.SaveChanges();

            return usuario.ID;
        }

        public Usuario Obtener(string Email, string Clave)
        {
            var _usuario = (from a in Contexto.Usuario
                            where a.Email == Email && a.Clave == Clave
                            select a).FirstOrDefault();

            return _usuario;
        }

        public bool Actualizar(Modelo.Usuario usuario)
        {
            // Contexto.Usuario.

            return true;
        }
    }
}
