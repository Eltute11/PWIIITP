<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="MisMaratones.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MisMaratones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Administrador - Mis Maratones</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
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
                        <!--
                        <table class="table table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>Nombre de Maratón</th>
                                    <th>Fecha</th>
                                    <th>Km</th>
                                    <th>#Esperada</th>
                                    <th>#Inscriptos</th>
                                    <th>#En Espera</th>
                                    <th>Premios</th>
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
                                    <td>Column content</td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
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
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
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
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                            </tbody>
                        </table>
                        -->

                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
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
</asp:Content>
