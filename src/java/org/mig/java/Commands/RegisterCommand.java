/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import java.sql.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.RegistroBLL;
import org.mig.java.Entities.Direcciones;
import org.mig.java.Entities.Telefonos;
import org.mig.java.Entities.Usuarios;

/**
 * @author miguelangel
 */
public class RegisterCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        RegistroBLL registroBll = new RegistroBLL();
        Usuarios usuario = new Usuarios();
        Direcciones direccion = new Direcciones();
        Telefonos telefono = new Telefonos();

        String nombre = request.getParameter("name");
        String apellido1 = request.getParameter("surname1");
        String apellido2 = request.getParameter("surname2");
        String sexo = request.getParameter("sexo");
        String pais = request.getParameter("pais");
        String fechaNacimiento = request.getParameter("FechaNacimiento");

        String userName = request.getParameter("nick");
        String email = request.getParameter("mail");
        String password = request.getParameter("password");

        String telefonoUsuario = request.getParameter("phone");
        String calle = request.getParameter("address");
        String codPostal = request.getParameter("codPostal");
        String poblacion = request.getParameter("poblacion");
        String paisResidencia = request.getParameter("paisResidencia");

        usuario.setMail(email);
        usuario.setUserName(userName);
        usuario.setPassword(password);
        usuario.setNombre(nombre);
        usuario.setApellido1(apellido1);
        usuario.setApellido2(apellido2);
        usuario.setPerfil("C");
        usuario.setSexo(sexo);
        usuario.setFechaNacimiento(Date.valueOf(fechaNacimiento));
        usuario.setPais(pais);
        usuario.setImagenUrl("");

        direccion.setCodPostal(Integer.valueOf(codPostal));
        direccion.setPoblacion(poblacion);
        direccion.setDireccion(calle);
        direccion.setUsuarioMail(email);
        direccion.setPais(paisResidencia);

        telefono.setNumero(Integer.valueOf(telefonoUsuario));
        telefono.setUsuarioMail(email);

        return "InfoRegistro.jsp";
    }

}
