<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Publico.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentacion.Login" %>

<asp:Content ID="cLoginHead" ContentPlaceHolderID="cphPublicoHead" runat="server">
    <title>Home - Login</title>
</asp:Content>

<asp:Content ID="cLoginBody" ContentPlaceHolderID="cphPublicoBody" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2 id="H1">Iniciar Sesi&oacute;n</h2>
        </div>
    </div>

    <div class="row">
        <!-- Iniciar sesion -->
        <div class="col-lg-2">
            <div class="bs-component">
                
            </div>

        </div>

        <div class="col-lg-6 col-lg-offset-1">
            <div class="well bs-component">
                <form id="frmIngresar" class="form-horizontal" runat="server">
                    <fieldset>
                        <legend>Credencial de Acceso</legend>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Mi Mail es</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Mail invalido"  ControlToValidate="txtEmail"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-lg-2 control-label">Mi clave</label>
                            <div class="col-lg-5">
                                <asp:TextBox ID="txtClave" class="form-control" type="password" placeholder="Clave" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvPass" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtClave"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-lg-2 control-label"></label>
                            <div class="col-lg-5">
                                <asp:CheckBox ID="chkSoyAdministrador" runat="server" />Soy Administrador
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnIngresar" class="btn btn-primary" runat="server" Text="¡Ingresar!" OnClick="btnIngresar_Click" />

                                <asp:Label ID="lblMensaje" runat="server" Text="¡Usuario o Perfil Inválidos!" Visible="False" class="text-danger"></asp:Label>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

        <div class="col-lg-2">
            <div class="bs-component">
                
            </div>
        </div>
    </div>

                        </div>
</asp:Content>
