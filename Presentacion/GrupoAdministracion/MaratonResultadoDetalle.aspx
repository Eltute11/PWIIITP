<%@ Page Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="MaratonResultadoDetalle.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MaratonResultadoDetalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Adminstrador - Maraton - Cargar Resultado</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2 id="H1">Registraci&oacute;n de Resultados</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-2">
            <div class="bs-component">
            </div>
        </div>

        <div class="col-lg-6 col-lg-offset-1">
            <div class="well bs-component">
                <form id="frmIngresar" class="form-horizontal" runat="server">
                    <fieldset>
                        <legend><asp:Label runat="server" ID="LblTitulo"></asp:Label></legend>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-4 control-label">Asistio</label>
                            <div class="col-lg-8">
                                <div class="checkbox">
                                  <label>
                                    <asp:CheckBox ID="chkAsistio" runat="server" AutoPostBack="True" OnCheckedChanged="chkAsistio_CheckedChanged" />
                                  </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-4 control-label">Abandono</label>
                            <div class="col-lg-8">
                                <div class="checkbox">
                                  <label>
                                    <asp:CheckBox ID="chkAbandono" runat="server" AutoPostBack="True" OnCheckedChanged="chkAbandono_CheckedChanged" />
                                  </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-lg-4 control-label">Hora de Llegada</label>
                            <div class="col-lg-5">
                                <asp:TextBox ID="txtTiempoLlegada" class="form-control" placeholder="hh:mm:ss.ms" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revTiempoLlegada" runat="server" ErrorMessage="Formato invalido (hh:mm:ss.ms)"  ValidationExpression="[0-9][0-9]:[0-5][0-9]:[0-5][0-9].[0-5][0-9]" ControlToValidate="txtTiempoLlegada" Display="Dynamic"></asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                                <asp:Label ID="lblMensaje" runat="server" Text="" class="text-danger"></asp:Label>
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
</asp:Content>
