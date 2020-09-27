package com.cn.sxzx.jdteam.javaBean.pojo;

//订单表
public class Order_ {
    private int id;        //唯一索引ID
    private String order_code;      //订单号
    private String address;      //收货地址
    private String post;      //邮编
    private String receiver;        //收货人姓名
    private String mobile;        //手机号码
    private String user_message;      //用户备注的信息
    private String create_date;        //订单创建时间
    private String pay_date;        //订单支付时间
    private String delivery_date;     //发货日期
    private String confirm_date;       //确认收货的日期
    private int user_id;          //对应的用户ID
    private String status;      //订单状态

    public Order_() {
    }

    public Order_(int id, String order_code, String address, String post, String receiver, String mobile, String user_message, String create_date, String pay_date, String delivery_date, String confirm_date, int user_id, String status) {
        this.id = id;
        this.order_code = order_code;
        this.address = address;
        this.post = post;
        this.receiver = receiver;
        this.mobile = mobile;
        this.user_message = user_message;
        this.create_date = create_date;
        this.pay_date = pay_date;
        this.delivery_date = delivery_date;
        this.confirm_date = confirm_date;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUser_message() {
        return user_message;
    }

    public void setUser_message(String user_message) {
        this.user_message = user_message;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getPay_date() {
        return pay_date;
    }

    public void setPay_date(String pay_date) {
        this.pay_date = pay_date;
    }

    public String getDelivery_date() {
        return delivery_date;
    }

    public void setDelivery_date(String delivery_date) {
        this.delivery_date = delivery_date;
    }

    public String getConfirm_date() {
        return confirm_date;
    }

    public void setConfirm_date(String confirm_date) {
        this.confirm_date = confirm_date;
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
                ", address='" + address + '\'' +
                ", post='" + post + '\'' +
                ", receiver='" + receiver + '\'' +
                ", mobile='" + mobile + '\'' +
                ", user_message='" + user_message + '\'' +
                ", create_date='" + create_date + '\'' +
                ", pay_date='" + pay_date + '\'' +
                ", delivery_date='" + delivery_date + '\'' +
                ", confirm_date='" + confirm_date + '\'' +
                ", user_id=" + user_id +
                ", status='" + status + '\'' +
                '}';
    }
}
