/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Product;

/**
 *
 * @author ThanhPham
 */
public class AccountDAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Account getAccountByID(String id) {
        String query = "select * from Account where id  = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
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
    
    public void editSeller(String id, String sell) {
        String query = "UPDATE [dbo].[Account]\n"
                + "   SET [isSell] = ?"
                + " WHERE id = ?";
        try {
            ps = connection.prepareStatement(query);

            ps.setString(1, sell);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public static void main(String[] args) {
        AccountDAO a = new AccountDAO();
        a.editSeller("1", "1");
    }

}
