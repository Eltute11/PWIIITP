using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaseDeDatos;
using BaseDeDatos.Modelo;
namespace Presentacion.GrupoUsuario
{
    public partial class UsuarioAdminDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                Usuario usuario = new Usuario(); // Lo obtengo de BaseDeDatos.Modelo.Usuario
                usuario = (Usuario)Session["Usuario"];

                txtNombre.Text = usuario.Nombre;
                txtApellido.Text = usuario.Apellido;
                txtFechaNacimiento.Text = Convert.ToString(usuario.Fecha_Nacimiento).Substring(0, 10);  
                txtResidencia.Text = usuario.Residencia;
       
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            var usuarioRepo = new UsuarioRepositorio();
            Usuario usuarioModificar = new Usuario();
            usuarioModificar = (Usuario)Session["Usuario"];

            int usuarioID = usuarioModificar.ID;

            usuarioRepo.ModificarDatosUsuario(usuarioID, txtNombre.Text, txtApellido.Text, txtFechaNacimiento.Text, txtResidencia.Text);





        }
    }
}