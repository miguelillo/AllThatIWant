/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Interfaces;

import java.util.List;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author miguelangel
 */
public interface IPedidos {

    public void RealizarPedido(Pedidos pedido);

    public List<Pedidos> MostrarPedidos(Usuarios usuario);
    
    public void BorrarProductoPedido(Pedidos pedido);
    
    public void RealizarCompraPedidos(List<Productos> productos);

}
