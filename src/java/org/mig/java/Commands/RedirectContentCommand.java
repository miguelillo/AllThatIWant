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
import org.mig.java.Entities.Imagenes_productos;

/**
 *
 * @author Hildegard
 */
public class RedirectContentCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productosBll = new ProductosBLL();
        List<Imagenes_productos> listadoImagenesProductos = productosBll.listaImagenesProductos();
        request.setAttribute("listadoImagenesProductos", listadoImagenesProductos);
        return "Content.jsp";
    }

}
