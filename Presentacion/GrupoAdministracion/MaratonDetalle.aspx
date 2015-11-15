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
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cant" class="col-lg-1 control-label">Fecha</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtFechaSalida" class="form-control" placeholder="dd/mm/aaaa hh:mm:ss" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revFechaSalida" runat="server" ErrorMessage="Formato invalido (dd/mm/aaaa hh:mm:ss)"  ValidationExpression="[0-3][0-9]\/[0-1][0-9]\/[0-9]{4} [0-2][0-9]:[0-5][0-9]:[0-5][0-9]" ControlToValidate="txtFechaSalida" Display="Dynamic"></asp:RegularExpressionValidator>
                                    

                                    <asp:RequiredFieldValidator ID="rfvFechaSalida" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtFechaSalida" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtKm" class="col-lg-1 control-label">Km</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtKm" class="form-control" placeholder="Km" runat="server" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvKm" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtKm" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revKm" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtKm" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                               
                            <div class="form-group">
                                 <label for="cant" class="col-lg-1 control-label">Participantes</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtCantidad" runat="server" class="form-control" placeholder="Cant. Maxima de participantes"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCant" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtCantidad" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revCantidad" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtCantidad" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtSalida" class="col-lg-1 control-label">Salida</label>
                                <div class="col-lg-6">
                                    <asp:TextBox ID="txtSalida" placeholder="Lugar de salida" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSalida" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtSalida" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revSalida" runat="server" ErrorMessage="Solo letras" ValidationExpression ="^[A-Z a-z]*$" ControlToValidate="txtSalida" Display="Dynamic"></asp:RegularExpressionValidator>
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
                                <label for="premio" class="col-lg-1 control-label">Primer Premio</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtPremio1" class="form-control" runat="server" placeholder="$ 500,00 - $ 5.000,00"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPremio1" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtPremio1" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revPremio1" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtPremio1" Display="Dynamic"></asp:RegularExpressionValidator>                                   
                                    <asp:RangeValidator ID="rvPremio1" runat="server" ErrorMessage="Rango no valido" ControlToValidate="txtPremio1" MaximumValue="5000" MinimumValue="500" Display="Dynamic" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="premio" class="col-lg-1 control-label">Segundo Premio</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtPremio2" class="form-control" runat="server" placeholder="$ 500,00 - $ 5.000,00"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPremio2" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtPremio2" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revPremio2" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtPremio2" Display="Dynamic"></asp:RegularExpressionValidator>                                   
                                    <asp:RangeValidator ID="rvPremio2" runat="server" ErrorMessage="Rango no valido" ControlToValidate="txtPremio2" MaximumValue="5000" MinimumValue="500" Display="Dynamic" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="premio" class="col-lg-1 control-label">Tercer Premio</label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtPremio3" class="form-control" runat="server" placeholder="$ 500,00 - $ 5.000,00"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPremio3" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtPremio3" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revPremio3" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtPremio3" Display="Dynamic"></asp:RegularExpressionValidator>                                   
                                    <asp:RangeValidator ID="rvPremio3" runat="server" ErrorMessage="Rango no valido" ControlToValidate="txtPremio3" MaximumValue="5000" MinimumValue="500" Display="Dynamic" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="btnCrear" class="btn btn-success col-lg-offset-1" runat="server" Text="Crear" OnClick="btnCrear_Click" />
                                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</asp:Content>
