/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Entities;

import java.io.Serializable;
import java.sql.Date;

/**
 * @author miguelangel
 */
public class Productos implements Serializable {

    private String referencia;
    private int precio;
    private String nombre;
    private String descripcion;
    private String color;
    private String talla;
    private String composicion;
    private int sexo;
    private int idCategoria;
    private Date fechaCatalogo;

    public Productos() {
    }

    public Productos(String referencia, int precio, String nombre, String descripcion, String color, String talla, String composicion, int sexo, int idCategoria, Date fechaCatalogo) {
        this.referencia = referencia;
        this.precio = precio;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.color = color;
        this.talla = talla;
        this.composicion = composicion;
        this.sexo = sexo;
        this.idCategoria = idCategoria;
        this.fechaCatalogo = fechaCatalogo;
    }

    public String getColor() {
        return color;
    }

    public String getComposicion() {
        return composicion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public int getPrecio() {
        return precio;
    }

    public String getReferencia() {
        return referencia;
    }

    public int getSexo() {
        return sexo;
    }

    public String getTalla() {
        return talla;
    }

    public Date getFechaCatalogo() {
        return fechaCatalogo;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setComposicion(String composicion) {
        this.composicion = composicion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public void setSexo(int sexo) {
        this.sexo = sexo;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public void setFechaCatalogo(Date fechaCatalogo) {
        this.fechaCatalogo = fechaCatalogo;
    }
}
