/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

public class CategoryDAO extends DBContext{
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try{
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List<Category> list = dao.getAllCategory();
        for (Category c : list) {
            System.out.println(c);
        }
    }
}
