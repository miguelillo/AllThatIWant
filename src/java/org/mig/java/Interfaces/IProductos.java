/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Interfaces;

import java.util.List;
import org.mig.java.Entities.Categoria;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Entities.WishList;

/**
 *
 * @author miguelangel
 */
public interface IProductos {

    public List<Productos> mostrarProductos();

    public List<Productos> mostrarProductosUsuario(Usuarios usuario);

    public void insertarProducto(Productos producto, Tiendas tienda);

    public void borrarProducto(Productos producto, Tiendas tienda);

    public Productos buscarProducto(Productos producto);

    public void modificarProducto(Productos producto);

    public Integer cantidadProductosWishList(Usuarios usuario);

    public List<Productos> mostrarWishList(Usuarios usuario);

    public void InsertarWishList(Productos producto, Usuarios usuario);

    public void BorrarWishList(WishList wishListItem);

    public Productos mostrarProducto(Productos producto);

    public List<Productos> mostrarProductoPedido(Usuarios usuario);

    public List<Categoria> mostrarCategoriasProducto();

    public List<Categoria> clasificacionProductos();

    public List<Productos> mostrarProductosCategoria(Integer categoria);

    public Categoria mostrarCategoriaProducto(Integer idCategoria);

    public List<Productos> mostrarHistorialProductos(Usuarios usuario);

}
