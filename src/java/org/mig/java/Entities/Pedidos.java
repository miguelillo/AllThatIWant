/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Entities;

import java.sql.Date;

/**
 *
 * @author miguelangel
 */
public class Pedidos {

    private String mail;
    private String productoReferencia;
    private String tiendaCif;
    private Date fechaPedido;
    private Date fechaConfirmacion;
    private Date fechaServicio;
    private int unidades;
    private int numFactura;
    private String estadoPedido;

    public Pedidos() {
    }

    public Pedidos(String mail, String productoReferencia, String tiendaCif, Date fechaPedido, Date fechaConfirmacion, Date fechaServicio, int unidades, int numFactura, String estadoPedido) {
        this.mail = mail;
        this.productoReferencia = productoReferencia;
        this.tiendaCif = tiendaCif;
        this.fechaPedido = fechaPedido;
        this.fechaConfirmacion = fechaConfirmacion;
        this.fechaServicio = fechaServicio;
        this.unidades = unidades;
        this.numFactura = numFactura;
        this.estadoPedido = estadoPedido;
    }

    /**
     * @return the mail
     */
    public String getMail() {
        return mail;
    }

    /**
     * @param mail the mail to set
     */
    public void setMail(String mail) {
        this.mail = mail;
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

    /**
     * @return the fechaPedido
     */
    public Date getFechaPedido() {
        return fechaPedido;
    }

    /**
     * @param fechaPedido the fechaPedido to set
     */
    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    /**
     * @return the fechaConfirmacion
     */
    public Date getFechaConfirmacion() {
        return fechaConfirmacion;
    }

    /**
     * @param fechaConfirmacion the fechaConfirmacion to set
     */
    public void setFechaConfirmacion(Date fechaConfirmacion) {
        this.fechaConfirmacion = fechaConfirmacion;
    }

    /**
     * @return the fechaServicio
     */
    public Date getFechaServicio() {
        return fechaServicio;
    }

    /**
     * @param fechaServicio the fechaServicio to set
     */
    public void setFechaServicio(Date fechaServicio) {
        this.fechaServicio = fechaServicio;
    }

    /**
     * @return the unidades
     */
    public int getUnidades() {
        return unidades;
    }

    /**
     * @param unidades the unidades to set
     */
    public void setUnidades(int unidades) {
        this.unidades = unidades;
    }

    /**
     * @return the numFactura
     */
    public int getNumFactura() {
        return numFactura;
    }

    /**
     * @param numFactura the numFactura to set
     */
    public void setNumFactura(int numFactura) {
        this.numFactura = numFactura;
    }

    /**
     * @return the estadoPedido
     */
    public String getEstadoPedido() {
        return estadoPedido;
    }

    /**
     * @param estadoPedido the estadoPedido to set
     */
    public void setEstadoPedido(String estadoPedido) {
        this.estadoPedido = estadoPedido;
    }

}
