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
import org.moocha.dao.ProductDao;
import org.moocha.db.MySQLDriver;
import org.moocha.model.Products;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class ProductDaoImpl implements ProductDao {

    private Connection conn;

    public ProductDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(Products product) {
        String sql = "INSERT INTO PRODUCTS VALUES(NULL, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getImg());
            stmt.setString(3, product.getDesc());
            stmt.setDouble(4, product.getPrice());
            stmt.setInt(5, product.getQuantity());
            stmt.setInt(6, product.getCategoryId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean update(Products product) {
        String sql = "UPDATE PRODUCTS SET NAME=?, IMG=?, DESCRIPTION=?, PRICE=?, QUANTITY=?, CATEGORYID=? WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getImg());
            stmt.setString(3, product.getDesc());
            stmt.setDouble(4, product.getPrice());
            stmt.setInt(5, product.getQuantity());
            stmt.setInt(6, product.getCategoryId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int productId) {
        String sql = "DELETE FROM PRODUCTS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, productId);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public List<Products> all() {
        List<Products> productList = new ArrayList<Products>();
        String sql = "SELECT * FROM PRODUCTS";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("description");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("categoryId");

                productList.add(new Products(id, name, img, desc, price, quantity, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

    @Override
    public Products find(int id) {
        String sql = "SELECT * FROM PRODUCTS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("description");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("categoryId");

                return new Products(id, name, img, desc, price, quantity, categoryId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Products findByName(String name) {
        String sql = "SELECT * FROM PRODUCTS WHERE NAME=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String img = rs.getString("img");
                String desc = rs.getString("description");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("categoryId");

                return new Products(id, name, img, desc, price, quantity, categoryId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Products> findByCategoryId(int categoryId) {
        List<Products> productList = new ArrayList<Products>();
        String sql = "SELECT * FROM PRODUCTS WHERE CATEGORYID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, categoryId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("description");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");                
                
                productList.add(new Products(id, name, img, desc, price, quantity, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }
    
    public List<Products> searchByName(String productName) {
        List<Products> productList = new ArrayList<Products>();
        String sql = "SELECT * FROM PRODUCTS WHERE NAME LIKE ?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + productName + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("description");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("categoryId");

                productList.add(new Products(id, name, img, desc, price, quantity, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

}
