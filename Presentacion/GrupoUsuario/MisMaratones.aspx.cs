﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaseDeDatos.Modelo;

namespace Presentacion.GrupoUsuario
{
    public partial class MisMaratones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();

            usuario = (Usuario) Session["Usuario"];

            sdsUsuarioMaratonesHistorial.SelectCommand = "select d.Nombre, d.Lugar_Salida, b.Presente, b.Posicion, b.Abandono, b.Tiempo_Llegada, case b.Posicion when 1 then d.Premio_Uno when 2 then d.Premio_Dos when 3 then d.Premio_Tres else 0 end 'Premio' from Usuario a inner join Maraton_Usuario b on a.ID = b.UsuarioID inner join Maraton d on d.ID = b.MaratonID where (b.UsuarioID = " + usuario.ID + ")";
        }
    }
}