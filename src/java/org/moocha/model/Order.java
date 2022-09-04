/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.model;

import org.moocha.dao.DatabaseDao;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class Order {

    private int id;
    private String code;
    private String status;
    private int userId;
    
    public static Order find(int id){
        return DatabaseDao.getInstance().getOrderDao().find(id);
    }

    public Order(String code, String status, int userId) {
        this.code = code;
        this.status = status;
        this.userId = userId;
    }

    public Order(int id, String code, String status, int userId) {
        this.id = id;
        this.code = code;
        this.status = status;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public String getStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getUserId() {
        return userId;
    }

}
