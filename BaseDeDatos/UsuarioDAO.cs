using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace BaseDeDatos
{
    public class UsuarioDAO
    {
        public Modelo.MaratonEntities Contexto = new Modelo.MaratonEntities();

        public int Crear(oUsuario usuario)
        {
            var usuarioRepositorio = new Modelo.UsuarioRepositorio(Contexto);

            var _usuario = new Modelo.Usuario();

            _usuario.Nombre = usuario.nombre;
            _usuario.Apellido = usuario.apellido;
            _usuario.Clave = usuario.clave;
            _usuario.Fecha_Nacimiento = usuario.fechaNacimiento;
            _usuario.Residencia = usuario.residencia;
            _usuario.Administrador = usuario.administrador;
            _usuario.Email = usuario.email;

            return usuarioRepositorio.Crear(_usuario);
        }

        public bool Obtener(ref oUsuario usuario)
        {
            var usuarioRepositorio = new Modelo.UsuarioRepositorio(Contexto);

            var _usuario = new Modelo.Usuario();

            _usuario = usuarioRepositorio.Obtener(usuario.email, usuario.clave);

            if (_usuario.ID > 0)
            {
                usuario.nombre = _usuario.Nombre;
                usuario.apellido = _usuario.Apellido;
                usuario.clave = _usuario.Clave;
                usuario.fechaNacimiento = Convert.ToDateTime(_usuario.Fecha_Nacimiento);
                usuario.residencia = _usuario.Residencia;
                usuario.administrador = _usuario.Administrador;
                usuario.email = _usuario.Email;

                return true;
            }
            else
                return false;
        }
    }
}
