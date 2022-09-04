/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.dao;

import java.util.List;
import org.moocha.model.Users;

/**
 *
 * @author LAPTOP KIM ANH
 */
public interface UserDao {
    public boolean insert(Users user);
    public boolean update(Users user);
    public boolean delete(int userId);
    
    /**
     *
     * @return 
     */
    public List<Users> all();
    public Users findById(int id);
    public Users findByEmail (String email);

}
