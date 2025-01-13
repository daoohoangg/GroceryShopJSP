/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import context.DBContext;
import entity.Category;
import entity.Product;
import entity.User;
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
     
     public List<User> getAllAccount(){
         List<User> userList = new ArrayList<>();
         String query = "SELECT * FROM [USER]";
         try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {                 
                userList.add(new User(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getBoolean(6)
                ));
            }
         } catch (Exception e) {
         }
         return userList;
                 
     }
     public void createAccount(String name, String email, String password){
         String query = "INSERT INTO [User](username, usermail, password,status) VALUES (?,?,?,0)";
         try {
             conn = new DBContext().getConnection();
             ps = conn.prepareStatement(query);
             ps.setString(1, name);
             ps.setString(2, email);
             ps.setString(3, password);
             ps.executeQuery();
         } catch (Exception e) {
         }
     }
     public User login(String userMail, String passWord){
         String query = "SELECT * FROM [USER] WHERE usermail = ? AND password = ? ";
         try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,userMail);
            ps.setString(2, passWord);
            rs = ps.executeQuery();
            while (rs.next()) {                 
                return new User(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getBoolean(6)
                );
            }
         } catch (Exception e) {
         }
         return null;
     }
    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        List<User> list = productDAO.getAllAccount();
        for (User category : list) {
            System.out.println(category);
        }
//        User u = productDAO.login("daviiddao@gmail.com", "daohoang2911!");
//        System.out.println(u.toString());
    }
}
