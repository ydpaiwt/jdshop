package com.cn.sxzx.jdteam.javaBean.po;

public class UserPo {
    private int id;     //唯一的索引ID
    private String name;      //用户名称
    private String password;       //用户密码
    private String realname;     //真实姓名
    private int state;       //状态(0-没登录,1-登录)
    private String birthday;     //生日
    private String userInfo;     //个人简介
    private int sex;      //性别(0-男,1-女)

    public UserPo() {
    }

    public UserPo(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public UserPo(String name) {
        this.name = name;
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

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(String userInfo) {
        this.userInfo = userInfo;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "UserPo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", realname='" + realname + '\'' +
                ", state=" + state +
                ", birthday='" + birthday + '\'' +
                ", userInfo='" + userInfo + '\'' +
                ", sex=" + sex +
                '}';
    }
}
