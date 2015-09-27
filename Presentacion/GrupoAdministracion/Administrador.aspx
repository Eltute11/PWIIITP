<%@ Page Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="Presentacion.GrupoAdministracion.Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Administrador de contenidos</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 id="nav-tabs">Administrador</h2>
                <div class="bs-component">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#new" data-toggle="tab">Nueva Maratón</a></li>
                        <li><a href="#reg" data-toggle="tab">Registrar Resultados</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="new">
                            
                            <div class="col-lg-12" col-lg-offset-1>
                                    <div class="bs-component">
                                        <form class="form-horizontal" runat="server">
                                            <fieldset>
                                                <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Crear Maratón</h3>
                                                </div>
                                                <div class="panel-body">
                                                <div class="form-group">
                                                    <label for="" class="col-lg-1 control-label">Maratón</label>
                                                    <div class="col-lg-8">
                                                        <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre de maratón" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="cant" class="col-lg-1 control-label">Participantes</label>
                                                    <div class="col-lg-3">
                                                        <asp:TextBox ID="txtCant" runat="server" class="form-control" placeholder="Cant. Maxima de participantes"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCant" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtCant"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label for="txtSalida" class="col-lg-1 control-label">Salida</label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="txtSalida" placeholder="Lugar de salida" class="form-control" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvSalida" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtSalida"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="espera" class="col-lg-1 control-label">En espera</label>
                                                    <div class="col-lg-3">
                                                        <asp:TextBox ID="txtEspera" runat="server" class="form-control" placeholder="Cant. de personas en lista de espera"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvEspera" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtEspera"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="premio" class="col-lg-1 control-label">Premio</label>
                                                    <div class="col-lg-3">
                                                        <asp:TextBox ID="txtPremio" class="form-control" runat="server" placeholder="$ 500,00 - $ 5.000,00"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvPremio" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtPremio"></asp:RequiredFieldValidator>
                                                        <asp:RangeValidator ID="rvPremio" runat="server" ErrorMessage="Rango no valido" ControlToValidate="txtPremio" MaximumValue="5000" MinimumValue="500"></asp:RangeValidator>
                                                    </div>
                                                </div>
                                                <div>
                                                    <asp:Button ID="Button1" class="btn btn-success col-lg-offset-1" runat="server" Text="Crear" OnClick="Button1_Click" />
                                                </div>
                                                </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>


                        </div>
                        <div class="tab-pane fade" id="reg">
                            
                        </div>
                      
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
