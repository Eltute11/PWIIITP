<%@ Page Title="MisMaratones" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="MisMaratones.aspx.cs" Inherits="Presentacion.GrupoUsuario.MisMaratones"  %>

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
                        <p>No est&aacute;s inscripto en ninguna Marat&oacute;n. ¿Que esper&aacute;s? <a href="UsuarioInscripcionMaratones.aspx">¡Anotate!</a></p>
                        <form id="form1" runat="server"> 
                            <div>
                            </div>
                            <div class="bs-component">
                                <asp:GridView ID="gvUsuarioMaratonesPendientes" OnRowCommand="gvUsuarioMaratonesPendientes_RowCommand"  runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False" DataKeyNames="ID" EmptyDataText="No hay registros de datos para mostrar."> 
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="Nro Maraton" SortExpression="ID"/>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:d}" />
                                        <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                                        <asp:ButtonField ButtonType="Button" CommandName="Anular" ControlStyle-CssClass="btn btn-warning" Text="Anular Inscripcion"/>
                                    </Columns>
                                </asp:GridView>
                            </div>
                    </div>

                    <div class="tab-pane fade" id="historial">
                        <h4>Historial de Maratones corridas</h4>
                         <asp:GridView ID="gvUsuarioMaratonesHistorial" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" EmptyDataText="No has realizado ninguna maraton"> 
                            <Columns>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre de Maratón" SortExpression="Nombre" />
                                <asp:BoundField DataField="Lugar_Salida" HeaderText="Lugar de Salida" SortExpression="Lugar_Salida" />
                                <asp:CheckBoxField DataField="Presente" HeaderText="¿Me presenté?" SortExpression="Presente" />
                                <asp:BoundField DataField="Posicion" HeaderText="Posición final" SortExpression="Posicion" />
                                <asp:CheckBoxField DataField="Abandono" HeaderText="¿Abandoné?" SortExpression="Abandono" />
                                <asp:BoundField DataField="Tiempo_Llegada" HeaderText="Tiempo" SortExpression="Tiempo_Llegada" />
                                <asp:BoundField DataField="Premio" HeaderText="Premio" ReadOnly="True" SortExpression="Premio" />
                            </Columns>
                        </asp:GridView> 
                        </form>
                        <p>Si aun no retiraste tu premio por haber participado del podio, podes hacerlo en Carlos Arjona 154 1er piso, Capital Federal.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="../Js/jsTableRealizadasUsuario.js"></script> <!-- Realizo aca la llamada al js ya que si lo ponia en la master entraba en todas las paginas -->

</asp:Content>
