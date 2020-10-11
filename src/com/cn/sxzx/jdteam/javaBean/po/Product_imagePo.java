package com.cn.sxzx.jdteam.javaBean.po;

public class Product_imagePo {
    private int id;
    private int product_id;
    private String product_src;

    public Product_imagePo() {
    }

    public Product_imagePo(int id, int product_id, String product_src) {
        this.id = id;
        this.product_id = product_id;
        this.product_src = product_src;
    }

    public Product_imagePo(int product_id, String product_src) {
        this.product_id = product_id;
        this.product_src = product_src;
    }

    public Product_imagePo(String product_src) {
        this.product_src = product_src;
    }

    public Product_imagePo(int product_id) {
        this.product_id = product_id;
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

    public String getProduct_src() {
        return product_src;
    }

    public void setProduct_src(String product_src) {
        this.product_src = product_src;
    }

    @Override
    public String toString() {
        return "Product_imagePo{" +
                "id=" + id +
                ", product_id=" + product_id +
                ", product_src='" + product_src + '\'' +
                '}';
    }
}
