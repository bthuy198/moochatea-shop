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
public class Category {

    private int id;
    private String name;
    private String desc;

    public Category(String name, String desc) {
        this.name = name;
        this.desc = desc;
    }

    public Category(int id, String name, String desc) {
        this.id = id;
        this.name = name;
        this.desc = desc;
    }

    public static Category find(int id){
        return DatabaseDao.getInstance().getCategoryDao().find(id);
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
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }
    

}
