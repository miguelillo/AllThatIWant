/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.BLL.UsuarioBLL;
import org.mig.java.Entities.Usuarios;

/**
 * @author miguelangel
 */
public class LoginCommand extends ICommand {
    
    @Override
    public void initPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productosBll = new ProductosBLL();
        Usuarios usuario = (Usuarios) request.getSession().getAttribute("usuarioValido");
        int cantidadWishItems = productosBll.cantidadWishItems(usuario);

        request.getSession().setAttribute("cantidadWishItems", cantidadWishItems);
    }
    
    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        UsuarioBLL usuarioBll = new UsuarioBLL();
        
        Usuarios sesion = (Usuarios) request.getSession().getAttribute("usuarioValido");
        
        request.getSession().setAttribute("clienteSesion", sesion);
        
        return "Content.jsp";
    }
    
}
