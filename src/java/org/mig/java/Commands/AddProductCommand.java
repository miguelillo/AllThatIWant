/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import java.io.File;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.mig.java.BLL.ProductosBLL;
import org.mig.java.Entities.Imagenes_productos;
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Tiendas;

/**
 *
 * @author miguelangel
 */
public class AddProductCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        ProductosBLL productosBll = new ProductosBLL();
        Tiendas tienda = new Tiendas();
        Productos producto = new Productos();
        java.util.Date utilDate = new Date();
        tienda = (Tiendas) request.getSession().getAttribute("tiendaPropietario");
        Imagenes_productos imagen = new Imagenes_productos();

        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
        try {

            String nombre = "";
            String referencia = "";
            int precio = 0;
            String descripcion = "";
            String color = "";
            String talla = "";
            String composicion = "";
            String categoria = "";

            String nomArchivo = "";

            String ruta = "/AllThatIWantImages/products/";
            FileItemFactory tmp = new DiskFileItemFactory();
            ServletFileUpload subida = new ServletFileUpload(tmp);
            subida.setSizeMax(30700000);  // Limita tamaño maximo del archivo a 30000Kb   
            File archivo = null;
            List listaItems = null;
            FileItem item = null;
            listaItems = subida.parseRequest(request);
            String rutaCompleta = "";

            int contador = 0;
            Iterator it = listaItems.iterator();
            while (it.hasNext()) {
                item = (FileItem) it.next();
                switch (contador) {
                    case 0:
                        nombre = item.getString();
                        break;
                    case 1:
                        referencia = item.getString();
                        break;
                    case 2:
                        categoria = item.getString();
                        break;
                    case 3:
                        precio = Integer.valueOf(item.getString());

                        break;
                    case 4:
                        descripcion = item.getString();
                        break;

                    case 5:
                        talla = item.getString();
                        break;
                    case 6:
                        composicion = item.getString();
                        break;

                    case 7:
                        if (!item.isFormField()) {
                            nomArchivo = item.getName();
                            rutaCompleta = ruta + nombre + referencia;
                            archivo = new File(rutaCompleta, nomArchivo);
                            archivo.getParentFile().mkdirs();
                            item.write(archivo);

                        }
                        break;

                }
                contador++;
            }

            producto.setReferencia(referencia);
            producto.setNombre(nombre);
            producto.setPrecio(precio);
            producto.setDescripcion(descripcion);
            producto.setColor(color);
            producto.setTalla(talla);
            producto.setComposicion(composicion);
            producto.setIdCategoria(Integer.valueOf(categoria));
            producto.setFechaCatalogo(sqlDate);

            imagen.setUrl(archivo.getPath().replaceAll(" ", "%20"));
            imagen.setProdReferencia(referencia);
            imagen.setPrincipal(1);

            productosBll.insertarProducto(producto, tienda, imagen);
        } catch (Exception ex) {
            System.out.println("Excepcion lanzada: " + ex);
        } finally {
            //out.close();
        }
        return "Tienda.jsp";
    }

}
