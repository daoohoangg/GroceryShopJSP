/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author daoho
 */
public class Category {
    private int id;
    private String name;
    private String categoryimg;

    public Category() {
    }

    public Category(int id, String name, String categoryimg) {
        this.id = id;
        this.name = name;
        this.categoryimg = categoryimg;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategoryimg() {
        return categoryimg;
    }

    public void setCategoryimg(String categoryimg) {
        this.categoryimg = categoryimg;
    }

    
    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", name=" + name + " img: "+categoryimg+'}';
    }
    
}
