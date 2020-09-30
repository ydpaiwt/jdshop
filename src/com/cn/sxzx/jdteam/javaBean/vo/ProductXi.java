package com.cn.sxzx.jdteam.javaBean.vo;

import java.io.InputStream;

public class ProductXi {
    private int id;
    private String name;
    private float price;
    private String value;
    private String product_src;

    public ProductXi() {
    }

    public ProductXi(int id,String name, float price, String value) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.value = value;
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
                ", product_src=" + product_src +
                '}';
    }
}
