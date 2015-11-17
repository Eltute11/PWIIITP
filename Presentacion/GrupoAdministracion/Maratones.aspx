<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="Maratones.aspx.cs" Inherits="Presentacion.GrupoAdministracion.Maratones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Administrador - Maratones</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <form id="form1" runat="server">
    <div class="row">
        <div class="col-lg-12">

            <h2 id="nav-tabs">Maratones Programadas</h2>
                
            <div class="bs-component">

                <ul class="nav nav-tabs">
                    <li class="active"><a href="#proxima" data-toggle="tab">Pendientes</a></li>
                    <li><a href="#historial" data-toggle="tab">Realizadas</a></li>
                </ul>
                    
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="proxima">
                        <h4>Maratones a correr</h4>
                        
                        <asp:GridView ID="gvMaratonProximas" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover">
                            <Columns>
                                <asp:BoundField DataField="Nombre_de_Maraton" HeaderText="Nombre de Maraton" SortExpression="NombredeMaraton" />
                                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                                <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                                <asp:BoundField DataField="Esperados" HeaderText="Estimados" SortExpression="Esperados" />
                                <asp:BoundField DataField="Inscriptos" HeaderText="Inscriptos" ReadOnly="True" SortExpression="Inscriptos" />
                                <asp:BoundField DataField="Espera" HeaderText="En Espera" ReadOnly="True" SortExpression="Espera" />
                                <asp:BoundField DataField="Premio_N1" HeaderText="Premio #1" SortExpression="Premio_N1" />
                                <asp:BoundField DataField="Premio_N2" HeaderText="Premio #2" SortExpression="Premio_N2" />
                                <asp:BoundField DataField="Premio_N3" HeaderText="Premio #3" SortExpression="Premio_N3" />
                            </Columns>
                        </asp:GridView>
                    </div>

                    <div class="tab-pane fade" id="historial">
                        <h4>Historial de Maratones corridas</h4>                        

                        <asp:GridView ID="GridRealizadas" AutoGenerateColumns="False" runat="server" CssClass="table table-striped table-hover" >
                            <Columns>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre de Maratón" />
                                <asp:BoundField DataField="Cant_Participantes" HeaderText="#Participantes" />
                                <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                                <asp:BoundField DataField="Lugar_Salida" HeaderText="Lugar de Salida" />
                                <asp:BoundField DataField="Cant_Lista_Espera" HeaderText="#Lista de Espera" />
                                <asp:BoundField DataField="Premio_Uno" HeaderText="1er Premio" />
                                <asp:BoundField DataField="Premio_Dos" HeaderText="2do Premio" />
                                <asp:BoundField DataField="Premio_Tres" HeaderText="3er Premio" />
                                <asp:BoundField DataField="KM" HeaderText="Kilometros" />
                                <asp:BoundField DataField="ID" HeaderText="ID" Visible="False"/>
                                <asp:HyperLinkField HeaderText="Resultados" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="MaratonResultado.aspx?id={0}" Text="Resultados" ControlStyle-CssClass="btn btn-warning" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</asp:Content>
