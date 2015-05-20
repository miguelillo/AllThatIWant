/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.mig.java.DAO.DAOUtil.prepareStatement;
import static org.mig.java.DAO.DAOUtil.toSqlDate;
import org.mig.java.Entities.Pedidos;
import org.mig.java.Entities.Usuarios;
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
    private static final String MOSTRAR_PEDIDOS = "SELECT * FROM `pedidos` WHERE `UsuarioMail` = ? AND  `Estado_Servicio` = 'PEDIDO'";
    private static final String BORRAR_PRODUCTO_PEDIDO = "DELETE FROM `pedidos` WHERE `ProductoReferencia` = ? AND `UsuarioMail` = ?";

    @Override
    public void BorrarProductoPedido(Pedidos pedido) {
        Object[] Values = {
            pedido.getProductoReferencia(),
            pedido.getMail()
        };

        try {

            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, BORRAR_PRODUCTO_PEDIDO, Values);

            int affectedRows = preparedStatement.executeUpdate();

            if (affectedRows == 0) {
                throw new DAOException("Error al borrar el pedido");
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAOPedidos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

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

    @Override
    public List<Pedidos> MostrarPedidos(Usuarios usuario) {
        List<Pedidos> pedidos = new ArrayList<>();
        Pedidos pedido = new Pedidos();
        Object[] Values = {
            usuario.getMail()
        };
        try {

            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, MOSTRAR_PEDIDOS, Values);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {

                pedido = obtenerFilaPedidos(rs);

                pedidos.add(pedido);
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAOPedidos.class.getName()).log(Level.SEVERE, null, ex);
        }

        return pedidos;
    }

    private Pedidos obtenerFilaPedidos(ResultSet rs) throws SQLException {
        Pedidos pedido = new Pedidos();
        pedido.setMail(rs.getString("USUARIOMAIL"));
        pedido.setEstadoPedido(rs.getString("ESTADO_SERVICIO"));
        pedido.setFechaConfirmacion(rs.getDate("FECHA_CONFIRMACION"));
        pedido.setFechaPedido(rs.getDate("FECHA_PEDIDO"));
        pedido.setFechaServicio(rs.getDate("FECHA_SERVICIO"));
        pedido.setNumFactura(rs.getInt("NUM_FACTURA"));
        pedido.setUnidades(rs.getInt("UNIDADES"));
        pedido.setTiendaCif(rs.getString("TIENDACIF"));
        pedido.setProductoReferencia(rs.getString("PRODUCTOREFERENCIA"));

        return pedido;
    }

}
