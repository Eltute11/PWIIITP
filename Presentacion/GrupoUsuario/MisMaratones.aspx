<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="MisMaratones.aspx.cs" Inherits="Presentacion.GrupoUsuario.MisMaratones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphUsuarioHead" runat="server">
    <title>Historial de Maratones</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphUsuarioBody" runat="server">
    <div class="row">
        <div class="col-lg-12">

            <h2 id="nav-tabs">Mis Maratones</h2>
                
            <div class="bs-component">

                <ul class="nav nav-tabs">
                    <li class="active"><a href="#proxima" data-toggle="tab">Pendientes</a></li>
                    <li><a href="#historial" data-toggle="tab">Realizadas</a></li>
                </ul>
                    
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="proxima">
                        <h4>Maratones a correr</h4>
                        <p>No estas inscripto en ninguna Marat&oacute;n. ¿No te animas al menos a los 3K? <a href="#">¡Anotate!</a></p>
                        <table class="table table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>Nombre de Maratón</th>
                                    <th>Fecha</th>
                                    <th>Km</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><buttom class="btn btn-warning">Anular Inscripcion</buttom></td> <!--VER -->
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><buttom class="btn btn-warning">Anular Inscripcion</buttom></td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><buttom class="btn btn-warning">Anular Inscripcion</buttom></td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><buttom class="btn btn-warning">Anular Inscripcion</buttom></td>
                                </tr>
                                <tr>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td><buttom class="btn btn-warning">Anular Inscripcion</buttom></td> <!--VER -->
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="tab-pane fade" id="historial">
                        <h4>Historial de Maratones corridas</h4>                        
                        <table class="table table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>Nombre de Marat&oacute;n</th>
                                    <th>Lugar de Salida</th>
                                    <th>¿Me present&eacute;?</th>
                                    <th>Posici&oacute;n final</th>
                                    <th>¿Abandon&eacute;?</th>
                                    <th>Tiempo</th>
                                    <th>Premio</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>04:30:40hs</td>
                                    <td>No</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>04:30:40hs</td>
                                    <td>No</td>

                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>04:30:40hs</td>
                                    <td>$700</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>03:30:40hs</td>
                                    <td>$1200</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>04:30:40hs</td>
                                    <td>No</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>04:30:40hs</td>
                                    <td>No</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>04:50:40hs</td>
                                    <td>$900</td>
                                </tr>
                            </tbody>
                        </table>
                        <p>Si aun no retiraste tu premio por haber participado del podio, podes hacerlo en Carlos Arjona 154 1er piso, Capital Federal.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
