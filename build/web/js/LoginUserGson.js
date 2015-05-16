$(document).ready(function () {
    $(".form-signin").submit(function () {
        $(".help-block-Login").html('<img src="images/loading.gif"/>');
        $.ajax({
            url: 'LoginUsuario',
            type: 'POST',
            dataType: 'json',
            data: $('.form-signin').serialize(),
            success: function (data) {
                if (!data.loginValido) {
                    $(".help-block-Login").hide().html('ERROR DE LOGIN').slideDown(500);
                } else {

                    document.location.href = "Controller?opID=Login";
                }
            }
        });
        return false;
    });
    /*BORRAR WISHLISTITEM EN AJAX PRUEBA*/
    $("").click(function () {
        $.ajax({
            url: 'WishListServlet',
            type: 'POST',
            dataType: 'json',
            data: $('.WishListItems').serialize(),
            success: function (data) {
                alert(data + "borrado");
            }

        });
    });


});