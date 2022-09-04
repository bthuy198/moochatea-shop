/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.moocha;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import org.moocha.dao.Database;
import org.moocha.dao.DatabaseDao;

/**
 *
 * @author LAPTOP KIM ANH
 */
public class BaseServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();

        DatabaseDao.init(new Database());
    }
}
