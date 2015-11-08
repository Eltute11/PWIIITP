<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="Maratones.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MisMaratones" %>

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
                        
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" DataSourceID="dsMaratonesPendientes">
                            <Columns>
                                <asp:BoundField DataField="Nombre de Maratón" HeaderText="Nombre de Maratón" SortExpression="Nombre de Maratón" />
                                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                                <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                                <asp:BoundField DataField="#Esperados" HeaderText="#Esperados" SortExpression="#Esperados" />
                                <asp:BoundField DataField="#Inscriptos" HeaderText="#Inscriptos" ReadOnly="True" SortExpression="#Inscriptos" />
                                <asp:BoundField DataField="#En Espera" HeaderText="#En Espera" ReadOnly="True" SortExpression="#En Espera" />
                                <asp:BoundField DataField="Premio #1" HeaderText="Premio #1" SortExpression="Premio #1" />
                                <asp:BoundField DataField="Premio #2" HeaderText="Premio #2" SortExpression="Premio #2" />
                                <asp:BoundField DataField="Premio #3" HeaderText="Premio #3" SortExpression="Premio #3" />
                            </Columns>
                        </asp:GridView>


                        <asp:SqlDataSource ID="dsMaratonesPendientes" runat="server" ConnectionString="<%$ ConnectionStrings:MaratonConnectionString %>" SelectCommand="select	m.Nombre as 'Nombre de Maratón', 
		                                                                                                                                                                        m.Fecha, 
		                                                                                                                                                                        m.Km, 
		                                                                                                                                                                        m.Cant_Participantes as '#Esperados',
		                                                                                                                                                                        c.Cantidad as '#Inscriptos', 
		                                                                                                                                                                        e.Espera as '#En Espera',
		                                                                                                                                                                        m.Premio_Uno as 'Premio #1', 
		                                                                                                                                                                        m.Premio_Dos as 'Premio #2', 
		                                                                                                                                                                        m.Premio_Tres as 'Premio #3'
                                                                                                                                                                        from Maraton m 
                                                                                                                                                                        inner join (select mu.MaratonID, count(mu.MaratonID)Cantidad
			                                                                                                                                                                        from Maraton_Usuario mu
			                                                                                                                                                                        group by mu.MaratonID
			                                                                                                                                                                        ) c on c.MaratonID = m.ID
                                                                                                                                                                        left join (select count(mu.Lista_Espera) Espera, mu.MaratonID
			                                                                                                                                                                        from Maraton_Usuario mu
			                                                                                                                                                                        where mu.Lista_Espera = 1
			                                                                                                                                                                        group by mu.MaratonID
			                                                                                                                                                                        ) e on e.MaratonID = c.MaratonID">

                        </asp:SqlDataSource>
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
