/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author miguelangel
 */
public class AddWishListCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Productos producto = new Productos();
        ProductosBLL productosBll = new ProductosBLL();
        Usuarios usuario = (Usuarios) request.getSession().getAttribute("clienteSesion");

        String referencia = request.getParameter("Referencia");

        producto.setReferencia(referencia);

        productosBll.InsertarWishList(producto, usuario);

        int cantidadWishItems = productosBll.cantidadWishItems(usuario);

        request.getSession().setAttribute("cantidadWishItems", cantidadWishItems);

        return "Content.jsp";
    }

}
