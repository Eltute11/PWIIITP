<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="MaratonResultado.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MaratonResultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Adminstrador - Maraton - Cargar Resultado</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2>Registraci&oacute;n de Resultados</h2>
            <h3><asp:Label ID="lblMaratonNombre" runat="server" Text="Maratón no Parametrizada o Encontrada."></asp:Label></h3>
            
            <form runat="server">
                <asp:GridView ID="gvResultados" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" >
                    <Columns>
                        <asp:BoundField DataField="Posicion" HeaderText="Posicion" />
                        <asp:BoundField DataField="Nombre" HeaderText="Participante" />
                        <asp:CheckBoxField DataField="Presente" HeaderText="¿Asistió?" />
                        <asp:CheckBoxField DataField="Abandono" HeaderText="¿Abandonó?" />
                        <asp:BoundField DataField="Tiempo_Llegada" HeaderText="Tiempo"></asp:BoundField>
                        <asp:HyperLinkField HeaderText="Editar" DataNavigateUrlFields="ID,MaratonID" DataNavigateUrlFormatString="MaratonResultadoDetalle.aspx?UsuarioId={0}&MaratonID={1}" Text="Editar" ControlStyle-CssClass="btn btn-success" />
                    </Columns>
                </asp:GridView>
            </form>
        </div>
    </div>
</asp:Content>
