package com.cn.sxzx.jdteam.login.service;

import com.cn.sxzx.jdteam.javaBean.pojo.User;

public interface LoginService {
    User login(String name, String pwd);
}
