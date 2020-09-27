package com.cn.sxzx.jdteam.javaBean.pojo;

//产品的ID  对应的属性ID  具体的属性值
public class Property_value {
    private int id;      //唯一的索引ID
    private int product_id;        //对应产品ID
    private int property_id;       //对应属性ID
    private String value;          //产品的具体属性值

    public Property_value() {
    }

    public Property_value(int id, int product_id, int property_id, String value) {
        this.id = id;
        this.product_id = product_id;
        this.property_id = property_id;
        this.value = value;
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

    public int getProperty_id() {
        return property_id;
    }

    public void setProperty_id(int property_id) {
        this.property_id = property_id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "Property_value{" +
                "id=" + id +
                ", product_id=" + product_id +
                ", property_id=" + property_id +
                ", value='" + value + '\'' +
                '}';
    }
}
