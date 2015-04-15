/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.GsonServlets;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.UsuarioBLL;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author miguelangel
 */
@WebServlet("/LoginUsuario")
public class LoginUsuarioGson extends HttpServlet {

    public LoginUsuarioGson() {
        super();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Map<String, Object> map = new HashMap<>();
        boolean loginValido = false;
        UsuarioBLL usuarioBll = new UsuarioBLL();
        Usuarios usuario = new Usuarios();
        Usuarios sesion = null;
        String mail = request.getParameter("mail");
        String password = request.getParameter("password");

        usuario.setMail(mail);
        usuario.setPassword(password);

        try {
            sesion = usuarioBll.loginUsuario(usuario);
        } catch (Exception ex) {
            sesion = null;
        }

        if (sesion != null) {
            loginValido = true;
            map.put("mail", mail);
            map.put("password", password);
            request.getSession().setAttribute("usuarioValido", sesion);
        }
        map.put("loginValido", loginValido);
        write(response, map);
    }

    private void write(HttpServletResponse response, Map<String, Object> map) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(map));
    }

}
