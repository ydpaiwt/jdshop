package com.cn.sxzx.jdteam.order.dao;

import com.cn.sxzx.jdteam.javaBean.po.*;
import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.utils.JDBC;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:13
 */
public class OrderDao {
    Connection conn = null;
    PreparedStatement prepare = null;
    Statement state = null;
    //查询订单并完成分页
    public List<Order_itemPo> showOrder(int pageNow, int pageSize){
        List<Order_itemPo> order_itemPoList = new ArrayList<>();
        String sql = "SELECT i.id,o.order_code,g.product_src,u.name,p.price,o.pay_date,o.status\n" +
                "FROM product p,order_ o,USER u,order_item i,product_image g\n" +
                "WHERE  p.id = i.product_id AND o.id = i.order_id AND u.id = i.user_id AND g.product_id = i.product_id LIMIT ?,?";
        try {
            conn = JDBC.getConnection();
            prepare = conn.prepareStatement(sql);
            prepare.setInt(1,pageNow);
            prepare.setInt(2,pageSize);
            ResultSet rest = prepare.executeQuery();
            while (rest.next()){
                int id = rest.getInt("id");
                String order_code = rest.getString("order_code");
                String product_src = rest.getString("product_src");
                String name = rest.getString("name");
                float price = rest.getFloat("price");
                String pay_date = rest.getString("pay_date");
                String status = rest.getString("status");
                Order_Po order_po = new Order_Po(order_code,pay_date,status);
                ProductPo productPo = new ProductPo(price);
                Product_imagePo product_imagePo = new Product_imagePo(product_src);
                UserPo userPo = new UserPo(name);
                Order_itemPo order_itemPo = new Order_itemPo(id,order_po,productPo,userPo,product_imagePo);
                order_itemPoList.add(order_itemPo);
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
        return order_itemPoList;
    }


    //查询订单总条数
    public int pageCount() {
        ResultSet rest = null;
        String sql = "select count(id) from order_item";

        try {
            conn = JDBC.getConnection();
            state = conn.createStatement();
            rest = state.executeQuery(sql);
            if (rest.next()){
                int count = rest.getInt("count(id)");
                return count;
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
        return 0;
    }
    //通过user_id查询购物车里的信息
    public List<Cart> showCart(int user_id) {
        ResultSet rest = null;
        List<Cart> cartList = new ArrayList<>();
        String sql = "select * from cart where user_id = ?";
        conn = JDBC.getConnection();
        try {
            prepare = conn.prepareStatement(sql);
            prepare.setInt(1,user_id);
            rest = prepare.executeQuery();
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
            JDBC.close(rest,prepare,conn);
        }
        return null;
    }
}
