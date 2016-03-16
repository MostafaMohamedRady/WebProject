
package controller;

import dao.CategoriesDao;
import dao.ProductDao;
import entity.Categories;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ehab
 */
public class IndexController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet IndexController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet IndexController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int visitor = (int) request.getServletContext().getAttribute("visitor");
        request.getServletContext().setAttribute("visitor", ++visitor);
        
    //    ProductDao pDao = new ProductDao();
        CategoriesDao cDao = new CategoriesDao();
        ArrayList<Categories> cList = cDao.selectAll();

     /*   for (int i = 0; i < cList.size(); i++) {
            cList.get(i).setProductCollection(pDao.selectProductsByCategoryId(i + 1));
        }*/
        
        request.setAttribute("categoryList", cList);
        RequestDispatcher rd = request.getRequestDispatcher("indexc.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
