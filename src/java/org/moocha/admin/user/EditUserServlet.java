/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha.admin.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.moocha.BaseServlet;
import org.moocha.admin.AdminServlet;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.UserDao;
import org.moocha.model.Users;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class EditUserServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        int userId = Integer.parseInt(request.getParameter("userId"));

        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        Users user = userDao.findById(userId);

        request.setAttribute("user", user);
        request.getRequestDispatcher("admin/user/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
        
        int userId = Integer.parseInt(request.getParameter("userId"));

        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        Users user = userDao.findById(userId);

        String role = request.getParameter("role");
        user.setRole(role);
        userDao.update(user);
        response.sendRedirect("IndexUserServlet");
    }

}
