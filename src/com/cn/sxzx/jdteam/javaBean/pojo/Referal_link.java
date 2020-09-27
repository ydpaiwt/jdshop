package com.cn.sxzx.jdteam.javaBean.pojo;

//超链接的文字  地址
public class Referal_link {
    private int id;          //唯一索引ID
    private String text;          //超链接显示的文字
    private String link;               //超链接的地址

    public Referal_link() {
    }

    public Referal_link(int id, String text, String link) {
        this.id = id;
        this.text = text;
        this.link = link;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "Referal_link{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
