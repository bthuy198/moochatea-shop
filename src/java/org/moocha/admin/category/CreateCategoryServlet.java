/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha.admin.category;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.moocha.admin.AdminServlet;
import org.moocha.dao.CategoryDao;
import org.moocha.dao.DatabaseDao;
import org.moocha.model.Category;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class CreateCategoryServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        request.getRequestDispatcher("admin/categories/create.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");

        Category category = new Category(name, desc);

        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        categoryDao.insert(category);

        response.sendRedirect("IndexCategoryServlet");
    }

}
