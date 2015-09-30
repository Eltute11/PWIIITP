<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="MaratonResultado.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MaratonResultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Adminstrador - Maraton - Cargar Resultado</title>
    <style type="text/css">
        .auto-style1 {
            width: 357px;
        }

        .auto-style2 {
            width: 129px;
        }

        .auto-style3 {
            width: 357px;
            height: 47px;
        }

        .auto-style4 {
            width: 129px;
            height: 47px;
        }

        .auto-style5 {
            height: 47px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2>Registraci&oacute;n de Resultados</h2>
            <form runat="server">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class="auto-style1">Persona</th>
                            <th class="auto-style2">¿Asistio?</th>
                            <th>¿Abandono?</th>
                            <th>Tiempo Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtPersona" class="form-control" placeholder="Apellido, Nombre" runat="server" Width="256px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPersona" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtPersona" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPersona" runat="server" ErrorMessage="Solo letras" ValidationExpression="^[A-Za-z]*$" ControlToValidate="txtPersona" Display="Dynamic"></asp:RegularExpressionValidator>
                            </td>
                            <td class="auto-style4">
                                <asp:DropDownList ID="ddlAsistio" runat="server" Height="24px" Width="66px">
                                    <asp:ListItem Selected="True">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvAsistio" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlAsistio"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="ddlAbandono" runat="server" Width="66px" Height="24px">
                                    <asp:ListItem Value="No">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvAbandono" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="ddlAbandono" Display="Dynamic"></asp:RequiredFieldValidator>

                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtTiempo" class="form-control" placeholder="hh:mm:ss" runat="server" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rdvTiempo" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revTiempo" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RegularExpressionValidator>
                            </td>
                        </tr>

                    </tbody>
                </table>
                <div>
                    <asp:Button ID="btnGuardar" class="btn btn-success" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
