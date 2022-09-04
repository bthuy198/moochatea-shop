/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.moocha.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class MySQLDriver {
    private final String URL = "jdbc:mysql://localhost:3306/shop";
	private final String USER = "root";
	private final String PASS = "";
	
	private static MySQLDriver instance;
	
	private MySQLDriver () {}
	

    public static MySQLDriver getInstance() {
        if (instance == null) instance = new MySQLDriver ();
        return instance;
    }
	
    public Connection getConnection(){
        Connection conn = null;
        try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(URL, USER, PASS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
