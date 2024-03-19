/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ThanhPham
 */
public class ItemOrder {
    private int orderid;
    private String name;
    private int quantity;
    private double price;
    private String date;
    private double totalprice;

    public ItemOrder() {
    }

    public ItemOrder(int orderid, String name, int quantity, double price, String date, double totalprice) {
        this.orderid = orderid;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.date = date;
        this.totalprice = totalprice;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    @Override
    public String toString() {
        return "ItemOrder{" + "orderid=" + orderid + ", name=" + name + ", quantity=" + quantity + ", price=" + price + ", date=" + date + ", totalprice=" + totalprice + '}';
    }
    
    
    
}
