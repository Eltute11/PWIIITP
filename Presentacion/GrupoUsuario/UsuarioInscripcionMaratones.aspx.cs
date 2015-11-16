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
    public partial class UsuarioInscripcionMaratones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var maratonRepo = new MaratonRepositorio();
                Usuario usuario = new Usuario();
                usuario = (Usuario)Session["Usuario"];

                if (usuario == null)
                {
                    HttpContext.Current.Session.Clear();
                    HttpContext.Current.Session.Abandon();
                    Response.Redirect(@"..\Login.aspx", false);
                    return;
                }

                gvUsuarioInscripcionMaratones.DataSource = maratonRepo.ObtenerMaratonesInscripcion(usuario.ID);
                gvUsuarioInscripcionMaratones.DataBind();
            }
            
        }

        

       protected void gvUsuarioInscripcionMaratones_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "CupoLleno")
            {
                return;
            }

           
            var maratonRepo = new MaratonRepositorio();
            var maraton_usuario = new Maraton_Usuario();
          
           //OBTENGO USUARIO ACTUAL
            Usuario usuario = new Usuario();
            usuario = (Usuario)Session["Usuario"];

            //OBTENGO MARATON SELECCIONADA
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            
            maraton_usuario.MaratonID = Convert.ToInt32(gvUsuarioInscripcionMaratones.Rows[rowIndex].Cells[0].Text);
            maraton_usuario.UsuarioID = usuario.ID;
           
            if (e.CommandName == "Inscribirse")
            {
                maraton_usuario.Lista_Espera = false;
            }

            if (e.CommandName == "Espera") 
            {
                maraton_usuario.Lista_Espera = true;
            }

            
            maratonRepo.InscripcionMaraton(maraton_usuario);
            Response.Redirect(@"\GrupoUsuario\UsuarioInscripcionMaratones.aspx", false);
            

        }
       
        protected void btnVolver_Click(object sender, EventArgs e)
       {
           Response.Redirect(@"\GrupoUsuario\MisMaratones.aspx", false);
       }

    }

}