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
import org.mig.java.BLL.TiendasBLL;
import org.mig.java.Entities.Imagenes_productos;
import org.mig.java.Entities.Tiendas;

/**
 *
 * @author miguelangel
 */
public class VerTiendaCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        TiendasBLL tiendasBll = new TiendasBLL();
        Tiendas tienda = new Tiendas();
        String cif = request.getParameter("tienda");
        ProductosBLL productosBll = new ProductosBLL();
        tienda.setCif(cif);

        tienda = tiendasBll.MostrarTienda(tienda);
        List<Imagenes_productos> listadoImagenesProductos = productosBll.listaImagenesProductos();
        request.setAttribute("listadoImagenesProductos", listadoImagenesProductos);
        request.getSession().setAttribute("tiendaPropietario", tienda);

        return "Tienda.jsp";
    }

}
