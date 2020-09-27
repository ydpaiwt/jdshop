package com.cn.sxzx.jdteam.login.service.imp;

import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.login.dao.LoginDao;
import com.cn.sxzx.jdteam.login.service.LoginService;

public class LoginServiceImp implements LoginService {

    LoginDao dao = new LoginDao ();

    @Override
    public User login(String name, String pwd) {
        return dao.login(name,pwd);
    }
}
