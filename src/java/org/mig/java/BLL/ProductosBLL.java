/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.BLL;

import java.util.List;
import org.mig.java.DAO.DAOFactory;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Entities.WishList;
import org.mig.java.Interfaces.IProductos;

/**
 * @author miguelangel
 */
public class ProductosBLL {

    public Productos mostrarProducto(Productos producto) {
        DAOFactory dAOFactory = DAOFactory.getInstance();

        IProductos daoProductos = dAOFactory.getProductosDAO();

        return daoProductos.mostrarProducto(producto);
    }

    public void insertarProducto(Productos producto, Tiendas tienda) {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        daoProductos.insertarProducto(producto, tienda);

    }

    public Integer cantidadWishItems(Usuarios usuario) {

        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        return daoProductos.cantidadProductosWishList(usuario);
    }

    public List<Productos> WishList(Usuarios usuario) {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        return daoProductos.mostrarWishList(usuario);
    }

    public void InsertarWishList(Productos producto, Usuarios usuario) {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        daoProductos.InsertarWishList(producto, usuario);

    }

    public List<Productos> MostrarProductos() {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        return daoProductos.mostrarProductos();

    }

    public void BorrarWishListItem(WishList wishListItem) {

        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        daoProductos.BorrarWishList(wishListItem);

    }

}
