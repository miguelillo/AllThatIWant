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
import org.mig.java.Entities.Imagenes_productos;
import org.mig.java.Entities.Productos;

/**
 * @author miguelangel
 */
public class LogOutCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productosBll = new ProductosBLL();
        request.getSession().setAttribute("clienteSesion", null);
        request.getSession().invalidate();
        List<Productos> listaProductosUsuario = productosBll.mostrarProductosUsuario();
        request.getSession().setAttribute("listaProductosUsuario", listaProductosUsuario);
        //Lleno los articulos genericos
        List<Productos> listaProductos = productosBll.MostrarProductos();
        List<Imagenes_productos> listadoImagenesProductos = productosBll.listaImagenesProductos();
        request.setAttribute("listadoImagenesProductos", listadoImagenesProductos);
        request.getSession().setAttribute("listaProductos", listaProductos);
        return "Content.jsp";
    }

}
