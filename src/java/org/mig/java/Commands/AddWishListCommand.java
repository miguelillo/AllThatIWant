/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Productos;

/**
 *
 * @author miguelangel
 */
public class AddWishListCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Productos producto =  new Productos();
        ProductosBLL productosBll = new ProductosBLL();
        
        String referencia = request.getParameter("Referencia");
        
        producto.setReferencia(referencia);
        
        
        //productosBll.InsertarWishList(Productos);
        
        
        return "Content.jsp";
    }

}
