using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BaseDeDatos.Modelo
{
    public class UsuarioRepositorio
    {
        public MaratonEntities Contexto { get; set; }

        public UsuarioRepositorio(MaratonEntities ctx)
        {
            this.Contexto = ctx;
        }

        public int Crear(Usuario usuario)
        {
            Contexto.Usuario.Add(usuario);

            Contexto.SaveChanges();

            return usuario.ID;
        }

        public Usuario Obtener(string email, string clave)
        {
            var usuario = (from a in Contexto.Usuario
                           where a.Email.Contains(email) && a.Clave.Equals(clave)
                           select a).SingleOrDefault();

            return usuario;
        }
    }
}
