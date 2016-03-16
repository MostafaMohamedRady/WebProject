/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDao;
import entity.Product;
//import entity.ProductPK;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aya Mahmoud
 */
/////////////////Added to handle passing product bean to single.jsp
public class SingleProductPageController extends HttpServlet{

    Product product;
    RequestDispatcher rd;
    ProductDao pd;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String idpro = req.getParameter("id");
        int id = Integer.parseInt(idpro);
        pd = new ProductDao();
        Product prod = pd.selectById(id);
        String image = prod.getProductImg();
        req.setAttribute("product", prod);
        rd.forward(req, resp);
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        rd = config.getServletContext().getRequestDispatcher("/single.jsp");
    }   
}