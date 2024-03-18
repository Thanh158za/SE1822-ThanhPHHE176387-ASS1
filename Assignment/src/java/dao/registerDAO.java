/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author ThanhPham
 */
public class registerDAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkAccountExist(String email) {
        String query = "select * from Account\n"
                + "where email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void register(String username, String fullname, String email, String password) {
        String query = "insert into Account\n"
                + "values(?,?,?,?,0,0)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, fullname);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }

    public void editAccount(String username, String fullname, String email, String newpassword,String id) {
        String query = "UPDATE [dbo].[Account]\n"
                + "   SET [username] = ?\n"
                + "      ,[fullname] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[password] = ?\n"
                + " WHERE id = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, fullname);
            ps.setString(3, email);
            ps.setString(4, newpassword);
            ps.setString(5, id);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }
    
    public static void main(String[] args) {
        registerDAO dao = new registerDAO();
        dao.editAccount("111", "111", "111@gmail.com", "1", "12");
    }
}
