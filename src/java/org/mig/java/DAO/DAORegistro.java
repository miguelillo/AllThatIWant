/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.DAO;

import org.mig.java.Entities.Direcciones;
import org.mig.java.Entities.Telefonos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Interfaces.IRegistro;

/**
 *
 * @author miguelangel
 */
public class DAORegistro implements IRegistro {

    //Preparo el DAOFactory
    private final DAOFactory daoFactory;

    // Constructors -------------------------------------------------------------------------------
    /**
     * Construct an User DAO for the given DAOFactory. Package private so that
     * it can be constructed inside the DAO package only.
     *
     * @param daoFactory The DAOFactory to construct this User DAO for.
     */
    public DAORegistro(DAOFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    private static final String INSERTAR_USUARIO = "";
    private static final String INSERTAR_DIRECCION_USUARIO = "";
    private static final String INSERTAR_TELEFONO_USUARIO = "";

    @Override
    public void RegistroUsuario(Usuarios usuario, Telefonos telefono, Direcciones direccion) {
        
    }

    @Override
    public void RegistroTienda(Tiendas tienda) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
