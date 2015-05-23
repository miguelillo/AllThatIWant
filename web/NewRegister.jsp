<%@page contentType="text/html;charset=UTF-8"%>
<script src="js/ValidarRegistro.js" type="text/javascript"></script>
<!-- MY ACCOUNT PAGE -->
<section class="my_account parallax">
    <!-- CONTAINER -->
    <div class="container">
        <div class="my_account_block clearfix">
            <div id="Registro">  
                <form class="form-horizontal" id="personalForm" method="POST" action="Controller?opID=Register">
                    <fieldset id="registro-personal">
                        <!-- Form Name -->

                        <div id="datos_personales">
                            <legend>Datos Personales</legend>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="name">Nombre</label>  
                                <div class="col-md-6">
                                    <input onblur="nombre('name')" id="name" name="name" type="text" placeholder="Introduce un Nombre" class="form-control input-md" required="">
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="surname1">Primer Apellido</label>  
                                <div class="col-md-6">
                                    <input onblur="nombre('surname1')"id="surname1" name="surname1" type="text" placeholder="Introduce tu Segundo Apellido" class="form-control input-md">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="surname2">Segundo Apellido</label>  
                                <div class="col-md-6">
                                    <input  onblur="nombre('surname2')"id="surname2" name="surname2" type="text" placeholder="Introduce tu segundo apellido" class="form-control input-md" required="">
                                </div>
                            </div>

                            <!-- Multiple Radios -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="sexo">Sexo</label>
                                <div class="col-md-4">
                                    <div class="radio">
                                        <label for="sexo-0">
                                            <input type="radio" name="sexo" id="sexo-0" value="M" checked="checked">
                                            Mujer
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label for="sexo-1">
                                            <input type="radio" name="sexo" id="sexo-1" value="H">
                                            Hombre
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <!-- File Button --> 
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="userPictureUpload">Foto</label>
                                <div class="col-md-4">
                                    <input id="userPictureUpload" name="userPictureUpload" class="input-file" type="file">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="FechaNacimiento">Fecha Nacimiento</label> 
                                <input type="date" class="col-md-6 bfh-datepicker" name="FechaNacimiento"style="
                                       /* width: 100%; */    
                                       height: 40px;    margin: 0 6px 10px 0;    padding: 10px;    text-transform: none;    font-family: 'Roboto', sans-serif;    font-weight: 400;    line-height: 20px;    font-size: 11px;    color: #666;    font-style: normal;    border-radius: 0;    background: #fff;    border: 2px solid #e9e9e9;    box-shadow: none;    transition: all 0.3s ease-in-out;    -webkit-transition: all 0.3s ease-in-out;
                                       ">
                                </input>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="Pais">Pais de Nacimiento</label> 
                                <div name="Pais" class="col-md-6 bfh-selectbox bfh-countries selectPaises "  data-country="ES" data-flags="true">

                                    <input type="hidden" name="Pais">
                                    <a class="bfh-selectbox-toggle" role="button" data-toggle="bfh-selectbox" href="#">
                                        <span class="bfh-selectbox-option input-medium" data-option=""></span>
                                        <b class="caret"></b>
                                    </a>
                                    <div class="bfh-selectbox-options">
                                        <input type="text" class="bfh-selectbox-filter" name="Pais">
                                        <div role="listbox">
                                            <ul role="option">
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="datos_personales">
                                <legend>Datos de Contacto</legend>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="mail">Email</label>  
                                    <div class="col-md-6">
                                        <input onblur="email1()" id="mail" name="mail" type="email" placeholder="Introduce un E-mail" class="form-control input-md" required="">
                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="address">Dirección</label>  
                                    <div class="col-md-6">
                                        <input onblur="direccion1()"id="address" name="address" type="text" placeholder="Introduce una dirección" class="form-control input-md">

                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="phone">Telefono</label>  
                                    <div class="col-md-6">
                                        <input  onblur="validarTelefonos1()"id="phone" name="phone" type="text" placeholder="Introduce un telefono de contacto" class="form-control input-md" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="codPostal">Codigo Postal</label>  
                                    <div class="col-md-6">
                                        <input  onblur="codigoPostal()" id="codPostal" name="codPostal" type="text" placeholder="Introduce un Codigo Postal" class="form-control input-md" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="poblacion">Población</label>  
                                    <div class="col-md-6">
                                        <input  onblur="" id="poblacion" name="poblacion" type="text" placeholder="Introduce un Codigo Postal" class="form-control input-md" required="">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="paisResidencia">Pais de Residencia</label> 
                                    <div name="paisResidencia" class="col-md-6 bfh-selectbox bfh-countries selectPaises "  data-country="ES" data-flags="true">

                                        <input type="hidden" name="paisResidencia">
                                        <a class="bfh-selectbox-toggle" role="button" data-toggle="bfh-selectbox" href="#">
                                            <span class="bfh-selectbox-option input-medium" data-option=""></span>
                                            <b class="caret"></b>
                                        </a>
                                        <div class="bfh-selectbox-options">
                                            <input type="text" class="bfh-selectbox-filter" name="paisResidencia">
                                            <div role="listbox">
                                                <ul role="option">
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div id="informacionCuenta">
                                <legend>Datos de la cuenta</legend>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="nick">Primer Apellido</label>  
                                    <div class="col-md-6">
                                        <input onblur="nombre('surname1')"id="surname1" name="nick" type="text" placeholder="Introduce tu Segundo Apellido" class="form-control input-md">

                                    </div>
                                </div>


                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="password1">Contraseña</label>  
                                    <div class="col-md-6">
                                        <input onblur="validarPassword()" id="password1" name="password" type="password" placeholder="Introduce una contraseña" class="form-control input-md" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="password">Re - Contraseña</label>  
                                    <div class="col-md-6">
                                        <input onblur="validarPassword()" id="password2" type="password" placeholder="Introduce una contraseña" class="form-control input-md" required="">
                                    </div>
                                </div>


                                </fieldset>
                                <a class="btn btn-lg btn-primary btn-block" id="Siguiente">Siguiente</a>
                            </div>
                        </div>



                        <button id="myBtn" type="submit">Try it</button>
                </form>
            </div>
        </div><!-- //CONTAINER -->
</section><!-- //MY ACCOUNT PAGE -->
<script>

    $('#Siguiente').click(function () {

        var ocultarPersonal = $('#registro-personal').hide("slow", function () {
            alert("The paragraph is now hidden");
        });
    });



</script>