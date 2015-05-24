/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Entities;

import java.io.Serializable;

/**
 *
 * @author miguelangel
 */
public class Categoria implements Serializable {

    private Integer idCategoria;
    private String descripcion;
    private String Clasificacion;

    public Categoria() {
    }

    public Categoria(Integer idCategoria, String descripcion, String Clasificacion) {
        this.idCategoria = idCategoria;
        this.descripcion = descripcion;
        this.Clasificacion = Clasificacion;
    }

    /**
     * @return the idCategoria
     */
    public Integer getIdCategoria() {
        return idCategoria;
    }

    /**
     * @param idCategoria the idCategoria to set
     */
    public void setIdCategoria(Integer idCategoria) {
        this.idCategoria = idCategoria;
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
     * @return the Clasificacion
     */
    public String getClasificacion() {
        return Clasificacion;
    }

    /**
     * @param Clasificacion the Clasificacion to set
     */
    public void setClasificacion(String Clasificacion) {
        this.Clasificacion = Clasificacion;
    }

}
