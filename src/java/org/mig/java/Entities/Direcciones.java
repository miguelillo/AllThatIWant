/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Entities;

import java.io.Serializable;

/**
 * @author miguelangel
 */
public class Direcciones implements Serializable {

    private String usuarioMail;
    private String direccion;
    private int numero;
    private int puerta;
    private Integer escalera;
    private String poblacion;
    private int codPostal;
    private Usuarios usuarios;
    private String Pais;

    public Direcciones(String usuarioMail, String direccion, int numero, int puerta, Integer escalera, String poblacion, int codPostal, Usuarios usuarios, String Pais) {
        this.usuarioMail = usuarioMail;
        this.direccion = direccion;
        this.numero = numero;
        this.puerta = puerta;
        this.escalera = escalera;
        this.poblacion = poblacion;
        this.codPostal = codPostal;
        this.usuarios = usuarios;
        this.Pais = Pais;
    }

    public Direcciones() {
    }

    /**
     * @return the usuarioMail
     */
    public String getUsuarioMail() {
        return usuarioMail;
    }

    /**
     * @param usuarioMail the usuarioMail to set
     */
    public void setUsuarioMail(String usuarioMail) {
        this.usuarioMail = usuarioMail;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the numero
     */
    public int getNumero() {
        return numero;
    }

    /**
     * @param numero the numero to set
     */
    public void setNumero(int numero) {
        this.numero = numero;
    }

    /**
     * @return the puerta
     */
    public int getPuerta() {
        return puerta;
    }

    /**
     * @param puerta the puerta to set
     */
    public void setPuerta(int puerta) {
        this.puerta = puerta;
    }

    /**
     * @return the escalera
     */
    public Integer getEscalera() {
        return escalera;
    }

    /**
     * @param escalera the escalera to set
     */
    public void setEscalera(Integer escalera) {
        this.escalera = escalera;
    }

    /**
     * @return the poblacion
     */
    public String getPoblacion() {
        return poblacion;
    }

    /**
     * @param poblacion the poblacion to set
     */
    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }

    /**
     * @return the codPostal
     */
    public int getCodPostal() {
        return codPostal;
    }

    /**
     * @param codPostal the codPostal to set
     */
    public void setCodPostal(int codPostal) {
        this.codPostal = codPostal;
    }

    /**
     * @return the usuarios
     */
    public Usuarios getUsuarios() {
        return usuarios;
    }

    /**
     * @param usuarios the usuarios to set
     */
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }

    /**
     * @return the Pais
     */
    public String getPais() {
        return Pais;
    }

    /**
     * @param Pais the Pais to set
     */
    public void setPais(String Pais) {
        this.Pais = Pais;
    }

}
