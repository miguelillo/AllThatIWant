/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Imagenes_productos;

/**
 * @author miguelangel
 */
public class PersonalShopperCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productosBll = new ProductosBLL();
        List<Imagenes_productos> listadoImagenesProductos = productosBll.listaImagenesProductos();
        request.setAttribute("listadoImagenesProductos", listadoImagenesProductos);

        return "PersonalShopper.jsp";
    }

}
