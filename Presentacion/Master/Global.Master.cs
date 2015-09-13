using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class Global : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ucFooter1.lblText = "Universidad Nacional de la Matanza";
            ucFooter2.lblText = "Dpto. De Ingeniería e Investigaciones Tecnológicas";
            ucFooter3.lblText = "Tecnicatura en Desarrollo Web - Programación Web III";
            ucFooter4.lblText = "Intetegrantes: Araus Matias - Trafiletti Diego - Urcola Juan Ignacio";
        }
    }
}