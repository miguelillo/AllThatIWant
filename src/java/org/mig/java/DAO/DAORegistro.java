/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.mig.java.DAO.DAOUtil.prepareStatement;
import org.mig.java.Exceptions.DAOException;
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

    private static final String INSERTAR_USUARIO = "INSERT INTO `usuarios`("
            + "`Mail`, "
            + "`DNI`, "
            + "`User_Name`, "
            + "`Nombre`, "
            + "`Password`, "
            + "`Apellido2`, "
            + "`Apellido1`, "
            + "`Fecha_Nacimiento`, "
            + "`Pais`, "
            + "`imagen_url`, "
            + "`Perfil`, "
            + "`Sexo`) "
            + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
    private static final String INSERTAR_DIRECCION_USUARIO = "INSERT INTO `direcciones`("
            + "`UsuarioMail`, "
            + "`Direccion`, "
            + "`Numero`, "
            + "`Puerta`, "
            + "`Escalera`, "
            + "`Poblacion`, "
            + "`Cod_Postal`, "
            + "`Pais`) "
            + "VALUES (?,?,?,?,?,?,?,?)";
    private static final String INSERTAR_TELEFONO_USUARIO = "INSERT INTO `telefonos`("
            + "`Numero`, "
            + "`UsuarioMail`) "
            + "VALUES (?,?)";

    @Override
    public void RegistroUsuario(Usuarios usuario) {
        Object[] Values = {
            usuario.getMail(),
            usuario.getDni(),
            usuario.getUserName(),
            usuario.getNombre(),
            usuario.getPassword(),
            usuario.getApellido1(),
            usuario.getApellido2(),
            usuario.getFechaNacimiento(),
            usuario.getPais(),
            usuario.getImagenUrl(),
            usuario.getPerfil(),
            usuario.getSexo()
        };
        try {
            Connection connection = daoFactory.getConnection();

            PreparedStatement preparedStatement = prepareStatement(connection, INSERTAR_USUARIO, Values);

            int affectedRows = preparedStatement.executeUpdate();

            if (affectedRows == 0) {
                throw new DAOException("Error al insertar el usuario");
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAORegistro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void InsertarDireccionUsuario(Direcciones direccion) {
        Object[] Values = {
            direccion.getUsuarioMail(),
            direccion.getDireccion(),
            direccion.getNumero(),
            direccion.getPuerta(),
            direccion.getEscalera(),
            direccion.getPoblacion(),
            direccion.getCodPostal(),
            direccion.getPais()
        };

        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, INSERTAR_DIRECCION_USUARIO, Values);

            int affectedRows = preparedStatement.executeUpdate();

            if (affectedRows == 0) {
                throw new DAOException("ERROR AL INSERTAR LA DIRECCION DEL USUARIO");
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAORegistro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void InsertarTeleofonoUsuario(Telefonos telefono) {

        Object[] Values = {
            telefono.getNumero(),
            telefono.getUsuarioMail()
        };

        try {
            Connection connection = daoFactory.getConnection();

            PreparedStatement preparedStatement = prepareStatement(connection, INSERTAR_TELEFONO_USUARIO, Values);
            int affectedRows = preparedStatement.executeUpdate();
            if (affectedRows == 0) {
                throw new DAOException("ERROR AL INSERTAR EL TELEFONO DEL USUARIO");
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAORegistro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void RegistroTienda(Tiendas tienda) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
