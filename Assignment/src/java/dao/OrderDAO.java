/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.time.LocalDate;
import model.Account;
import model.Cart;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.InformationAccountOrder;
import model.Item;
import model.ItemOrder;
import model.Product;

/**
 *
 * @author ThanhPham
 */
public class OrderDAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

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

    public List<ItemOrder> getAllOrderbyAccountId(int id) {
        List<ItemOrder> list = new ArrayList<>();
        String query = "select o.id,p.name,od.quantity,p.price,o.date,od.price from OrderDetail od\n"
                + "join [Order] o on o.id = od.oid\n"
                + "join [Product] p on p.id = od.pid\n"
                + "join [Account] a on a.id = o.Aid\n"
                + "where a.id = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ItemOrder(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getDouble(4)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<InformationAccountOrder> getInformationAccountOrder() {
        List<InformationAccountOrder> list = new ArrayList<>();
        String query = "select a1.fullname,a1.email,p.name,od.quantity,od.price,p.sell_ID from Product p\n"
                + "join [OrderDetail] od on od.pid = p.id\n"
                + "join Account a on p.sell_ID = a.id\n"
                + "join [Order] o on o.id = od.oid\n"
                + "join Account a1 on a1.id = o.Aid";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new InformationAccountOrder(rs.getString(1),
                                                     rs.getString(2),
                                                     rs.getString(3),
                                                     rs.getInt(4),
                                                     rs.getDouble(5),
                                                     rs.getInt(6)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        System.out.println(o.getInformationAccountOrder());
    }
}
