/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.BLL;

import org.mig.java.DAO.DAOFactory;
import org.mig.java.Entities.Direcciones;
import org.mig.java.Entities.Telefonos;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Interfaces.IRegistro;

/**
 *
 * @author miguelangel
 */
public class RegistroBLL {

    public void RegistroUsuario(Usuarios usuario, Telefonos telefono, Direcciones direccion) {
        DAOFactory daoFactory = DAOFactory.getInstance();

        IRegistro IRegistro = daoFactory.getRegistroDAO();

        IRegistro.RegistroUsuario(usuario);
        IRegistro.InsertarDireccionUsuario(direccion);
        IRegistro.InsertarTeleofonoUsuario(telefono);

    }

    

}
