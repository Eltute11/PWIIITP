using BaseDeDatos;
using BaseDeDatos.DTOs;
using BaseDeDatos.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Collections;


namespace Presentacion.Servicios
{
    /// <summary>
    /// Descripción breve de MaratonService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
     [System.Web.Script.Services.ScriptService]
    
public class MaratonService : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public IList ObtenerMaratonesRealizadas()
        {   
            var maratonRepo = new MaratonRepositorio();
                        
            Usuario usuario = new Usuario();
            usuario = (Usuario)Session["Usuario"];

            int usuarioID = usuario.ID;
            

            object maratonesRealizadasUsuario = maratonRepo.ObtenerRealizadasUsuario(usuarioID);

            IList mar = maratonesRealizadasUsuario as IList;

            return mar;
        }
    }
}
