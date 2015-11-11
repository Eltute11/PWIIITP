<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="UsuarioInscripcionMaratones.aspx.cs" Inherits="Presentacion.GrupoUsuario.UsuarioInscripcionMaratones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphUsuarioHead" runat="server">
    <title>Inscripción a Maratones</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphUsuarioBody" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <h2>Inscripci&oacute;n a Marat&oacute;n</h2>
            <h5>El tiempo límite de inscripción a una determinada maratón, es hasta el día anterior de la realización de la misma.</h5>
            <form class="form-horizontal" runat="server">
                <fieldset>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Maratones no realizadas</h3>
                        </div>
                        <div class="panel-body">
                          
                               <asp:GridView ID="gvUsuarioInscripcionMaratones" OnRowCommand="gvUsuarioInscripcionMaratones_RowCommand" AutoGenerateColumns="false" runat="server" CssClass="table table-striped table-hover" DataKeyNames="ID" EmptyDataText="No hay registros de datos para mostrar.">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID Maraton" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre de Maraton" />
                                    <asp:BoundField DataField="Fecha" HeaderText="Fecha y hora" />
                                    <asp:BoundField DataField="Lugar_Salida" HeaderText="Lugar de Salida" />
                                    <asp:BoundField DataField="Km" HeaderText="Km" />
                                    <asp:BoundField DataField="Cant_Participantes" HeaderText="Cupo Total" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Inscribirse" Text="Inscribirse" ControlStyle-CssClass="btn btn-primary" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Espera" Text="En Espera" ControlStyle-CssClass="btn btn-warning" />
                                    <asp:ButtonField ButtonType="Button" CommandName="CupoLleno" Text="Cupo Lleno" ControlStyle-CssClass="btn btn-danger" />
                                        
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</asp:Content>

