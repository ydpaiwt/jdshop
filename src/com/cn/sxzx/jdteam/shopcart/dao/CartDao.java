package com.cn.sxzx.jdteam.shopcart.dao;

import com.cn.sxzx.jdteam.utils.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @Author:ydp
 * @Date:2020/9/27 14:59
 */
public class CartDao {
    Connection conn=null;
    Statement state= null;
    PreparedStatement ps = null;
    public void addCart(){
        String sql = "";
    }

    //删除商品
    public void deleteCart(int id) {
        String sql = "delete from cart where id =?";
        conn = JDBC.getConnection();
        int i = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(ps,conn);
        }
        if (i>0){
            System.out.println("删除成功");
        }

    }
    //展示购物车商品
    public void showCart() {
        String sql = "select * from cart where user_id = ?";

    }
}
