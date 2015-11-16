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
    public partial class Maratones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var maratonRepo = new MaratonRepositorio();

                Usuario usuario = new Usuario();
                usuario = (Usuario)Session["Usuario"];
                
                if (usuario == null || usuario.Administrador != true)
                {
                    HttpContext.Current.Session.Clear();
                    HttpContext.Current.Session.Abandon();
                    Response.Redirect(@"..\Login.aspx", false);
                    return;
                }
                
                gvMaratonProximas.DataSource = maratonRepo.ObtenerMaratonesPendientes();
                gvMaratonProximas.DataBind();
            }
         }
     }
}