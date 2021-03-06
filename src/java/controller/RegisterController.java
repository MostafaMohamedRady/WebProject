/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UsersDao;
import entity.Check;
import entity.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bakar M.M.R
 */
public class RegisterController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Users user = new Users();
        user.setUserName(request.getParameter("userName"));
        user.setUserEmail(request.getParameter("userEmail"));
        user.setUserPassword(request.getParameter("userPassword"));
        user.setUserCharge(Float.parseFloat(request.getParameter("userCharge")));
        /* Date date=new Date();
         user.setUserRegdate();*/
        System.out.println(request.getParameter("userName"));

        user.setUserSsn(Long.parseLong(request.getParameter("userSsn")));

        UsersDao userDao = new UsersDao();

        int insert = userDao.insert(user);

        Check check = userDao.checkUser(user);
        HttpSession session =request.getSession(true);
        session.setAttribute("check", check);
       // request.getSession().setAttribute("check", check);

        if (insert == 0) {
            //      if(checkMail)
            response.sendRedirect("register.jsp");

        } else {
            //response.sendRedirect("login.jsp");
            response.sendRedirect("index.jsp");
            session=request.getSession(true);
            session.setAttribute("user", user);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold> 

}
