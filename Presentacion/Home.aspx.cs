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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            oUsuario oUsuario = new oUsuario();
            oUsuario.nombre = txtNombre.Text;
            oUsuario.apellido = txtApellido.Text;
            oUsuario.clave = txtClave.Text;
            oUsuario.residencia = txtResidencia.Text;
            oUsuario.fechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
            oUsuario.administrador = false;
            oUsuario.email = txtEmail.Text;

            UsuarioNegocio.Registrar(oUsuario);
                
        }

    }
}