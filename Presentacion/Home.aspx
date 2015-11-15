<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Publico.master" CodeBehind="Home.aspx.cs" Inherits="Presentacion.Home" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="cphPublicoHead" runat="server">
    <title>Home</title>
</asp:Content>

<asp:Content ID="ContentBody" ContentPlaceHolderID="cphPublicoBody" runat="server">
    <form ID="home" runat="server">
    <!--<div class="container">-->
        <div class="row">
            <div class="col-lg-12">
                <h2 id="H1">&Uacute;ltima Marat&oacute;n</h2>
            </div>
        </div>

        <div class="row">

            <!-- Ultima Maraton (Resultados) -->
            <div class="col-lg-6" > <!-- col-lg-offset-1 -->
                <div class="bs-component">
                    <asp:GridView ID="gvPosiciones" runat="server" AutoGenerateColumns="False" GridLines="None" AllowPaging="true" CssClass="list-group" RowStyle-CssClass="list-group-item" HeaderStyle-CssClass="list-group-item" Width="100%" EmptyDataText="No se realizaron maratones."> 
                        <Columns>
                            <asp:BoundField DataField="Posicion" HeaderText="Posiciones de Ultima Maraton" ReadOnly="True" SortExpression="Posicion" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

            <!-- Registrate -->

            <div class="col-lg-6" > <!-- col-lg-offset-1 -->
                <div class="well bs-component">
                    <div class="form-horizontal">
                        <fieldset>
                            <legend>Soy nuevo</legend>
                            <div class="form-group">
                                <label for="inputNombre" class="col-lg-2 control-label">Me llamo</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revNombre" runat="server" ErrorMessage="Solo letras" ValidationExpression="^[A-Z a-z]*$" ControlToValidate="txtNombre" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-lg-6">
                                    <asp:TextBox ID="txtApellido" class="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtApellido"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revApellido" runat="server" ErrorMessage="Solo letras" ValidationExpression="^[A-Z a-z]*$" ControlToValidate="txtApellido" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Mi Mail es</label>
                                <div class="col-lg-10">
                                    <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Mail invalido"  ControlToValidate="txtEmail"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtFechaNacimiento" class="col-lg-2 control-label">Naci el</label>
                                <div class="col-lg-6">
                                    <asp:TextBox class="form-control" ID="txtFechaNacimiento" placeholder="Fecha Nacimiento" runat="server" MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNacimiento" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtFechaNacimiento" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revFechaNacimiento" runat="server" ErrorMessage="Fecha o formato invalido (dd/mm/aaaa)" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/](19|20)\d\d" ControlToValidate="txtFechaNacimiento" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtResidencia" class="col-lg-2 control-label">Vivo en</label>
                                <div class="col-lg-10">
                                    <asp:TextBox ID="txtResidencia" class="form-control" placeholder="Residencia" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvResidencia" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtResidencia"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revResidencia" runat="server" ErrorMessage="Solo letras" ValidationExpression="^[A-Z a-z]*$" ControlToValidate="txtResidencia" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword" class="col-lg-2 control-label">Mi clave</label>
                                <div class="col-lg-5">
                                    <asp:TextBox ID="txtClave" class="form-control" placeholder="Clave" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvClave1" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtClave"></asp:RequiredFieldValidator>                           
                                </div>
                                <div class="col-lg-5">
                                    <asp:TextBox ID="txtClaveRepetir" class="form-control" placeholder="Repetir Clave" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvClave2" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtClaveRepetir"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvClave2" runat="server" ErrorMessage="Contraseña no coincide" ControlToValidate="txtClave" ControlToCompare="txtClaveRepetir"></asp:CompareValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="¡Comenzar!" OnClick="btnRegistrar_Click" />
                                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
</form>
</asp:Content>
