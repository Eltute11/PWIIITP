<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="UsuarioAdminDatos.aspx.cs" Inherits="Presentacion.GrupoUsuario.UsuarioMisDatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphUsuarioHead" runat="server">
    <title>Mis Datos</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphUsuarioBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="coll-xs-12">
                <h2>Modificar perfil</h2>
                
                <div class="well bs-component">
                    <form class="form-horizontal">
                        <fieldset>
                            <legend>Mis Datos</legend>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Me llamo</label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" id="txtNombre" placeholder="Nombre">
                                </div>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txtApellido" placeholder="Apellido">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Naci el</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txtFechaNacimiento" placeholder="Fecha Nacimiento">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Vivo en</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="Text1" placeholder="Residencia">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button type="submit" class="btn btn-primary">Modificar</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
            
        </div>
    </div>

</asp:Content>
