<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="MaratonResultado.aspx.cs" Inherits="Presentacion.GrupoAdministracion.MaratonResultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Adminstrador - Maraton - Cargar Resultado</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2>Registraci&oacute;n de Resultados</h2>
            <table class="table table-striped table-hover ">
                <thead>
                    <tr>
                        <th>Persona</th>
                        <th>¿Asistio?</th>
                        <th>¿Abandono?</th>
                        <th>Tiempo Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td><input id="Text1" type="text" /></td>                        
                    </tr>
                    <tr>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td><input id="Text2" type="text" /></td>                        
                    </tr>
                    <tr>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td><input id="Text3" type="text" /></td>                        
                    </tr>
                    <tr>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td><input id="Text4" type="text" /></td>                        
                    </tr>
                    <tr>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td><input id="Text5" type="text" /></td>                        
                    </tr>
                </tbody>
            </table>
            <a href="#" class="btn btn-success">Guardar</a>
        </div>
    </div>
</asp:Content>
