package com.cn.sxzx.jdteam.javaBean.pojo;

/**
 * @Author:ydp
 * @Date:2020/9/28 22:46
 */
public class Cart {
    private int id;
    private int product_id;
    private int property_id;
    private int number;
    private int user_id;

    public Cart() {
    }

    public Cart(int id, int product_id, int property_id, int number, int user_id) {
        this.id = id;
        this.product_id = product_id;
        this.property_id = property_id;
        this.number = number;
        this.user_id = user_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getProperty_id() {
        return property_id;
    }

    public void setProperty_id(int property_id) {
        this.property_id = property_id;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
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
                ", product_id=" + product_id +
                ", property_id=" + property_id +
                ", number=" + number +
                '}';
    }
}