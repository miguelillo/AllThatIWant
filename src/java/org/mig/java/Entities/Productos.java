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
    private String estado_pedido;

    public Productos(String referencia, int precio, String nombre, String descripcion, String color, String talla, String composicion, int sexo, int idCategoria, Date fechaCatalogo, String estado_pedido) {
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
        this.estado_pedido = estado_pedido;
    }

    public Productos() {
    }

    /**
     * @return the referencia
     */
    public String getReferencia() {
        return referencia;
    }

    /**
     * @param referencia the referencia to set
     */
    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    /**
     * @return the precio
     */
    public int getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(int precio) {
        this.precio = precio;
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
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the color
     */
    public String getColor() {
        return color;
    }

    /**
     * @param color the color to set
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * @return the talla
     */
    public String getTalla() {
        return talla;
    }

    /**
     * @param talla the talla to set
     */
    public void setTalla(String talla) {
        this.talla = talla;
    }

    /**
     * @return the composicion
     */
    public String getComposicion() {
        return composicion;
    }

    /**
     * @param composicion the composicion to set
     */
    public void setComposicion(String composicion) {
        this.composicion = composicion;
    }

    /**
     * @return the sexo
     */
    public int getSexo() {
        return sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(int sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the idCategoria
     */
    public int getIdCategoria() {
        return idCategoria;
    }

    /**
     * @param idCategoria the idCategoria to set
     */
    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    /**
     * @return the fechaCatalogo
     */
    public Date getFechaCatalogo() {
        return fechaCatalogo;
    }

    /**
     * @param fechaCatalogo the fechaCatalogo to set
     */
    public void setFechaCatalogo(Date fechaCatalogo) {
        this.fechaCatalogo = fechaCatalogo;
    }

    /**
     * @return the estado_pedido
     */
    public String getEstado_pedido() {
        return estado_pedido;
    }

    /**
     * @param estado_pedido the estado_pedido to set
     */
    public void setEstado_pedido(String estado_pedido) {
        this.estado_pedido = estado_pedido;
    }

}
