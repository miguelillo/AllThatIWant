<!-- MY ACCOUNT PAGE -->
<section class="my_account parallax">

    <!-- CONTAINER -->
    <div class="container">

        <div class="my_account_block clearfix">
            <div class="login">
                <h2>YA ESTOY REGISTRADO</h2>
                <form class="login_form" method="POST" action="Controller?opID=Login">
                    <label for="inputEmail" class="sr-only">Email address</label>
                    <input name="mail" type="text"   placeholder="Email address" required autofocus>
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input name="password" type="password"   placeholder="Password" required>
                    <div class="clearfix">
                        <div class="pull-left"><input type="checkbox" id="categorymanufacturer1" /><label for="categorymanufacturer1">Mantente Logeado</label></div>
                        <div class="pull-right"><a class="forgot_pass" href="javascript:void(0);" >Olvide la contraseña</a></div>
                    </div>
                    <div class="center"> <button class="btn btn-lg btn-primary btn-block" id="formButton" type="submit">Iniciar</button></div>
                    <span class="help-block-Login"></span>  
                </form>



            </div>
            <div class="new_customers">
                <h2>Registro</h2>
                <p>Registrate en All That I Want, para disfrutar de servicios personalizados:</p>
                <ul>
                    <li><a href="javascript:void(0);" >-  Estado del Pedido On-Line.</a></li>
                    <li><a href="javascript:void(0);" >-  Lista de Deseos.</a></li>
                    <li><a href="javascript:void(0);" >-  Registrate para recibir ofertas personalizadas para ti.</a></li>
                    <li><a href="javascript:void(0);" >-  Personal Shopper.</a></li>
                    <li><a href="javascript:void(0);" >-  Compra Rapida.</a></li>
                </ul>
                <div class="center"> 
                    <a class="btn btn-lg btn-primary btn-block" href="Controller?opID=RedirectNewRegister"id="formButton" type="submit">Crear Nueva Cuenta</a>
                </div>
            </div>
        </div>

    </div><!-- //CONTAINER -->
</section><!-- //MY ACCOUNT PAGE -->