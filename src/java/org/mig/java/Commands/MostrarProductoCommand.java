/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Productos;

/**
 * @author miguelangel
 */
public class MostrarProductoCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String referencia = request.getParameter("Referencia");
        Productos productoRecibido = new Productos();

        ProductosBLL productosBll = new ProductosBLL();
        productoRecibido.setReferencia(referencia);
        
        Productos producto = productosBll.mostrarProducto(productoRecibido);

        request.setAttribute("MostrarProducto", producto);

        return "Product.jsp";
    }

}
