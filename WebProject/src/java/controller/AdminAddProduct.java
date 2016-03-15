/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDao;
import entity.Product;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Ehab
 */
public class AdminAddProduct extends HttpServlet {

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
            out.println("<title>Servlet AdminAddProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminAddProduct at " + request.getContextPath() + "</h1>");
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
    
//        ProductDao pDao = new ProductDao();
//        Product product = new Product();
//        
    
    
    
    
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         ProductDao pDao = new ProductDao();
         Product product = new Product();
         
         product.setProductName(request.getParameter("productName"));
         product.setProductDescription(request.getParameter("productDesc"));
         product.setProductPrice(Float.parseFloat(request.getParameter("productPrice")));
         product.setProductQuntityavailable(Integer.parseInt(request.getParameter("productQuantityAvailable")));
         product.setProductQuntitysold(Integer.parseInt(request.getParameter("productQuantitySold")));
         product.setCategoriesIdcategory(Integer.parseInt(request.getParameter("productCategory")));
         pDao.insert(product);
        ////Still Don't Know How It Works 
         try {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = upload.parseRequest(request);
            Iterator<FileItem> iter =   items.iterator();
            while(iter.hasNext()){
                
                FileItem item = iter.next();
              
                if(item.isFormField()){
                    String name = item.getFieldName();
                    String value = item.getString();
                }else{
                    if(!item.isFormField()){
                        item.write(new File("\\images\\"+item.getName()));
                    }
                }
                
                
            }
        } catch (FileUploadException ex) {
            ex.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
         PrintWriter out = response.getWriter();
         out.write("Done");
         
    
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
