/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Presentacion;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.Commands.ICommand;

/**
 *
 * @author miguelangel
 */
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pagina = null;
        ICommand command = null;
        try {
            String opcion = request.getParameter("opID");

            if (opcion.equals("RedirectNewRegister") || opcion.equals("RedirectRegister")) {
                if (request.getSession().getAttribute("clienteSesion") != null) {
                    throw new Exception("Debes estar Logeado para ver el contenido");
                }
            }

//            if (!opcion.equals("Login") && !opcion.equals("Registro")) {
//                if (request.getSession().getAttribute("clienteSesion") == null) {
//                    throw new Exception("Debes estar Logeado para ver el contenido");
//                }
//            }

            command = (ICommand) Class.forName("org.mig.java.Commands." + opcion + "Command").newInstance();

            command.initPage(request, response);

            pagina = command.executePage(request, response);

            request.setAttribute("pagina", pagina);
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            request.setAttribute("error", ex.getMessage());
            request.setAttribute("pagina", pagina);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
