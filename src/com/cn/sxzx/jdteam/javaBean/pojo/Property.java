package com.cn.sxzx.jdteam.javaBean.pojo;

//二级列表  产品名称 产品对应的分类ID
public class Property {
    private int id;           //唯一索引ID
    private String name;      //属性名称
    private int category_id;      //对应的分类

    public Property() {
    }

    public Property(int id, String name, int category_id) {
        this.id = id;
        this.name = name;
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

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    @Override
    public String toString() {
        return "Property{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", category_id=" + category_id +
                '}';
    }
}
