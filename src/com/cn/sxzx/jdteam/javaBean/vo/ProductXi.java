package com.cn.sxzx.jdteam.javaBean.vo;

import java.io.InputStream;

public class ProductXi {
    private int id;
    private String name;
    private float price;
    private String value;
    private String sub_title;
    private String product_src;
    private int sale;


    public ProductXi() {
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public String getSub_title() {
        return sub_title;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public ProductXi(int id, String name, float price, String value, String sub_title,int sale) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.value = value;
        this.sub_title = sub_title;
        this.sale = sale;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getProduct_src() {
        return product_src;
    }

    public void setProduct_src(String product_src) {
        this.product_src = product_src;
    }

    @Override
    public String toString() {
        return "ProductXi{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", value='" + value + '\'' +
                ", sub_title='" + sub_title + '\'' +
                ", product_src='" + product_src + '\'' +
                ", sale=" + sale +
                '}';
    }
}
