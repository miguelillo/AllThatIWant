/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import static org.mig.java.DAO.DAOUtil.prepareStatement;
import static org.mig.java.DAO.DAOUtil.toSqlDate;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Exceptions.DAOException;
import org.mig.java.Interfaces.IPedidos;

/**
 *
 * @author miguelangel
 */
public class DAOPedidos implements IPedidos {
    //Preparo el DAOFactory

    private final DAOFactory daoFactory;

    // Constructors -------------------------------------------------------------------------------
    /**
     * Construct an User DAO for the given DAOFactory. Package private so that
     * it can be constructed inside the DAO package only.
     *
     * @param daoFactory The DAOFactory to construct this User DAO for.
     */
    public DAOPedidos(DAOFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    private static final String REALIZAR_PEDIDO = "INSERT INTO `pedidos`("
            + "`UsuarioMail`, "
            + "`ProductoReferencia`, "
            + "`TiendaCIF`, "
            + "`Fecha_Pedido`, "
            + "`Fecha_Confirmacion`, "
            + "`Fecha_Servicio`, "
            + "`Unidades`, "
            + "`Num_Factura`, "
            + "`Estado_Servicio`) "
            + "VALUES (?,?,?,?,?,?,?,?,?)";

    @Override
    public void RealizarPedido(Pedidos pedido) {

        Object[] pedidoValues = {
            pedido.getMail(),
            pedido.getProductoReferencia(),
            pedido.getTiendaCif(),
            toSqlDate(pedido.getFechaPedido()),
            pedido.getFechaConfirmacion(),
            pedido.getFechaServicio(),
            pedido.getUnidades(),
            pedido.getNumFactura(),
            pedido.getEstadoPedido()
        };

        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement pstmtProductos = prepareStatement(connection, REALIZAR_PEDIDO, pedidoValues);
            int affectedRows = pstmtProductos.executeUpdate();

            if (affectedRows == 0) {
                throw new DAOException("Error al realizar el pdidos");
            }
        } catch (Exception ex) {
            throw new DAOException("Error al realizar el pdidos");
        }

    }

}
