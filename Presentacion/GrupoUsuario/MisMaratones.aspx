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
                        <p>No est&aacute;s inscripto en ninguna Marat&oacute;n. ¿Que esper&aacute;s? <a href="UsuarioInscripcionMaratones.aspx">¡Anotate!</a></p>
                        <form id="form1" runat="server">
                            <div>
                            </div>
                            <div class="bs-component">
                                <asp:GridView ID="gvUsuarioMaratonesPendientes" runat="server" CssClass="table table-striped table-hover" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsUsuarioMaratonesPendiente" EmptyDataText="No hay registros de datos para mostrar.">
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:d}" />
                                        <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                                        <asp:ButtonField Text="Anular Inscripcion" ButtonType="Button" ControlStyle-CssClass="btn btn-warning" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <asp:SqlDataSource ID="sdsUsuarioMaratonesPendiente" runat="server" ConnectionString="<%$ ConnectionStrings:MaratonConnectionString %>" DeleteCommand="DELETE FROM [Maraton] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Maraton] ([Nombre], [Cant_Participantes], [Lugar_Salida], [Cant_Lista_Espera], [Premio_Uno], [Premio_Dos], [Premio_Tres], [fecha]) VALUES (@Nombre, @Cant_Participantes, @Lugar_Salida, @Cant_Lista_Espera, @Premio_Uno, @Premio_Dos, @Premio_Tres, @fecha)" ProviderName="<%$ ConnectionStrings:MaratonConnectionString.ProviderName %>" SelectCommand="SELECT Nombre, Fecha, Km, ID FROM Maraton" UpdateCommand="UPDATE [Maraton] SET [Nombre] = @Nombre, [Cant_Participantes] = @Cant_Participantes, [Lugar_Salida] = @Lugar_Salida, [Cant_Lista_Espera] = @Cant_Lista_Espera, [Premio_Uno] = @Premio_Uno, [Premio_Dos] = @Premio_Dos, [Premio_Tres] = @Premio_Tres, [fecha] = @fecha WHERE [ID] = @ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Nombre" Type="String" />
                                    <asp:Parameter Name="Cant_Participantes" Type="Int32" />
                                    <asp:Parameter Name="Lugar_Salida" Type="String" />
                                    <asp:Parameter Name="Cant_Lista_Espera" Type="Int32" />
                                    <asp:Parameter Name="Premio_Uno" Type="Decimal" />
                                    <asp:Parameter Name="Premio_Dos" Type="Decimal" />
                                    <asp:Parameter Name="Premio_Tres" Type="Decimal" />
                                    <asp:Parameter Name="Fecha" Type="DateTime"  />
                                    <asp:Parameter Name="Km" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Nombre" Type="String" />
                                    <asp:Parameter Name="Cant_Participantes" Type="Int32" />
                                    <asp:Parameter Name="Lugar_Salida" Type="String" />
                                    <asp:Parameter Name="Cant_Lista_Espera" Type="Int32" />
                                    <asp:Parameter Name="Premio_Uno" Type="Decimal" />
                                    <asp:Parameter Name="Premio_Dos" Type="Decimal" />
                                    <asp:Parameter Name="Premio_Tres" Type="Decimal" />
                                    <asp:Parameter Name="fecha" Type="DateTime" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </form>
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
