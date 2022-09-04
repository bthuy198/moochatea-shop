/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.dao;

import java.util.List;
import org.moocha.model.OrderDetail;


/**
 *
 * @author LAPTOP KIM ANH
 */
public interface OrderDetailDao {
    public boolean insert(OrderDetail orderDetail);
    public boolean update(OrderDetail orderDetail);
    public boolean delete(int id);
    
    public List<OrderDetail> all();
    public OrderDetail find(int id);
    public List<OrderDetail> findByOrder(int orderId);
}
