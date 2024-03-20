/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    
//    public List<Product> getAllProduct() {
//        List<Product> list = new ArrayList<>();
//        String query = "select * from Product";
//        try {
//            ps = connection.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getInt(8)));
//            }
//        } catch (Exception e) {
//
//        }
//        return list;
//    }

    public List<Product> getTrendyProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select top 12 * from Product\n";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }   

    public List<Product> getNewProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select top 4 * from Product\n"
                + "order by id desc";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductAsc() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product order by price asc";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductDesc() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product order by price desc";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductByNameAsc() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product order by name asc";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductByNameDesc() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product order by name desc";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductBycID(String cID) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where cID = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, cID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }   

    public List<Product> getNewProductBycID(String cID) {
        List<Product> list = new ArrayList<>();
        String query = "select top 4 *  from Product\n"
                + "where cID = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, cID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Product getProductByID(String id) {
        String query = "select * from Product\n"
                + "where id = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where [name] like ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> searchByName1(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select  top 4 * from Product\n"
                + "where [name] like ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where sell_ID = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public void deleteProduct(String pid) {
        String query = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE id = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void insertProduct(String name, String image, String price,
            String title, String description, String color, String quantity, String pcategory, int sid) {
        String query = "INSERT INTO Product (name, image, price, tittle, description, color, quantity, cID, sell_ID)\n"
                + "VALUES\n"
                + "  (?,?,?,?,?,?,?,?,?);";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, color);
            ps.setString(7, quantity);
            ps.setString(8, pcategory);
            ps.setInt(9, sid);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }

    public void editProduct(String name, String image, String price,
            String title, String description, String color, String quantity, String category, String pid) {
        String query = "UPDATE [dbo].[Product]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[tittle] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[color] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[cID] = ?\n"
                + " WHERE id = ?";
        try {
            ps = connection.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, color);
            ps.setString(7, quantity);
            ps.setString(8, category);
            ps.setString(9, pid);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }
    
    public List<Product> getListByPage(List<Product> list,int start,int end){
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();

        System.out.println();
    }
}
