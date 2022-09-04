/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.model;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class OrderDetail {

    private int id;
    private int quantity;
    private int productId;
    private int orderId;

    public OrderDetail(int quantity, int productId, int orderId) {
        this.quantity = quantity;
        this.productId = productId;
        this.orderId = orderId;
    }

    public OrderDetail(int id, int quantity, int productId, int orderId) {
        this.id = id;
        this.quantity = quantity;
        this.productId = productId;
        this.orderId = orderId;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public int getProductId() {
        return productId;
    }
    
    public void setProductId(int productId) {
        this.productId = productId;
    }
    
    public int getOrderId() {
        return orderId;
    }
    
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
}
