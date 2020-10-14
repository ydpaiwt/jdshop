package com.cn.sxzx.jdteam.javaBean.pojo;

//用户名称 密码
public class User {
    private int id;     //唯一的索引ID
    private String name;      //用户名称
    private String password;       //用户密码
    private String realname;     //真实姓名
    private String sex;
    private String phone;
    private String email;


    public User() {
    }

    public User(int id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
    }

    public User(int id, String realname, String sex, String phone, String email) {
        this.id = id;
        this.realname = realname;
        this.sex = sex;
        this.phone = phone;
        this.email = email;
    }

    public User(int id, String name, String password, String sex, String realname, String phone, String email) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.sex = sex;
        this.realname = realname;
        this.phone = phone;
        this.email = email;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", realname='" + realname + '\'' +
                ", sex='" + sex + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
