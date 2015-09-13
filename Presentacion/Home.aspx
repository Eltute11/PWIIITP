﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Presentacion.Home" MasterPageFile="~/Master/Global.Master" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="cphGlobalHead" runat="server">
    <title>Home - Login</title>
</asp:Content>

<asp:Content ID="ContentBody" ContentPlaceHolderID="cphGlobalBody" runat="server">
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a href="../" class="navbar-brand">Maratones UNLaM</a>
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <div class="collapse navbar-collapse" id="Div1">
                    <ul class="nav navbar-nav">
                    </ul>

                    <form class="navbar-form navbar-right" role="search" runat="server" method="post" id="frmExistente">
                        <div class="form-group">
                            <label class="control-label">Ya estoy registrado</label>
                            <asp:TextBox runat="server" ID="txtEmailExistente" class="form-control" placeholder="Email"></asp:TextBox>
                            <asp:TextBox runat="server" ID="txtClaveExistente" TextMode="Password" class="form-control" placeholder="Clave"></asp:TextBox>
                        </div>
                        <asp:Button class="btn btn-default" runat="server" Text="Ingresar" ID="btnIngresar" OnClick="btnIngresar_Click" />
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h2 id="H1">&Uacute;ltima Marat&oacute;n</h2>
            </div>
        </div>

        <div class="row">

            <!-- Ultima Maraton (Resultados) -->

            <div class="col-lg-6" col-lg-offset-1>
                <div class="bs-component">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="badge">1</span>
                            Diego Trefiletti
                            <strong>02:52:34</strong>
                        </li>
                        <li class="list-group-item">
                            <span class="badge">2</span>
                            Dapibus ac facilisis in
                        </li>
                        <li class="list-group-item">
                            <span class="badge">3</span>
                            Morbi leo risus
                        </li>
                        <li class="list-group-item">
                            <span class="badge">4</span>
                            Cras justo odio
                        </li>
                        <li class="list-group-item">
                            <span class="badge">5</span>
                            Dapibus ac facilisis in
                        </li>
                        <li class="list-group-item">
                            <span class="badge">6</span>
                            Morbi leo risus
                        </li>
                        <li class="list-group-item">
                            <span class="badge">7</span>
                            Morbi leo risus
                        </li>
                        <li class="list-group-item">
                            <span class="badge">8</span>
                            Cras justo odio
                        </li>
                        <li class="list-group-item">
                            <span class="badge">9</span>
                            Dapibus ac facilisis in
                        </li>
                        <li class="list-group-item">
                            <span class="badge">10</span>
                            Morbi leo risus
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Registrate -->

            <div class="col-lg-6" col-lg-offset-1>
                <div class="well bs-component">
                    <form class="form-horizontal">
                        <fieldset>
                            <legend>Soy nuevo</legend>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Me llamo</label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" id="txtNombre" placeholder="Nombre">
                                </div>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txtApellido" placeholder="Apellido">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Mi Mail es</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="Text2" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Naci el</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txtFechaNacimiento" placeholder="Fecha Nacimiento"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Vivo en</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="Text1" placeholder="Residencia"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword" class="col-lg-2 control-label">Mi clave</label>
                                <div class="col-lg-5">
                                    <input type="password" class="form-control" id="txtClave" placeholder="Clave"/>
                                </div>
                                <div class="col-lg-5">
                                    <input type="password" class="form-control" id="txtClaveRepetir" placeholder="Repetir Clave"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button type="submit" class="btn btn-primary">¡Comenzar!</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>


        </div>

        <!-- Navs
      ================================================== -->
        <div class="bs-docs-section">

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="nav">Navs</h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <h2 id="nav-tabs">Tabs</h2>
                    <div class="bs-component">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
                            <li><a href="#profile" data-toggle="tab">Profile</a></li>
                            <li class="disabled"><a>Disabled</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#dropdown1" data-toggle="tab">Action</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#dropdown2" data-toggle="tab">Another action</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                                <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                            </div>
                            <div class="tab-pane fade" id="profile">
                                <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
                            </div>
                            <div class="tab-pane fade" id="dropdown1">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
                            </div>
                            <div class="tab-pane fade" id="dropdown2">
                                <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2 id="nav-pills">Pills</h2>
                    <div class="bs-component">
                        <ul class="nav nav-pills">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Profile</a></li>
                            <li class="disabled"><a href="#">Disabled</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <br>
                    <div class="bs-component">
                        <ul class="nav nav-pills nav-stacked">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Profile</a></li>
                            <li class="disabled"><a href="#">Disabled</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2 id="nav-breadcrumbs">Breadcrumbs</h2>
                    <div class="bs-component">
                        <ul class="breadcrumb">
                            <li class="active">Home</li>
                        </ul>

                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">Library</li>
                        </ul>

                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Library</a></li>
                            <li class="active">Data</li>
                        </ul>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-4">
                    <h2 id="pagination">Pagination</h2>
                    <div class="bs-component">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>

                        <ul class="pagination pagination-lg">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>

                        <ul class="pagination pagination-sm">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2 id="pager">Pager</h2>
                    <div class="bs-component">
                        <ul class="pager">
                            <li><a href="#">Previous</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>

                        <ul class="pager">
                            <li class="previous disabled"><a href="#">&larr; Older</a></li>
                            <li class="next"><a href="#">Newer &rarr;</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>

        <!-- Indicators
      ================================================== -->
        <div class="bs-docs-section">

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="indicators">Indicators</h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <h2>Alerts</h2>
                    <div class="bs-component">
                        <div class="alert alert-dismissible alert-warning">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Warning!</h4>
                            <p>Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="alert alert-dismissible alert-danger">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="alert alert-dismissible alert-success">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="alert alert-dismissible alert-info">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>, but it's not super important.
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <h2>Labels</h2>
                    <div class="bs-component" style="margin-bottom: 40px;">
                        <span class="label label-default">Default</span>
                        <span class="label label-primary">Primary</span>
                        <span class="label label-success">Success</span>
                        <span class="label label-warning">Warning</span>
                        <span class="label label-danger">Danger</span>
                        <span class="label label-info">Info</span>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2>Badges</h2>
                    <div class="bs-component">
                        <ul class="nav nav-pills">
                            <li class="active"><a href="#">Home <span class="badge">42</span></a></li>
                            <li><a href="#">Profile <span class="badge"></span></a></li>
                            <li><a href="#">Messages <span class="badge">3</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Progress bars
      ================================================== -->
        <div class="bs-docs-section">

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="progress">Progress bars</h1>
                    </div>

                    <h3 id="progress-basic">Basic</h3>
                    <div class="bs-component">
                        <div class="progress">
                            <div class="progress-bar" style="width: 60%;"></div>
                        </div>
                    </div>

                    <h3 id="progress-alternatives">Contextual alternatives</h3>
                    <div class="bs-component">
                        <div class="progress">
                            <div class="progress-bar progress-bar-info" style="width: 20%"></div>
                        </div>

                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 40%"></div>
                        </div>

                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" style="width: 60%"></div>
                        </div>

                        <div class="progress">
                            <div class="progress-bar progress-bar-danger" style="width: 80%"></div>
                        </div>
                    </div>

                    <h3 id="progress-striped">Striped</h3>
                    <div class="bs-component">
                        <div class="progress progress-striped">
                            <div class="progress-bar progress-bar-info" style="width: 20%"></div>
                        </div>

                        <div class="progress progress-striped">
                            <div class="progress-bar progress-bar-success" style="width: 40%"></div>
                        </div>

                        <div class="progress progress-striped">
                            <div class="progress-bar progress-bar-warning" style="width: 60%"></div>
                        </div>

                        <div class="progress progress-striped">
                            <div class="progress-bar progress-bar-danger" style="width: 80%"></div>
                        </div>
                    </div>

                    <h3 id="progress-animated">Animated</h3>
                    <div class="bs-component">
                        <div class="progress progress-striped active">
                            <div class="progress-bar" style="width: 45%"></div>
                        </div>
                    </div>

                    <h3 id="progress-stacked">Stacked</h3>
                    <div class="bs-component">
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 35%"></div>
                            <div class="progress-bar progress-bar-warning" style="width: 20%"></div>
                            <div class="progress-bar progress-bar-danger" style="width: 10%"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Containers
      ================================================== -->
        <div class="bs-docs-section">

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="container">Containers</h1>
                    </div>
                    <div class="bs-component">
                        <div class="jumbotron">
                            <h1>Jumbotron</h1>
                            <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                            <p><a class="btn btn-primary btn-lg">Learn more</a></p>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
                    <h2>List groups</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="bs-component">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="badge">14</span>
                                Cras justo odio
                            </li>
                            <li class="list-group-item">
                                <span class="badge">2</span>
                                Dapibus ac facilisis in
                            </li>
                            <li class="list-group-item">
                                <span class="badge">1</span>
                                Morbi leo risus
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="list-group">
                            <a href="#" class="list-group-item active">Cras justo odio
                            </a>
                            <a href="#" class="list-group-item">Dapibus ac facilisis in
                            </a>
                            <a href="#" class="list-group-item">Morbi leo risus
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="list-group">
                            <a href="#" class="list-group-item">
                                <h4 class="list-group-item-heading">List group item heading</h4>
                                <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                            </a>
                            <a href="#" class="list-group-item">
                                <h4 class="list-group-item-heading">List group item heading</h4>
                                <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
                    <h2>Panels</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                Basic panel
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">Panel heading</div>
                            <div class="panel-body">
                                Panel content
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                Panel content
                            </div>
                            <div class="panel-footer">Panel footer</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Panel primary</h3>
                            </div>
                            <div class="panel-body">
                                Panel content
                            </div>
                        </div>

                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title">Panel success</h3>
                            </div>
                            <div class="panel-body">
                                Panel content
                            </div>
                        </div>

                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <h3 class="panel-title">Panel warning</h3>
                            </div>
                            <div class="panel-body">
                                Panel content
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h3 class="panel-title">Panel danger</h3>
                            </div>
                            <div class="panel-body">
                                Panel content
                            </div>
                        </div>

                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h3 class="panel-title">Panel info</h3>
                            </div>
                            <div class="panel-body">
                                Panel content
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <h2>Wells</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="well">
                            Look, I'm in a well!
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="well well-sm">
                            Look, I'm in a small well!
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                        <div class="well well-lg">
                            Look, I'm in a large well!
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Dialogs
      ================================================== -->
        <div class="bs-docs-section">

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="dialogs">Dialogs</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <h2>Modals</h2>
                    <div class="bs-component">
                        <div class="modal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title">Modal title</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>One fine body…</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2>Popovers</h2>
                    <div class="bs-component">
                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Left</button>

                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Top</button>

                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus
              sagittis lacus vel augue laoreet rutrum faucibus.">
                            Bottom</button>

                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Right</button>
                    </div>
                    <h2>Tooltips</h2>
                    <div class="bs-component">
                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tooltip on left">Left</button>

                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Tooltip on top">Top</button>

                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom">Bottom</button>

                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="Tooltip on right">Right</button>
                    </div>
                </div>
            </div>
        </div>

        <div id="source-modal" class="modal fade">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Source Code</h4>
                    </div>
                    <div class="modal-body">
                        <pre></pre>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <div class="row">
                <div class="col-lg-12">

                    <ul class="list-unstyled">
                        <li class="pull-right"><a href="#top">Back to top</a></li>
                        <li><a href="http://news.bootswatch.com" onclick="pageTracker._link(this.href); return false;">Blog</a></li>
                        <li><a href="http://feeds.feedburner.com/bootswatch">RSS</a></li>
                        <li><a href="https://twitter.com/bootswatch">Twitter</a></li>
                        <li><a href="https://github.com/thomaspark/bootswatch/">GitHub</a></li>
                        <li><a href="../help/#api">API</a></li>
                        <li><a href="../help/#support">Support</a></li>
                    </ul>
                    <p>
                        Made by <a href="http://thomaspark.co" rel="nofollow">Thomas Park</a>. Contact him at <a href="/cdn-cgi/l/email-protection#f3879b9c9e9280b3919c9c8780849287909bdd909c9e"><span class="__cf_email__" data-cfemail="43372b2c2e223003212c2c3730342237202b6d202c2e">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">
                                                                                                                                                                                                                                                                                                                         /* <![CDATA[ */!function () { try { var t = "currentScript" in document ? document.currentScript : function () { for (var t = document.getElementsByTagName("script"), e = t.length; e--;) if (t[e].getAttribute("data-cfhash")) return t[e] }(); if (t && t.previousSibling) { var e, r, n, i, c = t.previousSibling, a = c.getAttribute("data-cfemail"); if (a) { for (e = "", r = parseInt(a.substr(0, 2), 16), n = 2; a.length - n; n += 2) i = parseInt(a.substr(n, 2), 16) ^ r, e += String.fromCharCode(i); e = document.createTextNode(e), c.parentNode.replaceChild(e, c) } t.parentNode.removeChild(t); } } catch (u) { } }()/* ]]> */</script></a>.
                    </p>
                    <p>Code released under the <a href="https://github.com/thomaspark/bootswatch/blob/gh-pages/LICENSE">MIT License</a>.</p>
                    <p>Based on <a href="http://getbootstrap.com" rel="nofollow">Bootstrap</a>. Icons from <a href="http://fortawesome.github.io/Font-Awesome/" rel="nofollow">Font Awesome</a>. Web fonts from <a href="http://www.google.com/webfonts" rel="nofollow">Google</a>.</p>

                </div>
            </div>

        </footer>


    </div>


    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../assets/js/custom.js"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        (function () { try { var s, a, i, j, r, c, l = document.getElementsByTagName("a"), t = document.createElement("textarea"); for (i = 0; l.length - i; i++) { try { a = l[i].getAttribute("href"); if (a && a.indexOf("/cdn-cgi/l/email-protection") > -1 && (a.length > 28)) { s = ''; j = 27 + 1 + a.indexOf("/cdn-cgi/l/email-protection"); if (a.length > j) { r = parseInt(a.substr(j, 2), 16); for (j += 2; a.length > j && a.substr(j, 1) != 'X'; j += 2) { c = parseInt(a.substr(j, 2), 16) ^ r; s += String.fromCharCode(c); } j += 1; s += a.substr(j, a.length - j); } t.innerHTML = s.replace(/</g, "&lt;").replace(/>/g, "&gt;"); l[i].setAttribute("href", "mailto:" + t.value); } } catch (e) { } } } catch (e) { } })();
        /* ]]> */
    </script>
</asp:Content>
