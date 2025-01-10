/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author daoho
 */
public class User {
    private int id;
    private String userName;
    private String userMail;
    private String passWord;
    private String role;
    private Boolean status;

    public User() {
    }

    public User(int id, String userName, String userMail, String passWord, String role, Boolean status) {
        this.id = id;
        this.userName = userName;
        this.userMail = userMail;
        this.passWord = passWord;
        this.role = role;
        this.status = status;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", userName=" + userName + ", userMail=" + userMail + ", passWord=" + passWord + ", role=" + role + ", status=" + status + '}';
    }
    
}
