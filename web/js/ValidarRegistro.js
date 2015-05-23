/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var userExp = /^([a-zA-Z0-9]{1,10})$/;
var passExp = /^(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,20})$/;
var regexFechaExp = /^(19|20)\d\d([- /.])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$/;
var apellidoExp = /^[A-Za-z0-9_-]{3,15}$/;
var nombreExp = /^[A-Za-z]+(\s[A-Za-z]+)*$/;
var emailExp = /^([\da-z_\.-]+)@([\da-záéíóú\.-]+)\.([a-záéíóú\.]{2,6})$/;
var codigoPostalExp = /^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$/;
var telefono = /^[9|6]{1}([\d]{2}[-]*){3}[\d]{2}$/;
var direccion = /^[A-Za-z]+(\s[A-Za-z]+)*[1-9]$/;
var contador = 1;
var fallo = true;
var errores = new Array();
var contador = 0;
var erroresString;

function nombre(input) {
    var inputNombre = document.getElementById(input);
    if (inputNombre.value.match(nombreExp)) {
        inputNombre.style.backgroundColor = '#7DFF7D';

    } else {
        errores[contador] = "El nombre no es correcto, nombres simples no compuestos";
        contador++;
        inputNombre.className += " formInvalid";
        inputNombre.style.backgroundColor = 'WHITE';
        fallo = false;
    }
}


function email1() {
    var inputMail = document.getElementById("email");
    if (inputMail.value.match(emailExp)) {
        inputMail.style.backgroundColor = '#7DFF7D';

    } else {

        errores[contador] = "Email Incorrecto";
        contador++;
        inputNombre.className += " formInvalid";
        fallo = false;
    }
}

function direccion1() {
    var inputDireccion = document.getElementById("direccion");

    if (inputDireccion.value.match(nombreExp)) {
        inputDireccion.style.backgroundColor = '#7DFF7D';

    } else {
        errores[contador] = "El nombre no es correcto, nombres simples no compuestos";
        contador++;
        inputDireccion.className += " formInvalid";
        inputDireccion.style.backgroundColor = 'WHITE';
        fallo = false;
    }
}

function validarPassword() {

    var inputPassword = document.getElementById("password1");
    var inputPassword2 = document.getElementById("password2");



    if (inputPassword.value !== inputPassword2.value) {
        errores[contador] = "La Contraseña es invalida";
        contador++;
        inputPassword.className += " formInvalid";
        inputPassword.style.backgroundColor = 'red';
        inputPassword2.className += " formInvalid";
        inputPassword2.style.backgroundColor = 'red';
        fallo = false;
    } else {
        inputPassword.style.backgroundColor = '#7DFF7D';
        inputPassword2.style.backgroundColor = '#7DFF7D';
    }


}

function validarTelefonos1() {
    var inputMovil = document.getElementById("phone");


    if (!inputMovil.value.match(telefono)) {
        errores[contador] = "Debe haber un telefono";
        contador++;
        inputMovil.className += " formInvalid";
        inputMovil.style.backgroundColor = 'WHITE';
        fallo = false;
    } else {
        inputMovil.style.backgroundColor = '#7DFF7D';
    }
}


function codigoPostal() {
    var inputCodigoPostal = document.getElementById("codPostal");
    if (inputCodigoPostal.value.match(codigoPostalExp)) {
        inputCodigoPostal.style.backgroundColor = '#7DFF7D';

    } else {
        inputCodigoPostal.style.backgroundColor = "red";
        errores[contador] = "El Codigo Postal esta mal escrito";
        contador++;

        inputCodigoPostal.className += " formInvalid";
        inputCodigoPostal.style.backgroundColor = 'WHITE';
        fallo = false;
    }

}