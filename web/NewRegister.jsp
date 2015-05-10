<!-- MY ACCOUNT PAGE -->
<section class="my_account parallax">

    <!-- CONTAINER -->
    <div class="container">

        <div class="my_account_block clearfix">
            <div id="Registro">  

                <form class="form-horizontal">
                    <fieldset>

                        <!-- Form Name -->
                        <legend>Registro</legend>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="name">Nombre</label>  
                            <div class="col-md-6">
                                <input id="name" name="name" type="text" placeholder="Introduce un Nombre" class="form-control input-md" required="">

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="surname1">Primer Apellido</label>  
                            <div class="col-md-6">
                                <input id="surname1" name="surname1" type="text" placeholder="Introduce tu Segundo Apellido" class="form-control input-md">

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="surname2">Segundo Apellido</label>  
                            <div class="col-md-6">
                                <input id="surname2" name="surname2" type="text" placeholder="Introduce tu segundo apellido" class="form-control input-md" required="">

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
                        <label class="col-md-4 control-label" for="surname2">Fecha Nacimiento</label> 
                        <div class="bfh-datepicker">
                        </div>
                             </div>
                             <div class="form-group">
                        <label class="col-md-4 control-label" for="surname2">Pais de Nacimiento</label> 
                        <div class="bfh-selectbox bfh-countries" data-country="US" data-flags="true">
                        </div>
                             </div>
                    </fieldset>
                </form>




            </div>


        </div><!-- //CONTAINER -->
</section><!-- //MY ACCOUNT PAGE -->