package com.cn.sxzx.jdteam.javaBean.pojo;

//订单对应的产品表
public class Order_item {
    private int id;     //唯一索引ID
    private int product_id;    //对应产品ID
    private int order_id;      //对应订单ID
    private int user_id;     //对应用户ID
    private int number;         //对应产品购买的数量

    public Order_item() {
    }

    public Order_item(int id, int product_id, int order_id, int user_id, int number) {
        this.id = id;
        this.product_id = product_id;
        this.order_id = order_id;
        this.user_id = user_id;
        this.number = number;
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

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Order_item{" +
                "id=" + id +
                ", product_id=" + product_id +
                ", order_id=" + order_id +
                ", user_id=" + user_id +
                ", number=" + number +
                '}';
    }
}
