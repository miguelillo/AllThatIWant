/* 
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */

(function () {
    "use strict";


    document.getElementById("myBtn").addEventListener("click", function () {
        var ValidarInfoPersonal = function () {
            var paramObj = {};
            alert(paramObj);
            $.each($("#personalForm").serializeArray(), function (_, kv) {
                paramObj[kv.name] = kv.value;
            });
        };
    });

})();
