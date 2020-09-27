package com.cn.sxzx.jdteam.javaBean.pojo;


//产品的id  产品的图片内容
public class Product_image {
    private int id;
    private int product_id;
    private String product_src;

    public Product_image() {
    }

    public Product_image(int id, int product_id, String product_src) {
        this.id = id;
        this.product_id = product_id;
        this.product_src = product_src;
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
        return "Product_image{" +
                "id=" + id +
                ", product_id=" + product_id +
                ", product_src='" + product_src + '\'' +
                '}';
    }
}
