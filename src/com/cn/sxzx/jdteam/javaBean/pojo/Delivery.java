package com.cn.sxzx.jdteam.javaBean.pojo;

/**
 * @Author:ydp
 * @Date:2020/9/28 22:34
 * 订单选择送货方式及支付，发票
 */
public class Delivery {
    private int id;     //选择方式ID
    private String delivery; //送货方式
    private String pay; //支付方式
    private String invoice; //发票
    private int cart_id; //商品id

    public Delivery() {
    }

    public Delivery(int id, String delivery, String pay, String invoice, int cart_id) {
        this.id = id;
        this.delivery = delivery;
        this.pay = pay;
        this.invoice = invoice;
        this.cart_id = cart_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public String getInvoice() {
        return invoice;
    }

    public void setInvoice(String invoice) {
        this.invoice = invoice;
    }

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    @Override
    public String toString() {
        return "Delivery{" +
                "id=" + id +
                ", delivery='" + delivery + '\'' +
                ", pay='" + pay + '\'' +
                ", invoice='" + invoice + '\'' +
                ", cart_id=" + cart_id +
                '}';
    }
}
