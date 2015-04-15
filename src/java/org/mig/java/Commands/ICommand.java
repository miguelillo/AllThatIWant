/*
 * Este codigo pertenece a miguel.navarrovera@gmail.com
 * Su uso esta prohibido para uso comercial.
 * Si tienes interes en usarlo, ponte en contacto conmigo, Gracias. :D
 */
package org.mig.java.Commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author miguelangel
 */
public abstract class ICommand {

    public void initPage(HttpServletRequest request, HttpServletResponse response) throws Exception {

    }

    public abstract String executePage(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
