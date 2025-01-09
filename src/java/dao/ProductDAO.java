/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import context.DBContext;
import entity.Category;
import entity.Product;
import java.io.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author daoho
 */
public class ProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    public List<Product> getAllProducts(){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1),
                rs.getString(2),
                rs.getFloat(3),
                rs.getString(4),
                rs.getInt(5),
                rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getProductsByProductID(String dpid){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, dpid);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1),
                rs.getString(2),
                rs.getFloat(3),
                rs.getString(4),
                rs.getInt(5),
                rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getImgProductByID(String pid){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM ProductDetail where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1),
                rs.getString(2),
                rs.getFloat(3),
                rs.getString(4),
                rs.getInt(5),
                rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
        
    }
    public List<Product> getProductsByCategoryID(String cid){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product where categoryid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1),
                rs.getString(2),
                rs.getFloat(3),
                rs.getString(4),
                rs.getInt(5),
                rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
     public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Category(rs.getInt(1),
                rs.getString(2),
                rs.getString(3)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        List<Product> list = productDAO.getImgProductByID("1");
        for (Product category : list) {
            System.out.println(category);
        }
    }
}
