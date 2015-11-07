using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaseDeDatos;

namespace Presentacion.GrupoUsuario
{
    public partial class MisMaratones : System.Web.UI.Page
    {  
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //var usuario = new BaseDeDatos.Modelo.Usuario();

            string usuarioID = Convert.ToString(Session["UsuarioID"]);

            sdsUsuarioMaratonesPendiente.SelectCommand = "SELECT A.Nombre, A.Fecha, A.Km, A.ID FROM Maraton AS A INNER JOIN Maraton_Usuario AS B ON A.ID = B.MaratonID WHERE (B.UsuarioID = " + usuarioID + ")";
        }

        
    }
}