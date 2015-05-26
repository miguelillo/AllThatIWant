/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
 *
 * @author miguelangel
 */
public class ConfirmarPedidoCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PedidosBLL pedidosBll = new PedidosBLL();
        ProductosBLL productoBll = new ProductosBLL();
        Usuarios usuario = (Usuarios) request.getSession().getAttribute("usuarioValido");
        List<Productos> productosPedidos = (List<Productos>) request.getSession().getAttribute("productosCarrito");

        pedidosBll.ConfirmarProductosPedidos(productosPedidos);

        List<Pedidos> pedidos = pedidosBll.MostrarPedidos(usuario);
        List<Productos> listaProductosCarrito = productoBll.MostrarProductosCarrito(usuario);

        request.getSession().setAttribute("itemsCarrito", pedidos);
        request.getSession().setAttribute(("productosCarrito"), listaProductosCarrito);

        return "Content.jsp";
    }

}
