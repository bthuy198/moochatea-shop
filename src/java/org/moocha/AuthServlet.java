/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.UserDao;
import org.moocha.model.Users;
import org.moocha.util.Flash;
import org.moocha.util.MD5Hashing;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class AuthServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("auth.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "register":
                register(request, response);
                break;
            default:
                throw new AssertionError();
        }

    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        UserDao userDao = DatabaseDao.getInstance().getUserDao();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users findUser = userDao.findByEmail(email);
        if (findUser != null) {
            if (findUser.getPassword().equals(password)) {
                HttpSession session = request.getSession();
                session.setAttribute("user", findUser);
                response.sendRedirect("HomeServlet");
            }
        } else {
            response.sendRedirect("AuthServlet");
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String password = MD5Hashing.getMD5(request.getParameter("password"));

        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        Users findUser = userDao.findByEmail(email);
        if (findUser != null) {
            Flash.init(request.getSession());
            Flash.pushError("Email is existed!");
            response.sendRedirect("AuthServlet");
        } else {
            Users user = new Users(email, password, "user");
            userDao.insert(user);
            response.sendRedirect("HomeServlet");
        }
    }
}
