/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mig.java.BLL.TiendasBLL;
import org.mig.java.Entities.Tiendas;
import org.mig.java.Entities.Usuarios;

/**
 *
 * @author miguelangel
 */
public class RedirectShopAdminCommand extends ICommand {
    
    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Usuarios usuarioActual = (Usuarios) request.getSession().getAttribute("usuarioValido");
        TiendasBLL tiendasBll = new TiendasBLL();
        List<Tiendas> tiendasUsuario = tiendasBll.propietarioTienda(usuarioActual);
        
        request.setAttribute("propietarioTiendas", tiendasUsuario);
        
        return "ShopPanel.jsp";
    }
    
}
