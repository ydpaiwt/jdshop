package com.cn.sxzx.jdteam.main.dao;

import com.cn.sxzx.jdteam.javaBean.vo.ProductImg;
import com.cn.sxzx.jdteam.javaBean.vo.ProductXi;
import com.cn.sxzx.jdteam.utils.JDBC;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/28 16:57
 */
public class mainDao {
    Connection conn = null;
    PreparedStatement prepStat = null;
    Statement state = null;
    //根据id查找产品信息
    public ProductXi getGoods (int id) {
        String sql = "SELECT p.id,p.name,p.price,v.value,g.product_src FROM product p,product_image g,property_value v WHERE p.id = g.product_id AND p.id = ? AND p.id= v.product_id";
        conn = JDBC.getConnection();
        try {
            prepStat = conn.prepareStatement(sql);
            prepStat.setInt(1, id);
            ResultSet resultSet = prepStat.executeQuery();
            if (resultSet.next()) {
                int ids = resultSet.getInt("id");
                String name = resultSet.getString("name");
                float price = resultSet.getFloat("price");
                String value = resultSet.getString("value");;
                ProductXi productXi = new ProductXi(ids,name,price,value);
                return productXi;
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

    public List<String> getGoodImgs (int product_id) {
        String sql = "SELECT product_src FROM product_image WHERE product_id =?;";
        conn = JDBC.getConnection();
        List<String> imgList = new ArrayList<>();
        try {
            prepStat = conn.prepareStatement(sql);
            prepStat.setInt(1, product_id);
            ResultSet resultSet = prepStat.executeQuery();
            int i = 1;
            while (resultSet.next()) {
                String image = resultSet.getString("product_src");
                imgList.add(image);

            }
            return imgList;
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

//
//    public static void main(String[] args) {
//        mainDao dao = new mainDao();
//        List<String> goodImgs = dao.getGoodImgs(1);
//        for (String img: goodImgs) {
//            System.out.println(img);
//        }
//    }


}