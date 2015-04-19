/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Productos;

/**
 * @author miguelangel
 */
public class LogOutCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.getSession().setAttribute("clienteSesion", null);
        request.getSession().invalidate();
        
        //Lleno los articulos genericos
        ProductosBLL productosBll = new ProductosBLL();
        List<Productos> listaProductos = productosBll.MostrarProductos();

        request.getSession().setAttribute("listaProductos", listaProductos);
        return "Content.jsp";
    }

}
