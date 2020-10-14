package com.cn.sxzx.jdteam.user.service.imp;

import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.user.dao.UserDao;
import com.cn.sxzx.jdteam.user.service.UserService;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:18
 */
public class UserServiceImp implements UserService {
    UserDao dao = new UserDao();

    @Override
    public User showUser(int user_id) {
        return dao.showUser(user_id);
    }

    @Override
    public void updateUser(User user1) {
        dao.updateUser(user1);
    }
}
