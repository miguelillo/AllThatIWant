/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Interfaces;

import org.mig.java.Entities.Direcciones;
import org.mig.java.Entities.Telefonos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author miguelangel
 */
public interface IRegistro {

    public void RegistroUsuario(Usuarios usuario, Telefonos telefono, Direcciones direccion);

    public void RegistroTienda(Tiendas tienda);

}
