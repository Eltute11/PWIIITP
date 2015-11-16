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
    public partial class MisMaratones : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) 
            { 
                Usuario usuario = new Usuario();
                usuario = (Usuario)Session["Usuario"];

                if (usuario == null)
                {
                    HttpContext.Current.Session.Clear();
                    HttpContext.Current.Session.Abandon();
                    Response.Redirect(@"..\Login.aspx", false);
                    return;
                }

                var maratonRepo = new MaratonRepositorio();

                gvUsuarioMaratonesPendientes.DataSource = maratonRepo.ObtenerPendientesUsuario(usuario);
                gvUsuarioMaratonesPendientes.DataBind();
                
            }

          
        }
        
        protected void gvUsuarioMaratonesPendientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Anular")
            {
                var maratonRepo = new MaratonRepositorio();

                //OBTENGO USUARIO ACTUAL
                Usuario usuario = new Usuario();
                usuario = (Usuario)Session["Usuario"];
                
                //OBTENGO MARATON SELECCIONADA
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int maraton = Convert.ToInt32(gvUsuarioMaratonesPendientes.Rows[rowIndex].Cells[0].Text);

                maratonRepo.AnularInscripcionUsuario(usuario.ID, maraton);
                Response.Redirect(@"\GrupoUsuario\MisMaratones.aspx", false);

            }
        }

        

    }
}