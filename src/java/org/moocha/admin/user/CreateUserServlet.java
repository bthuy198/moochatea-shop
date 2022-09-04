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
import org.moocha.util.MD5Hashing;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class CreateUserServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        request.getRequestDispatcher("admin/user/create.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
        
        String email = request.getParameter("email");
        String password = MD5Hashing.getMD5(request.getParameter("password"));
        String role = request.getParameter("role");

        Users user = new Users(email, password, role);

        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        userDao.insert(user);

        response.sendRedirect("IndexUserServlet");
    }

}
