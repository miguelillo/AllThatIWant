/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import java.io.File;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.net.URL;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.jcmg.hibernate.entities.User;
import org.mig.java.BLL.RegistroBLL;
import org.mig.java.Entities.Direcciones;
import org.mig.java.Entities.Telefonos;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author miguelangel
 */
public class AddProductCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ServletContext servletContext = request.getServletContext();
        RegistroBLL registroBll = new RegistroBLL();
        Usuarios usuario = new Usuarios();
        Direcciones direccion = new Direcciones();
        Telefonos telefono = new Telefonos();

        try {

            String nombre = "";
            String referencia = "";
            int precio;
            String productoNombre = "";
            String descripcion = "";
            String color = "";
            String talla = "";
            String composicion = "";
            String categoria = "";

            String tipoArchivo = "";
            String nomArchivo = "";

            String userName = "";
            String password = "";
            String ruta = "/AllThatIWantImages/products/";
            FileItemFactory tmp = new DiskFileItemFactory();
            ServletFileUpload subida = new ServletFileUpload(tmp);
            subida.setSizeMax(30700000);  // Limita tamaño maximo del archivo a 30000Kb   
            File archivo = null;
            List listaItems = null;
            FileItem item = null;
            listaItems = subida.parseRequest(request);

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
                            tipoArchivo = item.getContentType();

                            nomArchivo = item.getName();
                            String rutaCompleta = ruta + nombre + referencia;
                            archivo = new File(rutaCompleta, nomArchivo);
                            archivo.getParentFile().mkdirs();
                            item.write(archivo);
                            //}
                        }
                        break;

                }
                contador++;
            }

            usuario.setMail(email);
            usuario.setUserName(userName);
            usuario.setPassword(password);
            usuario.setNombre(nombre);
            usuario.setApellido1(apellido1);
            usuario.setApellido2(apellido2);
            usuario.setPerfil("C");
            usuario.setSexo(sexo);
            usuario.setFechaNacimiento(Date.valueOf(fechaNacimiento));
            usuario.setPais(pais);
            usuario.setImagenUrl(archivo.getPath());

            direccion.setCodPostal(Integer.valueOf(codPostal));
            direccion.setPoblacion(poblacion);
            direccion.setDireccion(calle);
            direccion.setUsuarioMail(email);
            direccion.setPais(paisResidencia);

            telefono.setNumero(Integer.valueOf(telefonoUsuario));
            telefono.setUsuarioMail(email);

            registroBll.RegistroUsuario(usuario, telefono, direccion);
        } catch (Exception ex) {
            System.out.println("Excepcion lanzada: " + ex);
        } finally {
            //out.close();
        }
        return "Tienda.jsp";
    }

}
