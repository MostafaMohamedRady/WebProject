/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author Bakar M.M.R
 */
public class OnlineListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        int online = (int) se.getSession().getServletContext().getAttribute("online");
        se.getSession().getServletContext().setAttribute("online", ++online);
        System.out.println("Session create" + se.getSession().getServletContext().getAttribute("online"));
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        int online = (int) se.getSession().getServletContext().getAttribute("online");
        se.getSession().getServletContext().setAttribute("online", --online);
        System.out.println("Session destroy" + se.getSession().getServletContext().getAttribute("online"));
    }
}
