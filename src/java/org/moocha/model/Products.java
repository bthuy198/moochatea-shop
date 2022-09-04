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
public class Products {

    private int id;
    private String name;
    private String img;
    private String desc;
    private double price;
    private int quantity;
    private int categoryId;
    
    public static Products find(int id){
        return DatabaseDao.getInstance().getProductDao().find(id);
    }

    public Products(String name, String img, String desc, double price, int quantity, int categoryId) {
        this.name = name;
        this.desc = desc;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
        this.img = img;
    }

    public Products(int id, String name, String img, String desc, double price, int quantity, int categoryId) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.desc = desc;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImg() {
        return img;
    }

    public String getDesc() {
        return desc;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int setCategoryId(int categoryId) {
        return categoryId;
    }

}
