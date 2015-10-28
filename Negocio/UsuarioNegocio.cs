using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseDeDatos;
using Entidades;

namespace Negocio
{
    public static class UsuarioNegocio
    {
        public static bool Registrar(oUsuario usuario)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();

            return Convert.ToBoolean(usuarioDAO.Crear(usuario));
        }

        public static bool Login(oUsuario usuario)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();

            bool administrador = usuario.administrador;
            bool login = false;

            if (Convert.ToBoolean(usuarioDAO.Obtener(ref usuario)))
            {
                if (administrador)
                    login = (administrador == usuario.administrador);
                else
                    login = true;
            }

            return login;
        }
    }
}
