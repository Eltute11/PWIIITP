using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            oUsuario oUsuario = new oUsuario();
            oUsuario.email = txtEmail.Text;
            oUsuario.clave = txtClave.Text;
            oUsuario.administrador = chkSoyAdministrador.Checked;

            if (UsuarioNegocio.Login(oUsuario))
            {
                if (oUsuario.administrador)
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
                lblMensaje.Visible = true;   
            }
        }
    }
}