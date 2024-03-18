/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ThanhPham
 */
public class Account {
    private int id;
    private String username;
    private String fullname;
    private String email;
    private String pass;
    private int isSell;
    private int isAdmin;

    public Account() {
    }

    public Account(int id, String username, String fullname, String email, String pass, int isSell, int isAdmin) {
        this.id = id;
        this.username = username;
        this.fullname = fullname;
        this.email = email;
        this.pass = pass;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", fullname=" + fullname + ", email=" + email + ", pass=" + pass + ", isSell=" + isSell + ", isAdmin=" + isAdmin + '}';
    }
  
    
    
}
