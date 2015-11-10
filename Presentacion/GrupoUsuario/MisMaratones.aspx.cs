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

            if (!IsPostBack) { 
            var maratonRepo = new MaratonRepositorio();

            Usuario usuario = new Usuario();
            usuario = (Usuario)Session["Usuario"];

            gvUsuarioMaratonesPendientes.DataSource = maratonRepo.ObtenerPendientesUsuario(usuario);
            gvUsuarioMaratonesPendientes.DataBind();
			 sdsUsuarioMaratonesHistorial.SelectCommand = "select d.Nombre, d.Lugar_Salida, b.Presente, b.Posicion, b.Abandono, b.Tiempo_Llegada, case b.Posicion when 1 then d.Premio_Uno when 2 then d.Premio_Dos when 3 then d.Premio_Tres else 0 end 'Premio' from Usuario a inner join Maraton_Usuario b on a.ID = b.UsuarioID inner join Maraton d on d.ID = b.MaratonID where (b.UsuarioID = " + usuario.ID + ")";
            }

          
        }
        
        protected void gvUsuarioMaratonesPendientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Anular")
            {   
                //OBTENGO USUARIO ACTUAL
                Usuario usuario = new Usuario();
                usuario = (Usuario)Session["Usuario"];
                
                //OBTENGO MARATON SELECCIONADA
                int index = Convert.ToInt32(e.CommandArgument);
                int row = Convert.ToInt32(gvUsuarioMaratonesPendientes.Rows[index].Cells[0].Text);  
            }
        }

        

    }
}