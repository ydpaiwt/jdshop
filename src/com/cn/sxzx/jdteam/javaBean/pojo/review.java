package com.cn.sxzx.jdteam.javaBean.pojo;

//用户评价
public class review {
    private int id;     //唯一索引ID
    private String content;    //评价内容
    private int user_id;          //对应的用户ID
    private int product_id;        //对应的产品ID
    private String createDate;    //评价时间

    public review() {
    }

    public review(int id, String content, int user_id, int product_id, String createDate) {
        this.id = id;
        this.content = content;
        this.user_id = user_id;
        this.product_id = product_id;
        this.createDate = createDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "review{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", user_id=" + user_id +
                ", product_id=" + product_id +
                ", createDate='" + createDate + '\'' +
                '}';
    }
}
