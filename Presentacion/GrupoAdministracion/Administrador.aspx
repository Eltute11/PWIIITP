<%@ Page Language="C#" MasterPageFile="~/Master/GrupoAdmin.master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="Presentacion.GrupoAdministracion.Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminHead" runat="server">
    <title>Administrador de contenidos</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 id="nav-tabs">Administrador</h2>
                <div class="bs-component">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#new" data-toggle="tab">Nueva Maratón</a></li>
                        <li><a href="#reg" data-toggle="tab">Registrar Resultados</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="new">
                            
                            <div class="col-lg-12" col-lg-offset-1>
                                    <div class="bs-component">
                                        <form class="form-horizontal">
                                            <fieldset>
                                                <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Crear Maratón</h3>
                                                </div>
                                                <div class="panel-body">
                                                <div class="form-group">
                                                    <label for="" class="col-lg-1 control-label">Maratón</label>
                                                    <div class="col-lg-8">
                                                        <input type="text" class="form-control" id="txtNombre" placeholder="Nombre de maratón">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="cant" class="col-lg-1 control-label">Participantes</label>
                                                    <div class="col-lg-3">
                                                        <input type="text" class="form-control" id="cant" placeholder="Cant. Maxima de participantes">
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label for="txtSalida" class="col-lg-1 control-label">Salida</label>
                                                    <div class="col-lg-6">
                                                        <input type="text" class="form-control" id="txtSalida" placeholder="Lugar de salida">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="espera" class="col-lg-1 control-label">En espera</label>
                                                    <div class="col-lg-3">
                                                        <input type="text" class="form-control" id="espera" placeholder="Cant. de personas en lista de espera"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="premio" class="col-lg-1 control-label">Premio</label>
                                                    <div class="col-lg-2">
                                                        <input type="text" class="form-control" id="premio" placeholder="$ 500,00 - $ 5.000,00"/>
                                                    </div>
                                                </div>
                                                <div>
                                                   <input type="button" class="btn btn-success col-lg-offset-1" value="Crear" />
                                                </div>
                                                </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>


                        </div>
                        <div class="tab-pane fade" id="reg">
                            
                        </div>
                      
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
