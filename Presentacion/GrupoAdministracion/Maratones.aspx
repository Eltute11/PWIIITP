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
                        <table class="table table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>Nombre de Maratón</th>
                                    <th>Fecha</th>
                                    <th>Km</th>
                                    <th>#Esperada</th>
                                    <th>#Inscriptos</th>
                                    <th>#En Espera</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><a href="MaratonResultado.aspx"><buttom class="btn btn-warning">Resultados</buttom></a></td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><a href="MaratonResultado.aspx"><buttom class="btn btn-warning">Resultados</buttom></a></td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><a href="MaratonResultado.aspx"><buttom class="btn btn-warning">Resultados</buttom></a></td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><a href="MaratonResultado.aspx"><buttom class="btn btn-warning">Resultados</buttom></a></td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><a href="MaratonResultado.aspx"><buttom class="btn btn-warning">Resultados</buttom></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</asp:Content>
