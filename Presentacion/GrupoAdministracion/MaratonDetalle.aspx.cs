using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaseDeDatos;
using BaseDeDatos.Modelo;

namespace Presentacion.GrupoAdministracion
{
    public partial class MaratonDetalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Usuario usuario = new Usuario(); // Lo obtengo de BaseDeDatos.Modelo.Usuario
                usuario = (Usuario)Session["Usuario"];

                if (usuario == null || usuario.Administrador != true)
                {
                    HttpContext.Current.Session.Clear();
                    HttpContext.Current.Session.Abandon();
                    Response.Redirect(@"..\Login.aspx", false);
                    return;
                }
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            var maratonRepo = new MaratonRepositorio();

            var maraton = new Maraton();

            maraton.Nombre = txtNombre.Text;
            maraton.Cant_Participantes = Convert.ToInt32(txtCantidad.Text);
            maraton.Lugar_Salida = txtSalida.Text;
            maraton.Cant_Lista_Espera = Convert.ToInt32(txtEspera.Text);
            maraton.Premio_Uno = Convert.ToDecimal(txtPremio1.Text);
            maraton.Premio_Dos = Convert.ToDecimal(txtPremio2.Text);
            maraton.Premio_Tres = Convert.ToDecimal(txtPremio3.Text);
            maraton.Fecha = Convert.ToDateTime(txtFechaSalida.Text);
            maraton.Km = Convert.ToInt32(txtKm.Text);

            if (maratonRepo.Crear(maraton) > 0)
                lblMensaje.Text = "Maraton " + txtNombre.Text + " creada exitosamente.";

            else
                lblMensaje.Text = "No se pudo crear la Maraton";
        }
    }
}