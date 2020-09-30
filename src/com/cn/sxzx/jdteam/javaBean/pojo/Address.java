package com.cn.sxzx.jdteam.javaBean.pojo;

//用户收货地址
public class Address {
    private int id;       //地址ID
    private String consignee;   //收货人姓名
    private String address;     //详细地址
    private String mobile;      //收货人电话
    private String user_id;     //用户id

    public Address() {
    }

    public Address(int id, String consignee, String address, String mobile, String user_id) {
        this.id = id;
        this.consignee = consignee;
        this.address = address;
        this.mobile = mobile;
        this.user_id = user_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
}
