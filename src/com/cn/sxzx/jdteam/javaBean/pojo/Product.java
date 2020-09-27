package com.cn.sxzx.jdteam.javaBean.pojo;

//商品信息
public class Product {
    private int id;    //唯一索引ID
    private String name;    //产品的名称
    private String sub_title;     //小标题
    private float price;     //价格
    private int sale;    //销量
    private int stock;      //库存
    private int category_id;     //对应的分类ID

    public Product() {
    }

    public Product(int id, String name, String sub_title, float price, int sale, int stock, int category_id) {
        this.id = id;
        this.name = name;
        this.sub_title = sub_title;
        this.price = price;
        this.sale = sale;
        this.stock = stock;
        this.category_id = category_id;
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

    public String getSub_title() {
        return sub_title;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sub_title='" + sub_title + '\'' +
                ", price=" + price +
                ", sale=" + sale +
                ", stock=" + stock +
                ", category_id=" + category_id +
                '}';
    }
}
