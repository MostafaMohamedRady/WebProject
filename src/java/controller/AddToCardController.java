/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CartProductDao;
import dao.ProductDao;
import entity.CartProduct;
import entity.Product;
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
public class AddToCardController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         
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
        
        CartProduct cartProduct=new CartProduct();
        Users user=new Users();        
        CartProductDao cpd=new CartProductDao();

        HttpSession session=request.getSession(false);
        session.getAttribute("user");
        if(session==null)
        {
            response.sendRedirect("login.jsp");
        }
        else
        {
            user=(Users) session.getAttribute("user");            
          //  cartProduct.setProduct(request.getParameter("idproduct"));
            
            Product p=new Product();
            ProductDao productDao=new ProductDao();
            productDao.selectById(Integer.parseInt(request.getParameter("idproduct")));
            
            cartProduct.setProduct(p);
            cartProduct.setCartProductMount(Integer.parseInt(request.getParameter("productMount")));
            cartProduct.setUsersIdusers(user);
            cartProduct.setProductColor(request.getParameter("productColor"));
            cartProduct.setProductsize(request.getParameter("productSize"));
            int insert = cpd.insert(cartProduct);
            
            if (insert>0){
                productDao=new ProductDao();
                p.setProductQuntityavailable(p.getProductQuntityavailable()-1);
                productDao.update(p);
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("cartProduct", cpd.selectByUser(user));
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
