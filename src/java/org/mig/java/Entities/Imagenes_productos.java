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
public class Imagenes_productos {

    private String url;
    private int principal;
    private String prodReferencia;

    public Imagenes_productos() {
    }

    public Imagenes_productos(String url, int principal, String prodReferencia) {
        this.url = url;
        this.principal = principal;
        this.prodReferencia = prodReferencia;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the principal
     */
    public int getPrincipal() {
        return principal;
    }

    /**
     * @param principal the principal to set
     */
    public void setPrincipal(int principal) {
        this.principal = principal;
    }

    /**
     * @return the prodReferencia
     */
    public String getProdReferencia() {
        return prodReferencia;
    }

    /**
     * @param prodReferencia the prodReferencia to set
     */
    public void setProdReferencia(String prodReferencia) {
        this.prodReferencia = prodReferencia;
    }

}
