package com.cn.sxzx.jdteam.javaBean.pojo;

//用户收货地址
public class Address {
    private int id;       //地址ID
    private String address;     //详细地址
    private String review;         //收货人姓名
    private String mobile;            //收货人电话

    public Address() {
    }

    public Address(int id, String address, String review, String mobile) {
        this.id = id;
        this.address = address;
        this.review = review;
        this.mobile = mobile;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", review='" + review + '\'' +
                ", mobile='" + mobile + '\'' +
                '}';
    }
}
