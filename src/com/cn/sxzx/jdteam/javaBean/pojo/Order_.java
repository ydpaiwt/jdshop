package com.cn.sxzx.jdteam.javaBean.pojo;

//订单表
public class Order_ {
    private int id;
    private String order_code;
    private String product_img;
    private String product_name;
    private int number;
    private String consignee;
    private double total;
    private String pay_data;
    private int user_id;
    private String status;

    public Order_() {
    }

    public Order_(String order_code, String product_img, String product_name, int number, String consignee, double total, String pay_data, int user_id, String status) {
        this.order_code = order_code;
        this.product_img = product_img;
        this.product_name = product_name;
        this.number = number;
        this.consignee = consignee;
        this.total = total;
        this.pay_data = pay_data;
        this.user_id = user_id;
        this.status = status;
    }

    public Order_(int id, String order_code, String product_img, String product_name, int number, String consignee, double total, String pay_data, int user_id, String status) {
        this.id = id;
        this.order_code = order_code;
        this.product_img = product_img;
        this.product_name = product_name;
        this.number = number;
        this.consignee = consignee;
        this.total = total;
        this.pay_data = pay_data;
        this.user_id = user_id;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrder_code() {
        return order_code;
    }

    public void setOrder_code(String order_code) {
        this.order_code = order_code;
    }

    public String getProduct_img() {
        return product_img;
    }

    public void setProduct_img(String product_img) {
        this.product_img = product_img;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getPay_data() {
        return pay_data;
    }

    public void setPay_data(String pay_data) {
        this.pay_data = pay_data;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order_{" +
                "id=" + id +
                ", order_code='" + order_code + '\'' +
                ", product_img='" + product_img + '\'' +
                ", product_name='" + product_name + '\'' +
                ", number=" + number +
                ", consignee='" + consignee + '\'' +
                ", total=" + total +
                ", pay_data='" + pay_data + '\'' +
                ", user_id=" + user_id +
                ", status='" + status + '\'' +
                '}';
    }
}
