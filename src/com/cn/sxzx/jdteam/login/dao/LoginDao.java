package com.cn.sxzx.jdteam.login.dao;
import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.utils.JDBC;


import java.sql.*;

public class LoginDao {

        Connection conn = null;
        PreparedStatement prepStat = null;
        Statement state = null;

        public User login(String name, String pwd)  {
            String sql = "select id,name,password from user where name = ? and password = ?";
            conn = JDBC.getConnection();
            try {
                prepStat = conn.prepareStatement(sql);
                prepStat.setString(1, name);
                prepStat.setString(2, pwd);
                ResultSet resultSet = prepStat.executeQuery();
                if (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String uname = resultSet.getString("name");
                    String passworld = resultSet.getString("password");
                    User users = new User(id, uname, passworld);
                    return users;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

}
