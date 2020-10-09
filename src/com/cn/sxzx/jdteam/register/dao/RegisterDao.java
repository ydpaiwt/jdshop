package com.cn.sxzx.jdteam.register.dao;

import com.cn.sxzx.jdteam.utils.JDBC;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import java.sql.Connection;
import java.sql.SQLException;

public class RegisterDao {
    Connection conn = null;
    PreparedStatement prepStat = null;
    Statement state = null;

    public boolean register(String name, String pwd) {
        String sql = "insert into users (name,password,realname,phone,state,birthday,userInfo) values (?,?,?,?,?,?,?)";
        conn = JDBC.getConnection();
        try {
            prepStat = (PreparedStatement) conn.prepareStatement(sql);
            prepStat.setString(1,name);
            prepStat.setString(2,pwd);
            int i = prepStat.executeUpdate();
            if (i>0){
                System.out.println("注册成功");
                return true;
            }
//            ResultSet resultSet = prepStat.executeQuery();
//            if (resultSet.next()){
//                int id = resultSet.getInt("id");
//                String uname = resultSet.getString("uname");
//                String passworld = resultSet.getString("pwd");
//                Users users = new Users(id,uname,passworld);
//                return users;
//            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
