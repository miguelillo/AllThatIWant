/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author miguelangel
 */
public class RegisterCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String nombre = request.getParameter("name");
        String apellido1 = request.getParameter("surname1");
        String apellido2 = request.getParameter("surname2");
        String sexo = request.getParameter("sexo");
        String fechaNacimiento = request.getParameter("FechaNacimiento");
        String pais = request.getParameter("pais");
        String password = request.getParameter("password");
        String direccion = request.getParameter("address");
        String telefono = request.getParameter("phone");
        String codPostal = request.getParameter("codPostal");
        String poblacion = request.getParameter("poblacion");
        String paisResidencia = request.getParameter("paisResiencia");

        return "InfoRegistro.jsp";
    }

}
