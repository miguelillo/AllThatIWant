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

/**
 *
 * @author miguelangel
 */
public class MostrarProductosCatalogoCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Productos> productosPorCategoria;
        ProductosBLL productosBll = new ProductosBLL();
        Integer categoria = Integer.valueOf(request.getParameter("Categoria"));
        String nombreCategoria = request.getParameter("nombreCategoria");
        productosPorCategoria = productosBll.mostrarProductosCategoria(categoria);

        int numeroRegistros = 6;
        int numeroPagina;
        int operacion;
        try {
            numeroPagina = (Integer) request.getSession().getAttribute("pagina");
        } catch (Exception e) {
            numeroPagina = 1;
        }

        try {
            operacion = Integer.parseInt(request.getParameter("Operacion"));
        } catch (Exception ex) {
            operacion = 1;

        }

        int limite = productosPorCategoria.size();
        int calcularPaginas = limite / numeroRegistros;

        //si queda registro libe
        if (productosPorCategoria.size() % numeroRegistros != 0) {
            calcularPaginas++;
        }

        // 1 = Primera
        // 2 = Atras
        // 3 = Pagina directa
        // 4 = Siguiente
        // 5 = Ultima
        switch (operacion) {
            case 1:
                numeroPagina = 1;
                break;
            case 2:
                numeroPagina = numeroPagina - 1;
                break;
            case 3:
                numeroPagina = Integer.valueOf(request.getParameter("paginaDirecta"));
                //numeroPagina++;
                break;
            case 4:
                numeroPagina++;
                break;
            case 5:
                numeroPagina = calcularPaginas;
                break;
        }

        int mostrarRegistros = (numeroRegistros * numeroPagina) - numeroRegistros;
        int finMostrar = numeroRegistros * numeroPagina;

        List<Productos> productosPorCategoriaParaPasar = new ArrayList<>();
        for (int i = mostrarRegistros; i < finMostrar && i < productosPorCategoria.size(); i++) {
            productosPorCategoriaParaPasar.add(productosPorCategoria.get(i));
        }
         List<Imagenes_productos> listadoImagenesProductos = productosBll.listaImagenesProductos();
        request.setAttribute("listadoImagenesProductos", listadoImagenesProductos);
        request.getSession().setAttribute("categoriaID", categoria);
        request.getSession().setAttribute("ultimaPagina", calcularPaginas);
        request.getSession().setAttribute("pagina", numeroPagina);
        request.setAttribute("productosPaginados", productosPorCategoriaParaPasar);
        request.setAttribute("nombreCategoria", nombreCategoria);
        request.setAttribute("productoCategoria", productosPorCategoria);

        return "CatalogoCategoria.jsp";
    }

}
