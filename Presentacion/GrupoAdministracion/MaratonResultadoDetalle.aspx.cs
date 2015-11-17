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
    public partial class MaratonResultadoDetalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["UsuarioID"].ToString() != null && Request.QueryString["MaratonID"].ToString() != null )
                {
                    int usuarioID = Convert.ToInt32(Request.QueryString["UsuarioID"]);
                    int maratonID = Convert.ToInt32(Request.QueryString["MaratonID"]);

                    var usuarioRepo = new UsuarioRepositorio();

                    LblTitulo.Text = usuarioRepo.Obtener(usuarioID);

                    var maratonRepo = new MaratonRepositorio();

                    Maraton_Usuario resultado = maratonRepo.ObtenerResultado(maratonID, usuarioID);

                    if (resultado.Presente.Equals(null) || resultado.Presente == false)
                    {
                        chkAsistio.Checked = false;
                    }
                    else
                    {
                        chkAsistio.Checked = true;
                    }

                    if (resultado.Abandono.Equals(null) || resultado.Abandono == false)
                    {
                        chkAbandono.Checked = false;
                    }
                    else
                    {
                        chkAbandono.Checked = true;
                    }

                    chkAbandono.Enabled = chkAsistio.Checked;
                    
                    txtTiempoLlegada.Text = resultado.Tiempo_Llegada.ToString();
                    txtTiempoLlegada.ReadOnly = chkAbandono.Checked;
                }
            }
        }

        protected void chkAsistio_CheckedChanged(object sender, EventArgs e)
        {
            chkAbandono.Enabled = chkAsistio.Checked;
            txtTiempoLlegada.Enabled = chkAsistio.Checked;
        }

        protected void chkAbandono_CheckedChanged(object sender, EventArgs e)
        {
            txtTiempoLlegada.ReadOnly = chkAbandono.Checked;
            if (chkAbandono.Checked)
                txtTiempoLlegada.Text = "00:00:00.00";
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Maraton_Usuario oResultado = new Maraton_Usuario();
            oResultado.MaratonID = Convert.ToInt32(Request.QueryString["MaratonID"]);
            oResultado.UsuarioID = Convert.ToInt32(Request.QueryString["UsuarioID"]);
            oResultado.Presente = chkAsistio.Checked;
            oResultado.Abandono = chkAbandono.Checked;

            if (chkAbandono.Checked)
                oResultado.Tiempo_Llegada = TimeSpan.Parse("00:00:00.00");
            else
                oResultado.Tiempo_Llegada = TimeSpan.Parse(txtTiempoLlegada.Text);
                

            MaratonRepositorio oMaraton = new MaratonRepositorio();
            oMaraton.Actualizar(oResultado);

            Response.Redirect("MaratonResultado.aspx?id=" + oResultado.MaratonID, false);
        }
    }
}