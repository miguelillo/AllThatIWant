/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.BLL;

import java.util.ArrayList;
import java.util.List;
import org.mig.java.DAO.DAOFactory;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Interfaces.IPedidos;

/**
 *
 * @author miguelangel
 */
public class PedidosBLL {

    public void RealizarPedido(Pedidos pedido) {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IPedidos pedidosDao = daoFactory.getPedidosDAO();

        pedidosDao.RealizarPedido(pedido);

    }

    public List<Pedidos> MostrarPedidos(Usuarios usuario) {
        List<Pedidos> pedidos = new ArrayList<>();

        DAOFactory daoFactory = DAOFactory.getInstance();

        IPedidos pedidosDao = daoFactory.getPedidosDAO();

        pedidos = pedidosDao.MostrarPedidos(usuario);

        return pedidos;
    }
    
    public void BorrarPedido(Pedidos pedido){
        DAOFactory daoFactory = DAOFactory.getInstance();
        
        IPedidos pedidos = daoFactory.getPedidosDAO();
        
        pedidos.BorrarProductoPedido(pedido);
    }

}
