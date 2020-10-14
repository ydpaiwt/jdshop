package com.cn.sxzx.jdteam.address.dao;

import com.cn.sxzx.jdteam.javaBean.pojo.Address;
import com.cn.sxzx.jdteam.utils.JDBC;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:10
 */
public class AddDao {
    Connection conn = null;
    PreparedStatement prepare = null;
    Statement state = null;
    //查询地址
    public List<Address> selectadd(int user_id) {
        List<Address> list = new ArrayList<>();
        String sql="select * from address where user_id =?";
        ResultSet resultSet = null;
        conn = JDBC.getConnection();
        try {
            prepare = conn.prepareStatement(sql);
            prepare.setInt(1,user_id);
            resultSet = prepare.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String consignee = resultSet.getString("consignee");
                String address = resultSet.getString("address");
                String mobile = resultSet.getString("mobile");
                int user_id1 = resultSet.getInt("user_id");
                Address address1 = new Address(id,consignee,mobile,address,user_id1);
                list.add(address1);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(resultSet,prepare,conn);
        }
        return null;
    }

    //添加地址
    public void addContion(Address address){
        String sql="insert into address(consignee,address,mobile,user_id) values(?,?,?,?) ";
        conn = JDBC.getConnection();
        try {
            prepare = conn.prepareStatement(sql);
            prepare.setString(1,address.getConsignee());
            prepare.setString(2,address.getAddress());
            prepare.setString(3,address.getMobile());
            prepare.setInt(4,address.getUser_id());
            prepare.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(prepare,conn);
        }
    }
    //删除地址
    public void deleteCon(int id) {
        String sql = "delete from address where id = ?";
        conn = JDBC.getConnection();
        try {
            prepare = conn.prepareStatement(sql);
            prepare.setInt(1,id);
            prepare.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBC.close(prepare,conn);
        }
    }


}

