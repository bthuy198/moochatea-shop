/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.dao;

import org.moocha.impl.CategoryDaoImpl;
import org.moocha.impl.OrderDaoImpl;
import org.moocha.impl.OrderDetailDaoImpl;
import org.moocha.impl.ProductDaoImpl;
import org.moocha.impl.UserDaoImpl;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        return new UserDaoImpl();
    }

    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        return new OrderDaoImpl();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        return new OrderDetailDaoImpl();
    }
    
    
    
}
