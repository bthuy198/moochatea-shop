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
import java.util.List;
import org.moocha.BaseServlet;
import org.moocha.admin.AdminServlet;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.OrderDao;
import org.moocha.model.Order;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class IndexOrderServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        List<Order> orderList = orderDao.all();
        
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("admin/order/index.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }
}
