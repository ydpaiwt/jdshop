package com.cn.sxzx.jdteam.register.service.imp;

import com.cn.sxzx.jdteam.register.dao.RegisterDao;
import com.cn.sxzx.jdteam.register.service.RegisterService;
import com.cn.sxzx.jdteam.javaBean.pojo.User;

import java.sql.SQLException;

public class RegisterServiceImp implements RegisterService {

    RegisterDao dao = new RegisterDao();

    @Override
    public boolean register(String name, String pwd) {
        return dao.register(name,pwd);

    }

}
