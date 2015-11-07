using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaseDeDatos;

namespace Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            var usuarioRepo = new UsuarioRepositorio();

            var usuario = new BaseDeDatos.Modelo.Usuario();

            usuario.Email = txtEmail.Text;
            usuario.Clave = txtClave.Text;

            usuario = usuarioRepo.Obtener(txtEmail.Text, txtClave.Text);
            

            if (usuario != null)
            {
                Session["Usuario"] = usuario;

                if (usuario.Administrador)
                {
                    Response.Redirect(@"\GrupoAdministracion\MisMaratones.aspx", false);
                }
                else
                {
                    Response.Redirect(@"\GrupoUsuario\MisMaratones.aspx", false);
                }
            }
            else
            {
                lblMensaje.Text = "¡Usuario o Perfil Inválidos!";
            }
        }
    }
}