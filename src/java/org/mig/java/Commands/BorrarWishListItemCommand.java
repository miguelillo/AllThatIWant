/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Imagenes_productos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Entities.WishList;

/**
 *
 * @author miguelangel
 */
public class BorrarWishListItemCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ProductosBLL productoBll = new ProductosBLL();
        WishList wishList = new WishList();
        List<Productos> listaWishItems = new ArrayList<>();
        Usuarios sesion = (Usuarios) request.getSession().getAttribute("clienteSesion");

        request.getSession().setAttribute("listaWish", listaWishItems);

        String usuarioActual = sesion.getMail();
        String productoActual = request.getParameter("Referencia");

        wishList.setProducto(productoActual);
        wishList.setUsuario(usuarioActual);

        productoBll.BorrarWishListItem(wishList);

        //refresco la lista de items.
        int cantidadWishItems = productoBll.cantidadWishItems(sesion);

        request.getSession().setAttribute("cantidadWishItems", cantidadWishItems);

        listaWishItems = productoBll.WishList(sesion);

        List<Imagenes_productos> listadoImagenesProductos = productoBll.listaImagenesProductos();
        request.setAttribute("listadoImagenesProductos", listadoImagenesProductos);
        request.getSession().setAttribute("listaWish", listaWishItems);

        return "WishList.jsp";
    }

}
