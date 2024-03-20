/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ThanhPham
 */
public class InformationAccountOrder {
    private String fullname;
    private String email;
    private String productName;
    private int quantity;
    private double price;
    private int sellId;

    public InformationAccountOrder() {
    }

    public InformationAccountOrder(String fullname, String email, String productName, int quantity, double price, int sellId) {
        this.fullname = fullname;
        this.email = email;
        this.productName = productName;
        this.quantity = quantity;
        this.price = price;
        this.sellId = sellId;
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

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
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

    public int getSellId() {
        return sellId;
    }

    public void setSellId(int sellId) {
        this.sellId = sellId;
    }

    @Override
    public String toString() {
        return "InformationAccountOrder{" + "fullname=" + fullname + ", email=" + email + ", productName=" + productName + ", quantity=" + quantity + ", price=" + price + ", sellId=" + sellId + '}';
    }

    

    
    
    
}
