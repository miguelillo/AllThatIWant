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
public class CatalogoCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProductosBLL productosBll = new ProductosBLL();
        List<Categoria> clasificaciones = productosBll.MostrarGrupoClasificacion();
        List<Categoria> categorias = productosBll.MostrarCategorias();

        request.setAttribute("clasificacion", clasificaciones);
        request.setAttribute("categorias", categorias);
        return "Catalogo.jsp";
    }

}
