/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Categoria;

/**
 *
 * @author miguelangel
 */
public class CrearProductosCommand extends ICommand {
    
    @Override
    public void initPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productosBll = new ProductosBLL();
        List<Categoria> categorias = productosBll.MostrarCategorias();
        String tiendaCif = request.getParameter("Tienda");
        
        request.setAttribute("tiendaCif", tiendaCif);
        request.setAttribute("categorias", categorias);
    }
    
    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return "FormularioProductoNuevo.jsp";
    }
    
}
