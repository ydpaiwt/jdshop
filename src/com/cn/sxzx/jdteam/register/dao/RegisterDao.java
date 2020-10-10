package com.cn.sxzx.jdteam.register.dao;

import com.cn.sxzx.jdteam.utils.JDBC;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterDao {
    Connection conn = null;
    PreparedStatement prepStat = null;
    Statement state = null;

    public boolean register(String name, String pwd){
        String sql = "insert into user (name,password) values (?,?)";

        try {
            conn = JDBC.getConnection();
            prepStat = conn.prepareStatement(sql);
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
            JDBC.close(prepStat,conn);
        }
        return false;
    }
}
