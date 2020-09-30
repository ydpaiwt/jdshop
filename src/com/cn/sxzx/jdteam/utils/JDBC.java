package com.cn.sxzx.jdteam.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @Author:ydp
 * @Date:2020/9/27 14:45
 */
public class JDBC {
    private static DataSource dataSource = null;
    static {
        dataSource = new ComboPooledDataSource();
    }

    public static Connection getConnection(){
        Connection conn= null;
        try {
            conn = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;

    }

    public static void  close(Statement statement,Connection connection){
        close(null,statement,connection);

    }

    public static void close(ResultSet resultSet, Statement statement, Connection connection){
        if (resultSet !=null){
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (statement !=null){
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection !=null){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
