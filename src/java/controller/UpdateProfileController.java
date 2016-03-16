/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UsersDao;
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
 * @author Aya
 */
public class UpdateProfileController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateProfileController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProfileController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // Users user=new Users();

        HttpSession session = request.getSession(false);
        Users user = (Users) session.getAttribute("user");
        //Users user=(Users) request.getSession().getAttribute("user");
        // user.setUserEmail(request.getParameter("email"));
        user.setUserZip(0);
        user.setUserCharge(Float.valueOf((request.getParameter("userCharge"))));
        user.setUserAddress(request.getParameter("userAdderess"));
        user.setUserJob(request.getParameter("userJob"));
        user.setUserMobile(request.getParameter("userMobile"));
        if (Integer.valueOf(request.getParameter("userZip")) == 0 || request.getParameter("userZip") == null) {
            user.setUserZip(0);
        } else {
            user.setUserZip(Integer.parseInt(request.getParameter("userZip")));
        }
        UsersDao userDao = new UsersDao();
        int update = userDao.update(user);

        if (session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (update == 0) {
                //      if(checkMail)
                response.sendRedirect("profile.jsp");
            } else {
                //response.sendRedirect("login.jsp");
                response.sendRedirect("products.jsp");
            }

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
