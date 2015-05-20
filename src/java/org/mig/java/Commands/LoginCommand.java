/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.PedidosBLL;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Usuarios;

/**
 * @author miguelangel
 */
public class LoginCommand extends ICommand {

    @Override
    public void initPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productosBll = new ProductosBLL();
        PedidosBLL pedidosBll = new PedidosBLL();
        Usuarios usuario = (Usuarios) request.getSession().getAttribute("usuarioValido");
        int cantidadWishItems = productosBll.cantidadWishItems(usuario);

        List<Pedidos> pedidos = pedidosBll.MostrarPedidos(usuario);
        List<Productos> listaProductosCarrito = productosBll.MostrarProductosCarrito(usuario);

        request.getSession().setAttribute("itemsCarrito", pedidos);
        request.getSession().setAttribute(("productosCarrito"), listaProductosCarrito);
        request.getSession().setAttribute("cantidadWishItems", cantidadWishItems);

    }

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {

        Usuarios sesion = (Usuarios) request.getSession().getAttribute("usuarioValido");

        request.getSession().setAttribute("clienteSesion", sesion);

        return "Content.jsp";
    }

}
