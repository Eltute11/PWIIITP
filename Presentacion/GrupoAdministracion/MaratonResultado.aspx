<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="MaratonResultado.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MaratonResultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Adminstrador - Maraton - Cargar Resultado</title>
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
                            <td>Apellido, Nombre</td>
                            <td class="auto-style4">
                                <asp:DropDownList ID="ddlAsistio" runat="server">
                                    <asp:ListItem Selected="True">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvAsistio" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlAsistio"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="ddlAbandono" runat="server">
                                    <asp:ListItem Value="No">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvAbandono" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="ddlAbandono" Display="Dynamic"></asp:RequiredFieldValidator>

                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtTiempo" class="form-control" placeholder="hh:mm:ss" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rdvTiempo" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revTiempo" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Apellido, Nombre</td>
                            <td class="auto-style4">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Selected="True">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlAsistio"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Value="No">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="ddlAbandono" Display="Dynamic"></asp:RequiredFieldValidator>

                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox1" class="form-control" placeholder="hh:mm:ss" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Apellido, Nombre</td>
                            <td class="auto-style4">
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem Selected="True">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlAsistio"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="DropDownList4" runat="server">
                                    <asp:ListItem Value="No">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="ddlAbandono" Display="Dynamic"></asp:RequiredFieldValidator>

                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox2" class="form-control" placeholder="hh:mm:ss" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Apellido, Nombre</td>
                            <td class="auto-style4">
                                <asp:DropDownList ID="DropDownList5" runat="server">
                                    <asp:ListItem Selected="True">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlAsistio"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="DropDownList6" runat="server">
                                    <asp:ListItem Value="No">Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="ddlAbandono" Display="Dynamic"></asp:RequiredFieldValidator>

                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox3" class="form-control" placeholder="hh:mm:ss" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Solo números" ValidationExpression="^[0-9]*" ControlToValidate="txtTiempo" Display="Dynamic"></asp:RegularExpressionValidator>
                            </td>
                        </tr>


                    </tbody>
                </table>
                <div>
                    <asp:Button ID="btnGuardar" class="btn btn-success margenGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
