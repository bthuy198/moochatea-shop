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
import jakarta.servlet.http.HttpSession;
import java.util.List;
import org.moocha.dao.DatabaseDao;
import org.moocha.dao.OrderDao;
import org.moocha.dao.OrderDetailDao;
import org.moocha.entity.OrderDetailSession;
import org.moocha.model.Order;
import org.moocha.model.OrderDetail;
import org.moocha.model.Users;
import org.moocha.util.StringHelper;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class CheckoutServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (isLogged(request, response)) {
            HttpSession session = request.getSession();

            Users user = (Users) session.getAttribute("user");
            OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
            String code = StringHelper.randomString(8);
            Order order = new Order(code, "pending", user.getId());
            orderDao.insert(order);

            order = orderDao.findByCode(code);

            OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();

            if (session.getAttribute("cart") != null) {
                List<OrderDetailSession> orderDetailSessionList = (List<OrderDetailSession>) session.getAttribute("cart");
                for (OrderDetailSession orderDetailSession : orderDetailSessionList) {
                    OrderDetail orderDetail = new OrderDetail(orderDetailSession.getQuantity(), orderDetailSession.getProductId(), order.getId());
                    orderDetailDao.insert(orderDetail);
                }

                session.removeAttribute("cart");
            }

            response.sendRedirect("HomeServlet");
        } else {
            response.sendRedirect("AuthServlet");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        isLogged(request, response);
    }

    private boolean isLogged(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        HttpSession session = request.getSession();
        return session.getAttribute("user") != null;
    }
}
