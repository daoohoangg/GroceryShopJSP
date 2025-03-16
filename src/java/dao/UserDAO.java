/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
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

    public List<Account> getAllAccount() {
        List<Account> userList = new ArrayList<>();
        String query = "SELECT * FROM [Account]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                userList.add(new Account(rs.getInt(1),
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

    public Account getAccountById(String id) {
        Account userList = new Account();
        int uid = Integer.parseInt(id);
        String query = "SELECT * FROM [Account] where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            ps.setInt(1, uid);
            userList = new Account(rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getBoolean(6)
            );

        } catch (Exception e) {
        }
        return userList;
    }

    public int totalAccounts() {
        int total = 0;
        List<Account> list = new ArrayList();
        list = getAllAccount();
        for (Account acc : list) {
            if (acc != null) {
                total++;
            }
        }
        return total;
    }

    public void createAccount(String name, String email, String password) {
        String query = "INSERT INTO [Account](username, usermail, password,status) VALUES (?,?,?,0)";
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

    public Account login(String userMail, String passWord) {
        String query = "SELECT\n"
                + "	* \n"
                + "FROM\n"
                + "	Account \n"
                + "WHERE\n"
                + "	usermail = ?"
                + "	AND password = ?; ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userMail);
            ps.setString(2, passWord);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
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

    public List<Account> searchUserByName(String userName) {
        List<Account> userList = new ArrayList<>();
        String query = "SELECT * FROM [Account] where username like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + userName + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                userList.add(new Account(rs.getInt(1),
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

    public boolean updateAccount(int userId, String name, String email, String password, String role) {
        String query = "UPDATE [Account] \n"
                + "SET username = ?,\n"
                + "usermail = ?,\n"
                + "password = ?,\n"
                + "role = ?\n"
                + "WHERE\n"
                + "id = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, role);
            ps.setInt(5, userId);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
        }
        return false;
    }

    public void setInactiveAccount(int id) {
        List<Account> list = getAllAccount();
        Account u = new Account();
        for (Account user : list) {
            if (user.getId() == id) {
                u = user;
            }
        }
        String query = "";
        if (u.getStatus() == true) {
            query = "UPDATE [account] SET status = 0 where id = ?";
        } else {
            query = "UPDATE [account] SET status = 1 where id = ?";
        }
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public void deleteAccount(int id) {
        String query = "DELETE FROM [Account] WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {

        UserDAO udao = new UserDAO();
        boolean check = udao.updateAccount(3, "ope123", "daoo1@gmail.com", "123", "USER");
        System.out.println(check);
//        List<Account> list = userDAO.getAllAccount(); 
//        for (Account u : list) {
//            System.out.println(u);
//        }
    }
}
