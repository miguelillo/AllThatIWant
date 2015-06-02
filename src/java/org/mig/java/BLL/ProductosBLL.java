/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.BLL;

import java.util.List;
import org.mig.java.DAO.DAOFactory;
import org.mig.java.Entities.Categoria;
import org.mig.java.Entities.Imagenes_productos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Entities.WishList;
import org.mig.java.Interfaces.IProductos;

/**
 * @author miguelangel
 */
public class ProductosBLL {

    public List<Imagenes_productos> listaImagenesProductos() {
        List<Imagenes_productos> listaImagenes;
        DAOFactory dAOFactory = DAOFactory.getInstance();

        IProductos daoProductos = dAOFactory.getProductosDAO();

        listaImagenes = daoProductos.mostrarImagenesProductos();

        return listaImagenes;
    }

    public Productos mostrarProducto(Productos producto) {
        DAOFactory dAOFactory = DAOFactory.getInstance();

        IProductos daoProductos = dAOFactory.getProductosDAO();

        return daoProductos.mostrarProducto(producto);
    }

    public void insertarProducto(Productos producto, Tiendas tienda, Imagenes_productos imagen) {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        daoProductos.insertarProducto(producto, tienda, imagen);

    }

    public List<Productos> mostrarProductosUsuario() {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos daoProductos = daoFactory.getProductosDAO();

        return daoProductos.mostrarProductosUsuario(null);

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

    public List<Productos> MostrarProductosCarrito(Usuarios usuario) {
        DAOFactory daoFactory = DAOFactory.getInstance();
        List<Productos> listaProductosPedido;

        IProductos daoProductos = daoFactory.getProductosDAO();

        listaProductosPedido = daoProductos.mostrarProductoPedido(usuario);

        return listaProductosPedido;
    }

    public List<Categoria> MostrarCategorias() {
        DAOFactory daoFactory = DAOFactory.getInstance();
        List<Categoria> categorias;

        IProductos daoProductos = daoFactory.getProductosDAO();

        categorias = daoProductos.mostrarCategoriasProducto();

        return categorias;
    }

    public List<Categoria> MostrarGrupoClasificacion() {
        DAOFactory daoFactory = DAOFactory.getInstance();

        List<Categoria> clasificacion;

        IProductos daoProductos = daoFactory.getProductosDAO();

        clasificacion = daoProductos.clasificacionProductos();

        return clasificacion;
    }

    public List<Productos> mostrarProductosCategoria(Integer categoria) {

        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos productosDao = daoFactory.getProductosDAO();

        return productosDao.mostrarProductosCategoria(categoria);

    }

    public Categoria categoriaProducto(Integer categoria) {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IProductos productosDao = daoFactory.getProductosDAO();

        return productosDao.mostrarCategoriaProducto(categoria);
    }

    public List<Productos> MostrarHistorialProductosPedidos(Usuarios usuario) {
        DAOFactory daoFactory = DAOFactory.getInstance();
        List<Productos> listaProductosPedido;

        IProductos daoProductos = daoFactory.getProductosDAO();

        listaProductosPedido = daoProductos.mostrarHistorialProductos(usuario);

        return listaProductosPedido;
    }
}
