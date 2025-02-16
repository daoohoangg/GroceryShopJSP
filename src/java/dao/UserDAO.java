/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import context.DBContext;
import entity.Category;
import entity.Product;
import entity.User;
import java.awt.desktop.UserSessionEvent;
import java.io.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author daoho
 */
public class UserDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
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
             ps.executeUpdate();
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
    public List<User> searchUserByName(String userName){
        List<User> userList = new ArrayList<>();
         String query = "SELECT * FROM [USER] where username like ?";
         try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+userName+"%");
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
             e.printStackTrace();
         }
         return userList;
    }
    public void updateAccount(int userId,String name, String email, String password,String role, boolean status){
         String query = "UPDATE [user] \n" +
                        "SET username = ?,\n" +
                            "usermail = ?,\n" +
                            "password = ?,\n" +
                            "role = ?,\n" +
                            "status = ?\n" +
                            "\n" +
                        "WHERE\n" +
                            "id = ?;";
         try {
             conn = new DBContext().getConnection();
             ps = conn.prepareStatement(query);
             ps.setString(1, name);
             ps.setString(2, email);
             ps.setString(3, password);
             ps.setString(4, role);
             ps.setBoolean(5, status);
             ps.setInt(6, userId);
             ps.executeQuery();
         } catch (Exception e) {
         }
    }
    public void setInactiveAccount(int id){
        List<User> list = getAllAccount(); 
        User u = new User();
        for (User user : list) {
            if(user.getId() == id){
                u = user;
            }
        }
        String query ="";
        if(u.getStatus() == true){
             query = "UPDATE [user] SET status = 0 where id = ?";
        }else  query = "UPDATE [user] SET status = 1 where id = ?";
        try {
             conn = new DBContext().getConnection();
             ps = conn.prepareStatement(query);
             ps.setInt(1, id);
             ps.executeQuery();
         } catch (Exception e) {
         }
    }
    public void deleteAccount(int id){
        String query = "DELETE FROM [user] WHERE id = ?";
        try {
             conn = new DBContext().getConnection();
             ps = conn.prepareStatement(query);
             ps.setInt(1, id);
             ps.executeQuery();
         } catch (Exception e) {
         }
    }
    public static void main(String[] args) {
        
        UserDAO userDAO = new UserDAO();
        List<User> list = userDAO.getAllAccount(); 
        for (User u : list) {
            System.out.println(u);
        }
    }
}
