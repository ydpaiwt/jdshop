package com.cn.sxzx.jdteam.javaBean.po;

import com.cn.sxzx.jdteam.javaBean.pojo.Order_item;

public class Order_itemPo extends Order_item {

    private Order_Po order_po;
    private ProductPo productPo;
    private Product_imagePo product_imagePo;
    private UserPo userPo;

    public Order_itemPo(Order_Po order_po, ProductPo productPo, UserPo userPo, Product_imagePo product_imagePo) {
        this.order_po = order_po;
        this.product_imagePo = product_imagePo;
        this.productPo = productPo;
        this.userPo = userPo;
    }

    public Order_itemPo(int id, int product_id, int order_id, int user_id, int number, Order_Po order_po, ProductPo productPo, Product_imagePo product_imagePo, UserPo userPo) {
        super(id, product_id, order_id, user_id, number);
        this.order_po = order_po;
        this.productPo = productPo;
        this.product_imagePo = product_imagePo;
        this.userPo = userPo;
    }

    public Order_itemPo(int id, Order_Po order_po, ProductPo productPo, UserPo userPo, Product_imagePo product_imagePo) {
        super(id);
        this.order_po = order_po;
        this.productPo = productPo;
        this.product_imagePo = product_imagePo;
        this.userPo = userPo;
    }

    public Order_Po getOrder_po() {
        return order_po;
    }

    public void setOrder_po(Order_Po order_po) {
        this.order_po = order_po;
    }

    public ProductPo getProductPo() {
        return productPo;
    }

    public void setProductPo(ProductPo productPo) {
        this.productPo = productPo;
    }

    public Product_imagePo getProduct_imagePo() {
        return product_imagePo;
    }

    public void setProduct_imagePo(Product_imagePo product_imagePo) {
        this.product_imagePo = product_imagePo;
    }

    public UserPo getUserPo() {
        return userPo;
    }

    public void setUserPo(UserPo userPo) {
        this.userPo = userPo;
    }

    @Override
    public String toString() {
        return "Order_itemPo{" +
                "order_po=" + order_po +
                ", productPo=" + productPo +
                ", product_imagePo=" + product_imagePo +
                ", userPo=" + userPo +
                '}';
    }
}
