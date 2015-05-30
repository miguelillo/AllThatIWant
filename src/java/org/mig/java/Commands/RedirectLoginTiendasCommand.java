/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author miguelangel
 */
public class RedirectLoginTiendasCommand extends ICommand{

    @Override
    public String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return "LoginTiendas.jsp";
    }
    
}
