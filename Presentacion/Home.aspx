<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Publico.master" CodeBehind="Home.aspx.cs" Inherits="Presentacion.Home" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="cphPublicoHead" runat="server">
    <title>Home</title>
</asp:Content>

<asp:Content ID="ContentBody" ContentPlaceHolderID="cphPublicoBody" runat="server">

    <!--<div class="container">-->
        <div class="row">
            <div class="col-lg-12">
                <h2 id="H1">&Uacute;ltima Marat&oacute;n</h2>
            </div>
        </div>

        <div class="row">

            <!-- Ultima Maraton (Resultados) -->

            <div class="col-lg-6" > <!-- col-lg-offset-1 -->
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

            <div class="col-lg-6" > <!-- col-lg-offset-1 -->
                <div class="well bs-component">
                    <form class="form-horizontal" runat="server">
                        <fieldset>
                            <legend>Soy nuevo</legend>
                            <div class="form-group">
                                <label for="inputNombre" class="col-lg-2 control-label">Me llamo</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtNombre" class="form-control" runat="server">Nombre</asp:TextBox>
                                   <!-- <input type="text" class="form-control" id="txtNombre" placeholder="Nombre"-->
                                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="*" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
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
    <!--</div>-->

    <script type="text/javascript">
        /* <![CDATA[ */
        (function () { try { var s, a, i, j, r, c, l = document.getElementsByTagName("a"), t = document.createElement("textarea"); for (i = 0; l.length - i; i++) { try { a = l[i].getAttribute("href"); if (a && a.indexOf("/cdn-cgi/l/email-protection") > -1 && (a.length > 28)) { s = ''; j = 27 + 1 + a.indexOf("/cdn-cgi/l/email-protection"); if (a.length > j) { r = parseInt(a.substr(j, 2), 16); for (j += 2; a.length > j && a.substr(j, 1) != 'X'; j += 2) { c = parseInt(a.substr(j, 2), 16) ^ r; s += String.fromCharCode(c); } j += 1; s += a.substr(j, a.length - j); } t.innerHTML = s.replace(/</g, "&lt;").replace(/>/g, "&gt;"); l[i].setAttribute("href", "mailto:" + t.value); } } catch (e) { } } } catch (e) { } })();
        /* ]]> */
    </script>

</asp:Content>
