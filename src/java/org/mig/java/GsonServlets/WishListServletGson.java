/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.GsonServlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Entities.WishList;

/**
 *
 * @author miguelangel
 */
@WebServlet("/WishListServlet")
public class WishListServletGson extends HttpServlet {

    public WishListServletGson() {
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
        ProductosBLL productoBll = new ProductosBLL();
        WishList wishList = new WishList();
        List<Productos> listaWishItems = new ArrayList<>();
        Usuarios sesion = (Usuarios) request.getSession().getAttribute("clienteSesion");

        request.getSession().setAttribute("listaWish", listaWishItems);

        String usuarioActual = sesion.getMail();
        String productoActual = request.getParameter("Referencia");

        wishList.setProducto(productoActual);
        wishList.setUsuario(usuarioActual);

        listaWishItems = productoBll.WishList(sesion);

        productoBll.BorrarWishListItem(wishList);
    }

    private void write(HttpServletResponse response, Map<String, Object> map) throws IOException {

    }
}
