<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="MaratonDetalle.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MaratonDetalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2>Creaci&oacute;n de Maratones</h2>
            <h5>Tener en cuenta que todos los campos son obligatorios.</h5>
            <form class="form-horizontal" runat="server">
                <fieldset>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Nueva Maratón</h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="" class="col-lg-1 control-label">Maratón</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre de maratón" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtNombre" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revNombre" runat="server" ErrorMessage="Solo letras" ValidationExpression ="^[A-Za-z]*$" ControlToValidate="txtNombre" Display="Dynamic"></asp:RegularExpressionValidator>                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cant" class="col-lg-1 control-label">Participantes</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtCant" runat="server" class="form-control" placeholder="Cant. Maxima de participantes"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCant" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtCant" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revCantidad" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtCant" Display="Dynamic"></asp:RegularExpressionValidator>
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtSalida" class="col-lg-1 control-label">Salida</label>
                                <div class="col-lg-6">
                                    <asp:TextBox ID="txtSalida" placeholder="Lugar de salida" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSalida" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtSalida" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revSalida" runat="server" ErrorMessage="Solo letras" ValidationExpression ="^[A-Za-z]*$" ControlToValidate="txtSalida" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="espera" class="col-lg-1 control-label">En espera</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtEspera" runat="server" class="form-control" placeholder="Cant. de personas en lista de espera"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEspera" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtEspera" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revEspera" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtEspera" Display="Dynamic"></asp:RegularExpressionValidator>                                   
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="premio" class="col-lg-1 control-label">Premio</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtPremio" class="form-control" runat="server" placeholder="$ 500,00 - $ 5.000,00"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPremio" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtPremio" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revPremio" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtPremio" Display="Dynamic"></asp:RegularExpressionValidator>                                   
                                    <asp:RangeValidator ID="rvPremio" runat="server" ErrorMessage="Rango no valido" ControlToValidate="txtPremio" MaximumValue="5000" MinimumValue="500" Display="Dynamic"></asp:RangeValidator>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="btnCrear" class="btn btn-success col-lg-offset-1" runat="server" Text="Crear" OnClick="btnCrear_Click" />
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</asp:Content>
