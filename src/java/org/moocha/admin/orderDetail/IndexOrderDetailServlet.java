/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha.admin.orderDetail;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.moocha.admin.AdminServlet;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.OrderDetailDao;
import org.moocha.model.OrderDetail;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class IndexOrderDetailServlet extends AdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();
        List<OrderDetail> orderDetailList = orderDetailDao.all();

        request.setAttribute("orderDetailList", orderDetailList);
        request.getRequestDispatcher("admin/orderDetail/index.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }
}
