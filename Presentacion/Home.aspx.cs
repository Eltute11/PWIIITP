using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Para la función regex
using System.Text.RegularExpressions;

namespace Presentacion
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static bool ComprobarFormatoEmail(string Mail)
        {
            String sFormato;
            Boolean retorno;
            sFormato = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(Mail, sFormato))
            {
                if (Regex.Replace(Mail, sFormato, String.Empty).Length == 0)
                {
                    retorno = true;
                }
                else
                {
                    retorno = false;
                }
            }
            else
            {
                retorno = false;
            }
            return retorno;
        }
       
        protected void FormatoEmail(object source, ServerValidateEventArgs args)
        {
            if (ComprobarFormatoEmail(args.Value) == true)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

        }

    }
}