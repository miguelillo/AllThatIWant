<!-- MY ACCOUNT PAGE -->
<section class="my_account parallax">

    <!-- CONTAINER -->
    <div class="container">

        <div class="my_account_block clearfix">
            <div class="login">
                <h2>YA ESTOY REGISTRADO</h2>
                <form class="form-signin" method="POST" action="Controller?opID=Login">
                    <label for="inputEmail" class="sr-only">Email address</label>
                    <input name="mail" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                    <div id="formRemember" class="checkbox">
                        <label>
                            <input  type="checkbox" value="remember-me"> Recuerdame  
                        </label>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block" id="formButton" type="submit">Iniciar</button>
                    <span class="help-block-Login"></span>  
                </form>

                <form class="login_form" action="javascript:void(0);" method="get">
                    <input type="text" name="username" value="Usuario" onFocus="if (this.value === 'Username or email')
                                this.value = '';" onBlur="if (this.value === '')
                                            this.value = 'Username or email';" />
                    <input class="last" type="text" name="password" value="Password" onFocus="if (this.value === 'Password')
                                this.value = '';" onBlur="if (this.value === '')
                                            this.value = 'Password';" />
                    <div class="clearfix">
                        <div class="pull-left"><input type="checkbox" id="categorymanufacturer1" /><label for="categorymanufacturer1">Mantente Logeado</label></div>
                        <div class="pull-right"><a class="forgot_pass" href="javascript:void(0);" >Olvide la contraseña</a></div>
                    </div>
                    <div class="center"><input type="submit" value="Login"></div>
                </form>
            </div>
            <div class="new_customers">
                <h2>NEW CUSTOMERS</h2>
                <p>Register with Glammy Shop to enjoy personalized services, including:</p>
                <ul>
                    <li><a href="javascript:void(0);" >?  Online Order Status</a></li>
                    <li><a href="javascript:void(0);" >?  Love List</a></li>
                    <li><a href="javascript:void(0);" >?  Sign up to receive exclusive news and private sales</a></li>
                    <li><a href="javascript:void(0);" >?  Place Test Orders</a></li>
                    <li><a href="javascript:void(0);" >?  Quick and easy checkout</a></li>
                </ul>
                <div class="center"><a class="btn active" href="javascript:void(0);" >create new account</a></div>
            </div>
        </div>

        <div class="my_account_note center">HAVE A QUESTION? <b>1 800 888 02828</b></div>
    </div><!-- //CONTAINER -->
</section><!-- //MY ACCOUNT PAGE -->