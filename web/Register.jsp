<%-- 
    Document   : Register
    Created on : Mar 31, 2015, 11:45:48 PM
    Author     : Hildegard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">

    <div class="page-header">
        <h1>Registro </h1>
    </div>

    <!-- Steps Progress and Details - START -->
    <div class="container" style="margin-top: 100px; margin-bottom: 100px;">
        <div class="row">
            <div class="progress" id="progress1">
                <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                </div>
                <span class="progress-type">Progreso del Registro</span>
                <span class="progress-completed">0%</span>
            </div>
        </div>
        <div class="row">
            <div class="row step">
                <div id="div1" class="col-md-2 activestep" onclick="javascript: resetActive(event, 0, 'step-1');">
                    <span class="fa fa-cloud-download"></span>
                    <p>Informacion Personal</p>
                </div>
                <div class="col-md-2" onclick="javascript: resetActive(event, 20, 'step-2');">
                    <span class="fa fa-pencil"></span>
                    <p>Información Cuenta</p>
                </div>
                <div class="col-md-2" onclick="javascript: resetActive(event, 40, 'step-3');">
                    <span class="fa fa-refresh"></span>
                    <p>Localización</p>
                </div>
                <div class="col-md-2" onclick="javascript: resetActive(event, 60, 'step-4');">
                    <span class="fa fa-dollar"></span>
                    <p>Pay Fee</p>
                </div>
                <div class="col-md-2" onclick="javascript: resetActive(event, 80, 'step-5');">
                    <span class="fa fa-cloud-upload"></span>
                    <p>Submit Application</p>
                </div>
                <div id="last" class="col-md-2" onclick="javascript: resetActive(event, 100, 'step-6');">
                    <span class="fa fa-star"></span>
                    <p>Send Feedback</p>
                </div>
            </div>
        </div>
        <div class="row setup-content step activeStepInfo" id="step-1">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1>Información Personal</h1>
                    <form class="form-horizontal">
                        <fieldset>
                            <!-- Form Name -->
                            <legend></legend>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="nombre">Nombre</label>  
                                <div class="col-md-4">
                                    <input id="nombre" name="nombre" type="text" placeholder="" class="form-control input-md" required="">
                                    <span class="help-block"></span>  
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="apellido1">Primero Apellido</label>  
                                <div class="col-md-4">
                                    <input id="apellido1" name="apellido1" type="text" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="apellido2">Segundo Apellido</label>  
                                <div class="col-md-4">
                                    <input id="apellido2" name="apellido2" type="text" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Multiple Radios -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="sexo">Sexo</label>
                                <div class="col-md-4">
                                    <div class="radio">
                                        <label for="sexo-0">
                                            <input type="radio" name="sexo" id="sexo-0" value="H" checked="checked">
                                            Hombre
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label for="sexo-1">
                                            <input type="radio" name="sexo" id="sexo-1" value="M">
                                            Mujer
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="apellido2">Fecha Nacimiento</label>  
                                <div class="col-md-4">
                                    <input id="fecha" name="fechaNacimiento" type="date" placeholder="" class="form-control" required="">

                                </div>
                            </div>

                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <div class="row setup-content step hiddenStepInfo" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1>Informacion Cuenta</h1>
                    <form class="form-horizontal">
                        <fieldset>
                            <!-- Form Name -->
                            <legend></legend>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="nick">Nombre Usuario</label>  
                                <div class="col-md-4">
                                    <input id="nick" name="nick" type="text" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="mail">Mail</label>  
                                <div class="col-md-4">
                                    <input id="mail" name="mail" type="text" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Password input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="passwordinput">Contraseña</label>
                                <div class="col-md-4">
                                    <input id="passwordinput" name="passwordinput" type="password" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Password input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="passwordinput">Repite la contraseña</label>
                                <div class="col-md-4">
                                    <input id="passwordinput" name="passwordinput" type="password" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>

                        </fieldset>
                    </form>

                </div>
            </div>
        </div>
        <div class="row setup-content step hiddenStepInfo" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1>STEP 3</h1>
                    <h3 class="underline">Instructions</h3>
                    <div class="bfh-selectbox bfh-countries" data-country="US" data-flags="true">
                        <input type="hidden" value="">
                        <a class="bfh-selectbox-toggle" role="button" data-toggle="bfh-selectbox" href="#">
                            <span class="bfh-selectbox-option input-medium" data-option=""></span>
                            <b class="caret"></b>
                        </a>
                        <div class="bfh-selectbox-options">
                            <input type="text" class="bfh-selectbox-filter">
                            <div role="listbox">
                                <ul role="option">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row setup-content step hiddenStepInfo" id="step-4">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1>STEP 4</h1>
                    <h3 class="underline">Instructions</h3>
                    Pay the application fee. 
                    This can be done either by entering your card details, or by using Paypal.
                </div>
            </div>
        </div>
        <div class="row setup-content step hiddenStepInfo" id="step-5">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1>STEP 5</h1>
                    <h3 class="underline">Instructions</h3>
                    Upload the application. 
                    This may require a confirmation email.
                </div>
            </div>
        </div>
        <div class="row setup-content step hiddenStepInfo" id="step-6">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1>STEP 6</h1>
                    <h3 class="underline">Instructions</h3>
                    Send us feedback on the overall process. 
                    This step is not obligatory.
                </div>
            </div>
        </div>
    </div>

    <style>
        .hiddenStepInfo {
            display: none;
        }

        .activeStepInfo {
            display: block !important;
        }

        .underline {
            text-decoration: underline;
        }

        .step {
            margin-top: 27px;
        }

        .progress {
            position: relative;
            height: 25px;
        }

        .progress > .progress-type {
            position: absolute;
            left: 0px;
            font-weight: 800;
            padding: 3px 30px 2px 10px;
            color: rgb(255, 255, 255);
            background-color: rgba(25, 25, 25, 0.2);
        }

        .progress > .progress-completed {
            position: absolute;
            right: 0px;
            font-weight: 800;
            padding: 3px 10px 2px;
        }

        .step {
            text-align: center;
        }

        .step .col-md-2 {
            background-color: #fff;
            border: 1px solid #C0C0C0;
            border-right: none;
        }

        .step .col-md-2:last-child {
            border: 1px solid #C0C0C0;
        }

        .step .col-md-2:first-child {
            border-radius: 5px 0 0 5px;
        }

        .step .col-md-2:last-child {
            border-radius: 0 5px 5px 0;
        }

        .step .col-md-2:hover {
            color: #F58723;
            cursor: pointer;
        }

        .step .activestep {
            color: #F58723;
            height: 100px;
            margin-top: -7px;
            padding-top: 7px;
            border-left: 6px solid #5CB85C !important;
            border-right: 6px solid #5CB85C !important;
            border-top: 3px solid #5CB85C !important;
            border-bottom: 3px solid #5CB85C !important;
            vertical-align: central;
        }

        .step .fa {
            padding-top: 15px;
            font-size: 40px;
        }
    </style>

    <script type="text/javascript">
        function resetActive(event, percent, step) {
            $(".progress-bar").css("width", percent + "%").attr("aria-valuenow", percent);
            $(".progress-completed").text(percent + "%");

            $("div").each(function () {
                if ($(this).hasClass("activestep")) {
                    $(this).removeClass("activestep");
                }
            });

            if (event.target.className == "col-md-2") {
                $(event.target).addClass("activestep");
            }
            else {
                $(event.target.parentNode).addClass("activestep");
            }

            hideSteps();
            showCurrentStepInfo(step);
        }

        function hideSteps() {
            $("div").each(function () {
                if ($(this).hasClass("activeStepInfo")) {
                    $(this).removeClass("activeStepInfo");
                    $(this).addClass("hiddenStepInfo");
                }
            });
        }

        function showCurrentStepInfo(step) {
            var id = "#" + step;
            $(id).addClass("activeStepInfo");
        }
    </script>

    <!-- Steps Progress and Details - END -->

</div>

