/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import java.io.File;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.mig.java.BLL.RegistroBLL;
import org.mig.java.Entities.Direcciones;
import org.mig.java.Entities.Telefonos;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Exceptions.DAOException;

/**
 * @author miguelangel
 */
@WebServlet("/upload")
@MultipartConfig
public class RegisterCommand extends ICommand {

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {

//        telefono.setNumero(Integer.valueOf(telefonoUsuario));
//        telefono.setUsuarioMail(email);
//        registroBll.RegistroUsuario(usuario, telefono, direccion);
//        String nombre = request.getParameter("name");
//        String apellido1 = request.getParameter("surname1");
//        String apellido2 = request.getParameter("surname2");
//        String sexo = request.getParameter("sexo");
//        String pais = request.getParameter("Pais");
//        String fechaNacimiento = request.getParameter("FechaNacimiento");
//
//        String userName = request.getParameter("nick");
//        String email = request.getParameter("mail");
//        String password = request.getParameter("password");
//
//        String telefonoUsuario = request.getParameter("phone");
//        String calle = request.getParameter("address");
//        String codPostal = request.getParameter("codPostal");
//        String poblacion = request.getParameter("poblacion");
//        String paisResidencia = request.getParameter("paisResidencia");
//
//        
        fileUpload(request);
        return "LoginUser.jsp";
    }

    private void fileUpload(HttpServletRequest request) throws FileUploadException, Exception {
        ServletContext servletContext = request.getServletContext();
        RegistroBLL registroBll = new RegistroBLL();
        Usuarios usuario = new Usuarios();
        Direcciones direccion = new Direcciones();
        Telefonos telefono = new Telefonos();

        try {

            String nombre = "";
            String apellido1 = "";
            String apellido2 = "";
            String sexo = "";
            String pais = "";
            String fechaNacimiento = "";
            String direccionUsuario = "";
            String email = "";

            String telefonoUsuario = "";
            String calle = "";
            String codPostal = "";
            String poblacion = "";
            String paisResidencia = "";

            String tipoArchivo = "";
            String nomArchivo = "";

            String userName = "";
            String password = "";
            String ruta = "/AllThatIWantImages/users/";
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
                        apellido1 = item.getString();
                        break;
                    case 2:
                        apellido2 = item.getString();
                        break;
                    case 3:
                        sexo = item.getString();
                        break;
                    case 4:
                        if (!item.isFormField()) {
                            tipoArchivo = item.getContentType();
                            // Podríamos filtrar el tipo de archivo, descomentarizando:          
//                          if (tipo.equalsIgnoreCase("image/jpeg")
//                                    || tipo.equalsIgnoreCase("image/png")
//                                  || tipo.equalsIgnoreCase("image/jpg")) {
                            nomArchivo = item.getName();
                            String rutaCompleta = ruta + nombre + apellido1 + apellido2;
                            archivo = new File(rutaCompleta, nomArchivo);
                            archivo.getParentFile().mkdirs();
                            item.write(archivo);
                            //}
                        }
                        break;

                    case 5:
                        fechaNacimiento = item.getString();
                        break;
                    case 6:
                        pais = item.getString();
                        break;

                    case 7:
                        email = item.getString();
                        break;
                    case 8:
                        direccionUsuario = item.getString();
                        break;
                    case 9:
                        telefonoUsuario = item.getString();
                        break;
                    case 10:
                        codPostal = item.getString();
                        break;
                    case 11:
                        poblacion = item.getString();
                        break;
                    case 12:
                        paisResidencia = item.getString();
                        break;
                    case 13:
                        userName = item.getString();
                        break;
                    case 14:
                        password = item.getString();
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

        } catch (DAOException ex) {
            throw new Exception(ex.getMessage());
        } catch (Exception ex) {
            throw new Exception("Ocurro un error durante el registro, revise los datos e intentelo de nuevo");

        }

    }
}
