<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="UsuarioAdminDatos.aspx.cs" Inherits="Presentacion.GrupoUsuario.UsuarioMisDatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphUsuarioHead" runat="server">
    <title>Mis Datos</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphUsuarioBody" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2>Modificar perfil</h2>
            <div class="well bs-component">
                <form class="form-horizontal" runat="server">
                    <fieldset>
                        <legend>Mis Datos</legend>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Me llamo</label>
                            <div class="col-lg-4">
                               <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-lg-6">
                                <asp:TextBox ID="txtApellido" class="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtApellido"></asp:RequiredFieldValidator>                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Naci el</label>
                            <div class="col-lg-6">
                                <asp:TextBox class="form-control" ID="txtFechaNacimiento" placeholder="Fecha Nacimiento" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNacimiento" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtFechaNacimiento"></asp:RequiredFieldValidator>                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Vivo en</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtResidencia" class="form-control" placeholder="Residencia" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvResidencia" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtResidencia"></asp:RequiredFieldValidator>                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnModificar" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

    </div>

</asp:Content>
