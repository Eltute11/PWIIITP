<%@ Page Title="" Language="C#" MasterPageFile="~/Master/GrupoUsuario.master" AutoEventWireup="true" CodeBehind="UsuarioHistorialMaratones.aspx.cs" Inherits="Presentacion.GrupoUsuario.UsuarioHistorialMaratones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphUsuarioHead" runat="server">
    <title>Historial de Maratones</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphUsuarioBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 id="nav-tabs">Mis Maratones</h2>
                <div class="bs-component">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#proxima" data-toggle="tab">Pr&oacute;ximas</a></li>
                        <li><a href="#historial" data-toggle="tab">Realizadas</a></li>
                        <li><a href="#consejos" data-toggle="tab">Consejos</a></li>
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
                            <p>Si aun no retiraste tu premio por haber participado del podio, podes hacerlo en Carlos Arjona 154 1er piso, Capital Federal.</p>
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
                                    <tr class="info">
                                        <td>3</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>04:30:40hs</td>
                                        <td>$700</td>
                                    </tr>
                                    <tr class="success">
                                        <td>4</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>03:30:40hs</td>
                                        <td>$1200</td>
                                    </tr>
                                    <tr class="danger">
                                        <td>5</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>04:30:40hs</td>
                                        <td>No</td>
                                    </tr>
                                    <tr class="warning">
                                        <td>6</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>04:30:40hs</td>
                                        <td>No</td>
                                    </tr>
                                    <tr class="active">
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
                        </div>
                        <div class="tab-pane fade" id="consejos">
                            <h4>Serie de puntos a tener en cuenta antes que una persona corra su primer maratón</h4>
                            <img class="img-responsive" src="../Img/Consejos.jpg" />
                            <p></p>
                            <p><strong>Experiencia</strong></p>
                            <p>Trata de ver antes de correr un maratón, tener experiencias previas en menores distancias (por ej: si querés correr 21 k haber realizado carreras de 10 y 15 km, si querés correr por primera vez maratón, haber corrido 21k), la agenda de carreras argentina nos ofrece una buena propuesta de carreras para realizar dicha progresión en distancia. Para ello es necesario una planificaron de carreras previas. De esta manera al debutar no te vas a encontrar con la sorpresa de que los 42 km eran más largos de lo que imaginaste.</p>
                            <p><strong>Estudios Medicos</strong></p>
                            <p>El maratón es una prueba extensa y muy exigente, donde se va a exponer al cuerpo a un gran esfuerzo, por eso es necesario saber cual es nuestro estado físico, porque en muchos casos uno se puede sentir en buen estado y sin embargo la realidad sea otra, más cuando un adulto comienza una actividad deportiva luego de 30 o 40 años de sedentarismo y tabaquismo. Es adecuado realizar una prueba de esfuerzo o ergometría. También es bueno tener estudios complementarios como electrocardiograma y someterse a un cuestionario medico para asegurarse que no tener antecedentes cardiacos personales o familiares. Con mas razón personas mayores de 35 años con factores de riesgo cardiovascular, hipertensión, colesterol alto o diabetes.</p>
                            <p><strong>Preparacion Fisica Adecuada</strong></p>
                            <p>Tengo un dicho: “correr no es solo correr“ Para realizar cualquier deporte, deberías tener una preparación física adecuada para reducir el porcentaje de riego de lesiones. En un medio maratón o en un maratón tanto los músculos como las articulaciones reciben miles de veces el impacto de peso del cuerpo multiplicado por 3, por eso una buena musculatura nos va a proteger de lesiones. No te limites a las pesas en el gimnasio y realiza otros deportes como ciclismo para el fortalecimiento de las piernas y la natación para el fortalecimiento de torso y los brazos.</p>
                            <p><strong>Entrenamiento acorde al Objetivo</strong></p>
                            <p>Cada individuo tiene una capacidad física distinta, por eso antes de correr un maratón debes tener un plan de entrenamiento acorde a tus capacidades tanto en volumen como en intensidad. Es muy importante que te entrene alguien con experiencia, formación adecuada y que sea realista y no alguien que nos cree falsas expectativas o peor aún, entrenarnos nosotros mismos con planes bajados de Internet o de una revista con artículos tales como: “baje las 3 horas en el maratón.”</p>
                            <p>Un entrenamiento inadecuando te puede traer como consecuencias agotarte antes del maratón, abandonar la carrera o lesionarte con desgarros, fracturas por stress, rotura de ligamentos, etc.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
