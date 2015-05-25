/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.PedidosBLL;
import org.mig.java.BLL.TiendasBLL;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;
import java.util.Date;
import java.util.List;
import org.mig.java.BLL.ProductosBLL;

/**
 *
 * @author administrator
 */
public class RealizarPedidoCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PedidosBLL pedidosBll = new PedidosBLL();
        ProductosBLL productoBll = new ProductosBLL();
        TiendasBLL tiendasBll = new TiendasBLL();
        Pedidos pedido = new Pedidos();
        Productos producto = new Productos();
        Tiendas tienda = new Tiendas();
        java.util.Date utilDate = new Date();

        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

        Usuarios usuario = (Usuarios) request.getSession().getAttribute("usuarioValido");

        String usuarioMail = usuario.getMail();
        String referenciaProducto = request.getParameter("referencia");

        producto.setReferencia(referenciaProducto);

        tienda = tiendasBll.MostrarTiendaProducto(producto);

        pedido.setFechaPedido(sqlDate);
        pedido.setMail(usuarioMail);
        pedido.setProductoReferencia(referenciaProducto);
        pedido.setTiendaCif(tienda.getCif());
        pedido.setNumFactura(0);
        pedido.setEstadoPedido("PEDIDO");

        pedidosBll.RealizarPedido(pedido);

        List<Pedidos> pedidos = pedidosBll.MostrarPedidos(usuario);
        List<Productos> listaProductosCarrito = productoBll.MostrarProductosCarrito(usuario);

        request.getSession().setAttribute("itemsCarrito", pedidos);
        request.getSession().setAttribute(("productosCarrito"), listaProductosCarrito);

        return "Content.jsp";
    }

}
