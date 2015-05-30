/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Entities;

import java.io.Serializable;
import java.util.Collection;

/**
 * @author miguelangel
 */
public class Tiendas implements Serializable {

    private String cif;
    private String nombre;
    private Usuarios usuarioMail;
    private String urlImagen;

    public Tiendas(String cif, String nombre, Usuarios usuarioMail, String urlImagen) {
        this.cif = cif;
        this.nombre = nombre;
        this.usuarioMail = usuarioMail;
        this.urlImagen = urlImagen;
    }

    public Tiendas() {
    }

    /**
     * @return the cif
     */
    public String getCif() {
        return cif;
    }

    /**
     * @param cif the cif to set
     */
    public void setCif(String cif) {
        this.cif = cif;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the usuarioMail
     */
    public Usuarios getUsuarioMail() {
        return usuarioMail;
    }

    /**
     * @param usuarioMail the usuarioMail to set
     */
    public void setUsuarioMail(Usuarios usuarioMail) {
        this.usuarioMail = usuarioMail;
    }

    /**
     * @return the urlImagen
     */
    public String getUrlImagen() {
        return urlImagen;
    }

    /**
     * @param urlImagen the urlImagen to set
     */
    public void setUrlImagen(String urlImagen) {
        this.urlImagen = urlImagen;
    }

}
