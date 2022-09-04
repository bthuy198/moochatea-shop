/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.ProductDao;
import org.moocha.model.Products;
import org.moocha.util.Flash;
/**
 *
 * @author LAPTOP KIM ANH
 */
public class SearchServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Products> productList = null;      
        if(request.getParameter("productName") == null){
            productList = productDao.all();            
        }
        else{
            String productName = request.getParameter("productName");
            productList = productDao.searchByName(productName);
        }
        
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
