<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="UsuarioInscripcionMaratones.aspx.cs" Inherits="Presentacion.GrupoUsuario.UsuarioInscripcionMaratones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphUsuarioHead" runat="server">
    <title>Inscripción a Maratones</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphUsuarioBody" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <h2 id="nav-tabs">Inscripci&oacute;n a Marat&oacute;n</h2>

            <h5>El tiempo límite de inscripción a una determinada maratón, es hasta el día anterior de la realización de la misma.</h5>

            <form class="form-horizontal">

                <fieldset>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Maratones no realizadas</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped table-hover ">
                                <thead>
                                    <tr>
                                        <th>Nombre de Maratón</th>
                                        <th>Fecha</th>
                                        <th>Km</th>
                                        <th>Cupo Total</th>
                                        <th>Inscriptos</th>
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
                                        <td>
                                            <buttom class="btn btn-danger">Cupo Completo</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-primary">Inscribirse</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-warning">En espera</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-primary">Inscribirse</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-primary">Inscribirse</buttom>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
                <!--
    <div id="inscripcionMaratones">
        <div class="bs-component">
            <form class="form-horizontal">
                <div>
                    <h5>El tiempo límite de inscripción a una determinada maratón, es hasta el día anterior de la realización de la misma.</h5>
                </div>

                <fieldset>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Inscripción a Maratones</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped table-hover ">
                                <thead>
                                    <tr>
                                        <th>Nombre de Maratón</th>
                                        <th>Fecha</th>
                                        <th>Km</th>
                                        <th>Cupo Total</th>
                                        <th>Inscriptos</th>
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
                                        <td>
                                            <buttom class="btn btn-danger">Cupo Completo</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-primary">Inscribirse</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-primary">Inscribirse</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-primary">Inscribirse</buttom>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>
                                            <buttom class="btn btn-primary">Inscribirse</buttom>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
-->                
</asp:Content>

