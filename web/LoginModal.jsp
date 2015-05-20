<%@page contentType="text/html;charset=UTF-8"%>
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <form class="form-signin" method="POST" action="Controller?opID=Login">
                <h2 id="formTittle" class="form-signin-heading">Iniciar Sesión </h2>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input name="mail" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <div id="formRemember" class="checkbox">
                    <label>
                        <input  type="checkbox" value="remember-me"> Recuerdame  
                    </label>
                </div>
                <button type="submit" class="btn-next btn btn-lg btn-primary btn-block" id="formButton">Siguiente</button>
                <span class="help-block-Login"></span>  
            </form>
        </div>
    </div>
</div>