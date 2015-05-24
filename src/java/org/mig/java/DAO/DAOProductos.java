/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
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
import org.mig.java.Entities.Productos;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Interfaces.IProductos;
import static org.mig.java.DAO.DAOUtil.prepareStatement;
import org.mig.java.Entities.Categoria;
import org.mig.java.Entities.Usuarios;
import org.mig.java.Entities.WishList;
import org.mig.java.Exceptions.DAOException;

/**
 * @author miguelangel
 */
public class DAOProductos implements IProductos {
//Preparo el DAOFactory

    private final DAOFactory daoFactory;

    // Constructors -------------------------------------------------------------------------------
    /**
     * Construct an User DAO for the given DAOFactory. Package private so that
     * it can be constructed inside the DAO package only.
     *
     * @param daoFactory The DAOFactory to construct this User DAO for.
     */
    public DAOProductos(DAOFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    //SQL's
    private static final String MOSTRAR_PRODUCTO = "SELECT *  FROM productos WHERE referencia =  ?";
    private static final String INSERTAR_PRODUCTOS = "INSERT INTO proyectofinaldaw.productos ("
            + "`Referencia`, "
            + "`Precio`, "
            + "`Nombre`, "
            + "`Descripcion`, "
            + "`Color`, "
            + "`Talla`, "
            + "`Composicion`, "
            + "`Sexo`, "
            + "`Id_Categoria`" //HE AÑADIDO FECHA CATALOGO SI AL INSERTAR DA ERROR COMPROBAR QUE SEA POR ESTO!
            + "`Fecha_Catalogo`)"
            + "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String INSERTAR_PRODUCTOS_TIENDA = "INSERT INTO proyectofinaldaw.productos_tiendas (`Productoid`, "
            + "`TiendaCIF`)"
            + "	VALUES (?, ?);";
    private static final String WISH_LIST_BORRAR_PRODUCTO = "DELETE FROM usuario_wishList WHERE Usuario = ? AND Producto = ?";
    private static final String CANTIDAD_WISH_LIST = "SELECT COUNT( * ) FROM usuario_wishList WHERE usuario =  ?";
    private static final String WISH_LIST = "SELECT * FROM usuario_wishList INNER JOIN productos ON usuario_wishList.Producto = productos.Referencia WHERE usuario_wishList.Usuario =  ? LIMIT 0 , 30";
    private static final String INSERT_WISH_LIST = "INSERT INTO `usuario_wishList`(`Usuario`, `Producto`) VALUES (?,?)";
    private static final String MOSTRAR_PRODUCTOS = "SELECT * FROM `productos` ORDER BY `Fecha_Catalogo` LIMIT 1,7";
    private static final String MOSTRAR_PRODUCTOS_TIENDA = "SELECT * FROM `productos_tiendas` WHERE TiendaCif = ?";
    private static final String MOSTRAR_PRODUCTOS_PEDIDOS = "SELECT productos.*\n"
            + "FROM productos \n"
            + "INNER JOIN pedidos \n"
            + "ON pedidos.ProductoReferencia = productos.Referencia \n"
            + "WHERE pedidos.UsuarioMail = ? \n"
            + "LIMIT 0 , 30";
    private static final String MOSTRAR_CATEGORIAS_PRODUCTOS = "SELECT * FROM `categoria`";
    private static final String AGRUPAR_PRODUCTOS_CLASIFICACION = "SELECT `clasificacion` FROM `categoria` GROUP BY `clasificacion`";
    private static final String MOSTRAR_PRODUCTOS_CLASIFICACION = "SELECT *\n"
            + "FROM productos \n"
            + "INNER JOIN categoria ON productos.Id_Categoria = `idCategoria`\n"
            + "WHERE categoria.idCategoria = ?";
    private static final String MOSTRAR_CATEGORIA_PRODUCTO = "SELECT * FROM `categoria` WHERE idCategoria = ?";
    
    @Override
    public void insertarProducto(Productos producto, Tiendas tienda) {
        
        Object[] productosValues = {
            producto.getReferencia(),
            producto.getPrecio(),
            producto.getNombre(),
            producto.getDescripcion(),
            producto.getColor(),
            producto.getTalla(),
            producto.getComposicion(),
            producto.getSexo(),
            producto.getIdCategoria()
        };
        Object[] productosTiendasValues = {
            producto.getReferencia(),
            tienda.getCif()
        };
        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement pstmtProductos = prepareStatement(connection, INSERTAR_PRODUCTOS, productosValues);
            PreparedStatement pstmtTiendasProductos = prepareStatement(connection, INSERTAR_PRODUCTOS_TIENDA, productosTiendasValues);

            //REVISAR LA REFERENCIA DE LOS PRODUCTOS, NO ESTA CLARO LA DB.
            int affectedRowsProductos = pstmtProductos.executeUpdate();
            int affectedRowsTiendasProductos = pstmtTiendasProductos.executeUpdate();
            
            if (affectedRowsProductos == 0 || affectedRowsTiendasProductos == 0) {
                throw new DAOException("Error al introducir el producto");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public void borrarProducto(Productos producto, Tiendas tienda) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public Productos buscarProducto(Productos producto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public void modificarProducto(Productos producto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public Productos mostrarProducto(Productos producto) {
        
        try {
            Object[] values = {
                producto.getReferencia()
            };
            
            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, MOSTRAR_PRODUCTO, values);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            if (rs.next()) {
                producto = obtenerFilaProducto(rs);
            } else {
                throw new Exception("El Producto no existe");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return producto;
    }
    
    @Override
    public Integer cantidadProductosWishList(Usuarios usuario) {
        int cantidadWishItems = 0;
        
        Object[] values = {
            usuario.getMail()};
        
        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement pstmtCantidadWishList = prepareStatement(connection, CANTIDAD_WISH_LIST, values);
            
            ResultSet rs = pstmtCantidadWishList.executeQuery();
            
            while (rs.next()) {
                cantidadWishItems = rs.getInt(1);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cantidadWishItems;
    }
    
    @Override
    public List<Productos> mostrarWishList(Usuarios usuario) {
        ArrayList<Productos> listaProductos = new ArrayList<>();
        Productos wishItem = null;
        
        Object[] values = {
            usuario.getMail()
        
        };
        
        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement pstmtWishList = prepareStatement(connection, WISH_LIST, values);
            
            ResultSet rs = pstmtWishList.executeQuery();
            
            while (rs.next()) {
                wishItem = obtenerFilaProducto(rs);
                listaProductos.add(wishItem);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaProductos;
    }
    
    @Override
    public void InsertarWishList(Productos producto, Usuarios usuario) {
        Object[] wishListValues = {
            usuario.getMail(),
            producto.getReferencia()
        };
        
        try {
            Connection connection = daoFactory.getConnection();
            
            PreparedStatement preparedStatement = prepareStatement(connection, INSERT_WISH_LIST, wishListValues);
            
            int affectedRows = preparedStatement.executeUpdate();
            
            if (affectedRows == 0) {
                throw new Exception("Error al añadir el producto a la Wish List.");
            }
            
        } catch (Exception ex) {
            
        }
    }
    
    private Productos obtenerFilaProducto(ResultSet rs) throws SQLException {
        
        Productos filaProducto = new Productos();
        
        filaProducto.setReferencia(rs.getString("REFERENCIA"));
        filaProducto.setPrecio(Integer.parseInt(rs.getString("PRECIO")));
        filaProducto.setNombre(rs.getString("NOMBRE"));
        filaProducto.setDescripcion(rs.getString("DESCRIPCION"));
        filaProducto.setColor(rs.getString("COLOR"));
        filaProducto.setTalla(rs.getString("TALLA"));
        filaProducto.setComposicion(rs.getString("COMPOSICION"));
        filaProducto.setSexo(Integer.parseInt(rs.getString("SEXO")));
        filaProducto.setIdCategoria(Integer.parseInt(rs.getString("ID_CATEGORIA")));
        filaProducto.setFechaCatalogo(java.sql.Date.valueOf(rs.getString("FECHA_CATALOGO")));
        
        return filaProducto;
        
    }
    
    @Override
    public List<Productos> mostrarProductos() {
        Productos producto;
        ArrayList<Productos> listaProductos = new ArrayList<>();
        try {
            Connection connection = daoFactory.getConnection();
            
            PreparedStatement preparedStatement = prepareStatement(connection, MOSTRAR_PRODUCTOS);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                producto = obtenerFilaProducto(rs);
                listaProductos.add(producto);
                
            }
            
        } catch (Exception ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaProductos;
    }
    
    @Override
    public List<Productos> mostrarProductosUsuario(Usuarios usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public void BorrarWishList(WishList wishListItem) {
        Object[] wishListItemValue = {
            wishListItem.getUsuario(),
            wishListItem.getProducto()
        };
        
        try {
            
            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, WISH_LIST_BORRAR_PRODUCTO, wishListItemValue);
            
            int affectedRows = preparedStatement.executeUpdate();
            
            if (affectedRows == 0) {
                throw new Exception("Error al borrar el elemento de la wishList");
            }
        } catch (Exception ex) {
        }
        
    }
    
    @Override
    public List<Productos> mostrarProductoPedido(Usuarios usuario) {
        List<Productos> listaProductosPedidos = new ArrayList<>();
        Productos producto = new Productos();
        
        Object[] Values = {
            usuario.getMail()
        };
        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, MOSTRAR_PRODUCTOS_PEDIDOS, Values);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                
                producto = obtenerFilaProducto(rs);
                listaProductosPedidos.add(producto);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaProductosPedidos;
    }
    
    @Override
    public List<Categoria> mostrarCategoriasProducto() {
        List<Categoria> categorias = new ArrayList<>();
        Categoria categoria;
        
        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, MOSTRAR_CATEGORIAS_PRODUCTOS);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                categoria = new Categoria();
                categoria.setIdCategoria(rs.getInt("IDCATEGORIA"));
                categoria.setDescripcion(rs.getString("DESCRIPCION"));
                categoria.setClasificacion(rs.getString("CLASIFICACION"));
                categorias.add(categoria);
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return categorias;
    }
    
    @Override
    public List<Categoria> clasificacionProductos() {
        List<Categoria> categorias = new ArrayList<>();
        Categoria categoria;
        
        try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedStatement = prepareStatement(connection, AGRUPAR_PRODUCTOS_CLASIFICACION);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                categoria = new Categoria();
                categoria.setClasificacion(rs.getString("CLASIFICACION"));
                categorias.add(categoria);
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return categorias;
    }
    
    @Override
    public List<Productos> mostrarProductosCategoria(Integer categoria) {
        List<Productos> productos = new ArrayList<>();
        Productos producto;
        Object[] Values = {
            categoria
        };
        
        try {
            
            Connection connection = daoFactory.getConnection();
            
            PreparedStatement preparedStatement = prepareStatement(connection, MOSTRAR_PRODUCTOS_CLASIFICACION, Values);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                
                producto = obtenerFilaProducto(rs);
                
                productos.add(producto);
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productos;
    }
    
    @Override
    public Categoria mostrarCategoriaProducto(Integer idCategoria) {
        Categoria categoria = new Categoria();
        try {
            Connection connection = daoFactory.getConnection();
            
            PreparedStatement preparedStatement = prepareStatement(connection, MOSTRAR_CATEGORIA_PRODUCTO, idCategoria);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                categoria.setDescripcion(rs.getString("DESCRIPCION"));
                categoria.setClasificacion(rs.getString("CLASIFICACION"));
                categoria.setIdCategoria(rs.getInt("IDCATEGORIA"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOProductos.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return categoria;
    }
    
}
