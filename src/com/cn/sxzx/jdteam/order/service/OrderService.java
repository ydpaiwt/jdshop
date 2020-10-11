package com.cn.sxzx.jdteam.order.service;


import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.javaBean.pojo.Order_;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:13
 */
public interface OrderService {
    int pageSize = 3 ;

    List<Order_> showOrder(int user_id,int pageNow);

    int pageCount();


    void addOrder(Order_ order);

//    List<Cart> showCart(int user_id);

    double getTotal(List<Cart> cartList);
}
