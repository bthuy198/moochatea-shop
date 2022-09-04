/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.dao;

import java.util.List;
import org.moocha.model.Products;

/**
 *
 * @author LAPTOP KIM ANH
 */
public interface ProductDao {

    public boolean insert(Products product);
    public boolean update(Products product);
    public boolean delete(int id);
    
    public List<Products> all();
    public Products find(int id);
    public Products findByName(String name);
    public List<Products> findByCategoryId(int categoryId);
    public List<Products> searchByName(String productName);
}
