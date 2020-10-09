package com.cn.sxzx.jdteam.shopcart.dao;

import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.utils.JDBC;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 14:59
 */
public class CartDao {
    Connection conn=null;
    Statement state= null;
    PreparedStatement ps = null;
    public void addCart(Cart cart){
        String sql = "insert into cart(product_name,color,size,price,user_id) values(?,?,?,?,?)";
        conn = JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,cart.getProduct_name());
            ps.setString(2,cart.getColor());
            ps.setString(3,cart.getSize());
            ps.setDouble(4,cart.getPrice());
            ps.setInt(5,cart.getUser_id());
            int i = ps.executeUpdate();
            if (i>0){
                System.out.println("添加成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(ps,conn);
        }

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
    public List<Cart> showCart(int user_id) {
        List<Cart> cartList = new ArrayList<>();
        String sql = "select * from cart where user_id = ?";
        ResultSet rest = null;
        conn = JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            rest = ps.executeQuery();
            while (rest.next()){
                int id = rest.getInt("id");
                String product_name = rest.getString("product_name");
                String color = rest.getString("color");
                String size = rest.getString("size");
                double price = rest.getDouble("price");
                int user_id1 = rest.getInt("user_id");
                Cart cart = new Cart(id,product_name,color,size,price,user_id1);
                cartList.add(cart);
            }
            return cartList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(rest,ps,conn);
        }
        return null;

    }
}
