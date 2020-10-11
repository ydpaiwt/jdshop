package com.cn.sxzx.jdteam.order.dao;

import com.cn.sxzx.jdteam.javaBean.pojo.Order_;
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
    public List<Order_> showOrder(int user_id,int pageNow, int pageSize){
        List<Order_> orderList = new ArrayList<>();
        String sql = "select * from order_ where user_id = ? LIMIT ?,?";
        try {
            conn = JDBC.getConnection();
            prepare = conn.prepareStatement(sql);
            prepare.setInt(1,user_id);
            prepare.setInt(2,pageNow);
            prepare.setInt(3,pageSize);
            ResultSet rest = prepare.executeQuery();
            while (rest.next()){
                int id = rest.getInt("id");
                String order_code = rest.getString("order_code");
                String product_img = rest.getString("product_img");
                String product_name = rest.getString("product_name");
                int number = rest.getInt("number");
                String consignee = rest.getString("consignee");
                double total = rest.getDouble("total");
                String pay_date = rest.getString("pay_date");
                int user_id1 = rest.getInt("user_id");
                String status = rest.getString("status");
                Order_ order = new Order_(order_code,product_img,product_name,number,consignee,total,pay_date,user_id1,status);
                orderList.add(order);
            }
            return orderList;
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

    //查询订单总条数
    public int pageCount() {
        ResultSet rest = null;
        String sql = "select count(id) from order_";
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

    public void addOrder(Order_ order) {
        String sql = "insert into order_(order_code,product_img,product_name,number,consignee,total,pay_data,user_id,status) values(?,?,?,?,?,?,?,?,?) ";
        conn = JDBC.getConnection();
        int i = 0;
        try {
            prepare = conn.prepareStatement(sql);
            prepare.setString(1,order.getOrder_code());
            prepare.setString(2,order.getProduct_img());
            prepare.setString(3,order.getProduct_name());
            prepare.setInt(4,order.getNumber());
            prepare.setString(5,order.getConsignee());
            prepare.setDouble(6,order.getTotal());
            prepare.setString(7,order.getPay_data());
            prepare.setInt(8,order.getUser_id());
            prepare.setString(9,order.getStatus());
            i = prepare.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(prepare,conn);
        }
        if (i>0){
            System.out.println("添加成功！");
        }
    }
}
