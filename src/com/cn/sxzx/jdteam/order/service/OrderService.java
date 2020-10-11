package com.cn.sxzx.jdteam.order.service;

import com.cn.sxzx.jdteam.javaBean.po.Order_itemPo;
import com.cn.sxzx.jdteam.javaBean.pojo.Cart;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:13
 */
public interface OrderService {
    int pageSize = 3 ;

    List<Order_itemPo> showOrder(int pageNow);

    int pageCount();

//    void delete(int i);

    void addOrder();

    List<Cart> showCart(int user_id);

    double getTotal(List<Cart> cartList);
}
