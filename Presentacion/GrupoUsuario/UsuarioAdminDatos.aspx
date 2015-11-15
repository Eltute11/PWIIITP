<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="UsuarioAdminDatos.aspx.cs" Inherits="Presentacion.GrupoUsuario.UsuarioAdminDatos" %>

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
                                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtNombre" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revNombre" runat="server" ErrorMessage="Solo letras" ValidationExpression="^[A-Z a-z]*$" ControlToValidate="txtNombre" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-lg-6">
                                <asp:TextBox ID="txtApellido" class="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtApellido"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revApellido" runat="server" ErrorMessage="Solo letras" ValidationExpression="^[A-Z a-z]*$" ControlToValidate="txtApellido" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtFechaNacimiento" class="col-lg-2 control-label">Naci el</label>
                            <div class="col-lg-6">
                                <asp:TextBox class="form-control" ID="txtFechaNacimiento" placeholder="Fecha Nacimiento" runat="server" MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNacimiento" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtFechaNacimiento"  Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revFechaNacimiento" runat="server" ErrorMessage="Fecha o formato invalido (dd/mm/aaaa)" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/](19|20)\d\d" ControlToValidate="txtFechaNacimiento" Display="Dynamic"></asp:RegularExpressionValidator>
                            
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtResidencia" class="col-lg-2 control-label">Vivo en</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtResidencia" class="form-control" placeholder="Residencia" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvResidencia" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtResidencia"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnModificar" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
                                <asp:Button ID="btnVolver" class="btn btn-primary" runat="server" Text="Volver" OnClick="btnVolver_Click" />
                            </div>
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

    </div>

</asp:Content>
