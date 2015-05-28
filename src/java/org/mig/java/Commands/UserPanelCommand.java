/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.UsuarioBLL;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author miguelangel
 */
public class UserPanelCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Usuarios usuario = new Usuarios();

        UsuarioBLL usuarioBll = new UsuarioBLL();
        usuario = (Usuarios) request.getSession().getAttribute("usuarioValido");

        usuario = usuarioBll.MostrarUsuario(usuario);

        request.setAttribute("showUser", usuario);

        return "UserPanel.jsp";
    }

}
