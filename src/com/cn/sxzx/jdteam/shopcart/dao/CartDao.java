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
    //添加商品信息
    public boolean addCart(Cart cart){
        String sql = "insert into cart(product_img,product_name,color,size,price,number,user_id) values(?,?,?,?,?,?,?)";
        conn = JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,cart.getProduct_img());
            ps.setString(2,cart.getProduct_name());
            ps.setString(3,cart.getColor());
            ps.setString(4,cart.getSize());
            ps.setDouble(5,cart.getPrice());
            ps.setInt(6,cart.getNumber());
            ps.setInt(7,cart.getUser_id());
            int i = ps.executeUpdate();
            if (i>0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(ps,conn);
        }
        return false;

    }

    //删除商品
    public void deleteCart(int id) {
        String sql = "delete from cart where id = ?";
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
        ResultSet rest = null;
        List<Cart> cartList = new ArrayList<>();
        String sql = "select * from cart where user_id = ?";
        conn = JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,user_id);
            rest = ps.executeQuery();
            while (rest.next()){
                int id = rest.getInt("id");
                String product_image = rest.getString("product_img");
                String product_name = rest.getString("product_name");
                String color = rest.getString("color");
                String size = rest.getString("size");
                double price = rest.getDouble("price");
                int number = rest.getInt("number");
                int user_id1 = rest.getInt("user_id");
                Cart cart = new Cart(id,product_image,product_name,color,size,price,number,user_id1);
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

    public Cart selectCardName(Cart cart) {
        String sql = "select * from cart where product_name = ?";
        ResultSet rest = null;
        conn = JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,cart.getProduct_name());
            rest = ps.executeQuery();
            while (rest.next()){
                int id = rest.getInt("id");
                String product_image = rest.getString("product_img");
                String product_name = rest.getString("product_name");
                String color = rest.getString("color");
                String size = rest.getString("size");
                double price = rest.getDouble("price");
                int number = rest.getInt("number");
                int user_id = rest.getInt("user_id");
                Cart cart1 = new Cart(id,product_image,product_name,color,size,price,number,user_id);
                return cart1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(rest,ps,conn);
        }
        return null;
    }

    public boolean updateCartNumber(Cart cart1) {
        String sql = "update cart set number = ? where id =?";
        conn = JDBC.getConnection();
        int i = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,cart1.getNumber());
            ps.setInt(2,cart1.getId());
            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(ps,conn);
        }
        if (i>0){
            return true;
        }
        return false;
    }

    public Cart selectCardID(int id) {
        String sql = "select * from cart where id = ?";
        ResultSet rest = null;
        conn = JDBC.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            rest = ps.executeQuery();
            while (rest.next()){
                int id1 = rest.getInt("id");
                String product_image = rest.getString("product_img");
                String product_name = rest.getString("product_name");
                String color = rest.getString("color");
                String size = rest.getString("size");
                double price = rest.getDouble("price");
                int number = rest.getInt("number");
                int user_id = rest.getInt("user_id");
                Cart cart1 = new Cart(id1,product_image,product_name,color,size,price,number,user_id);
                return cart1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(rest,ps,conn);
        }
        return null;
    }
}
