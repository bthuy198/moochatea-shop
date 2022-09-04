/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha.admin.product;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.moocha.BaseServlet;
import org.moocha.admin.AdminServlet;
import org.moocha.dao.CategoryDao;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.ProductDao;
import org.moocha.model.Category;
import org.moocha.model.Products;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class IndexProductServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Products> productList = productDao.all();

        request.setAttribute("productList", productList);
        request.getRequestDispatcher("admin/product/index.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
