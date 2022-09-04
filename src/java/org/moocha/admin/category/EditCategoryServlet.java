/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha.admin.category;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.moocha.BaseServlet;
import org.moocha.admin.AdminServlet;
import org.moocha.dao.CategoryDao;
import org.moocha.dao.DatabaseDao;
import org.moocha.model.Category;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class EditCategoryServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        int categoryId = Integer.parseInt(request.getParameter("id"));
        
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        Category category = categoryDao.find(categoryId);

        request.setAttribute("category", category);
        request.getRequestDispatcher("admin/categories/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        Category category = categoryDao.find(categoryId);

        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        category.setName(name);
        category.setDesc(desc);

        categoryDao.update(category);

        response.sendRedirect("IndexCategoryServlet");
    }

}
