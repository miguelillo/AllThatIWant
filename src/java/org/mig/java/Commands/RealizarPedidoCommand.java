/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.TiendasBLL;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author administrator
 */
public class RealizarPedidoCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        TiendasBLL tiendasBll = new TiendasBLL();
        Pedidos pedido = new Pedidos();
        Productos producto = new Productos();
        Tiendas tienda = new Tiendas();
        Usuarios usuario = (Usuarios) request.getSession().getAttribute("usuarioValido");
        
        String usuarioMail = usuario.getMail();
        String referenciaProducto = request.getParameter("referencia");
        
        producto.setReferencia(referenciaProducto);
        
        tienda = tiendasBll.MostrarTiendaProducto(producto);
        
        
        
        pedido.setMail(usuarioMail);
        pedido.setProductoReferencia(referenciaProducto);
        pedido.setTiendaCif(tienda.getCif());
        
       // pedido.setUnidades(null);
        
        pedido.setFechaConfirmacion(null);
        pedido.setFechaPedido(null);
        pedido.setFechaServicio(null);
        
        pedido.setEstadoPedido(usuarioMail);
        
        //pedido.setNumFactura(numFactura);
        
        
        
        
        
        
        
        

        return "Content.jsp";
    }

}
