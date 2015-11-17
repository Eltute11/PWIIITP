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
    public partial class MaratonResultado : System.Web.UI.Page
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
			
			if (Request.QueryString["ID"].ToString() != null)
                {
                    int maratonID = Convert.ToInt32(Request.QueryString["ID"]);

                    var maratonRepo = new MaratonRepositorio();

                    string nombre = maratonRepo.obtenerNombre(maratonID);

                    if (nombre != "")
                    {
                        lblMaratonNombre.Text = nombre;
                        cargarParticipantes(maratonID);
                    }
                }
        }

       
        private void cargarParticipantes(int maratonID)
        {
            var maratonRepo = new MaratonRepositorio();

            gvResultados.DataSource = maratonRepo.ObtenerParticipantes(maratonID);
            gvResultados.DataBind();               
        }

        
    }
}