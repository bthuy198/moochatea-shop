/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.dao;

import java.util.List;
import org.moocha.model.Order;

/**
 *
 * @author LAPTOP KIM ANH
 */
public interface OrderDao {
    public boolean insert(Order order);
    public boolean update(Order order);
    public boolean delete(int id);
  
    public List<Order> all();
    public Order find(int id);
    public Order findByCode(String code);
}
