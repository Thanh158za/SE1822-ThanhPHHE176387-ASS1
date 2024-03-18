/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Account;
import java.sql.*;

/**
 *
 * @author ThanhPham
 */
public class loginDAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String email, String pass) {
        String query = "  select * from Account\n"
                + "  where email = ?\n"
                + "  and password = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
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

    public static void main(String[] args) {
        loginDAO ldao = new loginDAO();
        Account a = ldao.login("admin4@example.com", "password10");
        System.out.println(a);
    }
}
