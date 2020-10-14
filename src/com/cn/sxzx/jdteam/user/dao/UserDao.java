package com.cn.sxzx.jdteam.user.dao;

import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.utils.JDBC;

import java.sql.*;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:17
 */
public class UserDao {
    Connection conn=null;
    Statement state= null;
    PreparedStatement ps = null;
    //展示用户信息
    public User showUser(int user_id) {
        String sql = "select * from user where id = ?";
        ResultSet rest = null;
        conn= JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,user_id);
            rest = ps.executeQuery();
            while (rest.next()){
                int id = rest.getInt("id");
                String name = rest.getString("name");
                String password = rest.getString("password");
                String sex = rest.getString("sex");
                String realname = rest.getString("realname");
                String phone = rest.getString("phone");
                String email = rest.getString("email");
                User user = new User(id,name,password,sex,realname,phone,email);
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(rest,ps,conn);
        }
        return null;
    }

    public void updateUser(User user1) {
        String sql = "update user set realname = ?,sex = ?,phone = ?,email = ? where id = ?";
        conn = JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,user1.getRealname());
            ps.setString(2,user1.getSex());
            ps.setString(3,user1.getPhone());
            ps.setString(4,user1.getEmail());
            ps.setInt(5,user1.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(null,ps,conn);
        }
    }
}
