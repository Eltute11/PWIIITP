﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaseDeDatos;

namespace Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpContext.Current.Session.Clear();
                HttpContext.Current.Session.Abandon();
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            var usuarioRepo = new UsuarioRepositorio();

            var usuario = new BaseDeDatos.Modelo.Usuario();

            usuario.Email = txtEmail.Text;
            usuario.Clave = txtClave.Text;

            usuario = usuarioRepo.Obtener(txtEmail.Text, txtClave.Text);
            

            if (usuario != null)
            {   
                // IDEM
                //Session["Usuario"] = usuario; 

                HttpContext.Current.Session.Add("Usuario", usuario);

                if (usuario.Administrador)
                {
                    Response.Redirect(@"\GrupoAdministracion\Maratones.aspx", false);
                }
                else
                {
                    Response.Redirect(@"\GrupoUsuario\MisMaratones.aspx", false);
                }

                
            }
            else
            {
                lblMensaje.Text = "¡Usuario o Perfil Inválidos!";
            }
        }
    }
}