using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaseDeDatos;
using BaseDeDatos.Modelo;

namespace Presentacion
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var maratonRepo = new MaratonRepositorio();

                gvPosiciones.DataSource = maratonRepo.ObtenerPosiciones();
                lblNombreMaraton.Text = maratonRepo.obtenerNombreUltimaMaraton();
                gvPosiciones.DataBind();
            }
        }
                
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            var usuarioRepo = new UsuarioRepositorio();

            var usuario = new Usuario();

            usuario.Nombre = txtNombre.Text;
            usuario.Apellido = txtApellido.Text;
            usuario.Clave = txtClave.Text;
            usuario.Residencia = txtResidencia.Text;
            usuario.Fecha_Nacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
            usuario.Administrador = false;
            usuario.Email = txtEmail.Text;

            if (usuarioRepo.Crear(usuario) > 0) {
                lblMensaje.Text = "Usuario creado.";
                txtNombre.Text = "";
                txtApellido.Text = "";
                txtEmail.Text = "";
                txtFechaNacimiento.Text = "";
                txtResidencia.Text = "";
                txtClave.Text = "";
                txtClaveRepetir.Text = "";
            }
            else
                lblMensaje.Text = "No se pudo crear el Usuario";
        }

    }
}