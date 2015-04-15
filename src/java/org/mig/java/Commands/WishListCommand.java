/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Usuarios;

/**
 * @author miguelangel
 */
public class WishListCommand extends ICommand {
    
    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productoBll = new ProductosBLL();
        Usuarios usuario = (Usuarios) request.getSession().getAttribute("clienteSesion");
        List<Productos> listaWishItems = new ArrayList<>();
        
        listaWishItems = productoBll.WishList(usuario);
        
        request.getSession().setAttribute("listaWish", listaWishItems);
        
        return "WishList.jsp";
    }
    
}
