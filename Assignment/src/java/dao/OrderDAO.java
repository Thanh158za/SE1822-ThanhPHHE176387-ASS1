/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.time.LocalDate;
import model.Account;
import model.Cart;
import java.sql.*;
import model.Item;

/**
 *
 * @author ThanhPham
 */
public class OrderDAO extends DBContext {

    public void addOrder(Account a, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            //add Order
            String sql = "INSERT INTO [dbo].[Order]\n"
                    + "           ([date]\n"
                    + "           ,[Aid]\n"
                    + "           ,[totalmoney])\n"
                    + "     VALUES(?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, a.getId());
            st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            //lay id cua Order vua add
            String sql1 = "select top 1 id from [Order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add vao bangr [OrderDetail]
            if (rs.next()) {
                int oid = rs.getInt("id");
                for (Item i : cart.getItems()) {
                    String sql2 = "INSERT INTO [dbo].[OrderDetail]\n"
                            + "           ([oid]\n"
                            + "           ,[pid]\n"
                            + "           ,[quantity]\n"
                            + "           ,[price])\n"
                            + "     VALUES(?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }
            }
            //cap nhat lai so luong san pham
            String sql3 = "update Product set quantity=quantity-? where id=?";
            PreparedStatement st3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getId());
                st3.executeUpdate();
            }
        } catch (SQLException e) {

        }
    }

    public static void main(String[] args) {

    }
}
