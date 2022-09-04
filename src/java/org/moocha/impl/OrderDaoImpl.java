/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.moocha.dao.OrderDao;
import org.moocha.db.MySQLDriver;
import org.moocha.model.Order;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class OrderDaoImpl implements OrderDao {

    private Connection conn;

    public OrderDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(Order order) {
        String sql = "INSERT INTO ORDERS VALUES(NULL, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getCode());
            stmt.setString(2, order.getStatus());
            stmt.setInt(3, order.getUserId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean update(Order order) {
        String sql = "UPDATE ORDERS SET CODE=?, STATUS=?, USERID=? WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getCode());
            stmt.setString(2, order.getStatus());
            stmt.setInt(3, order.getUserId());
            stmt.setInt(4, order.getId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int orderId) {
        String sql = "DELETE FROM ORDERS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public List<Order> all() {
        List<Order> orderList = new ArrayList<>();
        String sql = "SELECT * FROM ORDERS";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("userId");

                orderList.add(new Order(id, code, status, userId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderList;
    }

    @Override
    public Order find(int id) {
        String sql = "SELECT * FROM ORDERS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("userId");

                return new Order(id, code, status, userId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }


    @Override
    public Order findByCode(String code) {
        String sql = "SELECT * FROM ORDERS WHERE CODE=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, code);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String status = rs.getString("status");
                int userId = rs.getInt("userId");

                return new Order(id, code, status, userId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
