/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Entities;

/**
 *
 * @author miguelangel
 */
public class ProductosTiendas {

    private String productoReferencia;
    private String tiendaCif;

    public ProductosTiendas() {
    }

    public ProductosTiendas(String productoReferencia, String tiendaCif) {
        this.productoReferencia = productoReferencia;
        this.tiendaCif = tiendaCif;
    }

    /**
     * @return the productoReferencia
     */
    public String getProductoReferencia() {
        return productoReferencia;
    }

    /**
     * @param productoReferencia the productoReferencia to set
     */
    public void setProductoReferencia(String productoReferencia) {
        this.productoReferencia = productoReferencia;
    }

    /**
     * @return the tiendaCif
     */
    public String getTiendaCif() {
        return tiendaCif;
    }

    /**
     * @param tiendaCif the tiendaCif to set
     */
    public void setTiendaCif(String tiendaCif) {
        this.tiendaCif = tiendaCif;
    }

}
