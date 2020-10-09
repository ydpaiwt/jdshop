package com.cn.sxzx.jdteam.javaBean.pojo;

/**
 * @Author:ydp
 * @Date:2020/9/28 22:46
 */
public class Cart {
    private int id;
    private String product_name;
    private String color;
    private String size;
    private double price;
    private int user_id;

    public Cart() {
    }

    public Cart(int id, String product_name, String color, String size, double price, int user_id) {
        this.id = id;
        this.product_name = product_name;
        this.color = color;
        this.size = size;
        this.price = price;
        this.user_id = user_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", product_name='" + product_name + '\'' +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", price=" + price +
                ", user_id=" + user_id +
                '}';
    }
}
