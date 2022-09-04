/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha.admin.order;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.moocha.BaseServlet;
import org.moocha.admin.AdminServlet;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.OrderDao;
import org.moocha.dao.UserDao;
import org.moocha.model.Order;
import org.moocha.model.Users;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class EditOrdersServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        int orderId = Integer.parseInt(request.getParameter("orderId"));

        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        Order order = orderDao.find(orderId);

        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        Users user = userDao.findById(order.getUserId());

        request.setAttribute("order", order);
        request.setAttribute("user", user);
        request.getRequestDispatcher("admin/order/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
        
        int orderId = Integer.parseInt(request.getParameter("orderId"));

        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        Order order = orderDao.find(orderId);

        String status = request.getParameter("status");
        order.setStatus(status);
        orderDao.update(order);
        response.sendRedirect("IndexOrderServlet");
    }
}
