package com.cn.sxzx.jdteam.shopcart.service;

import com.cn.sxzx.jdteam.javaBean.pojo.Cart;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 14:59
 */
public interface CartService {
    //删除购物车
    void deleteCart(int id);

    List<Cart> showCart(int user_id);

    boolean addCart(Cart cart);

    double getTotal(List<Cart> cartList);

    void reduceCartNum(int id);

    void addCartNum(int id);

    int getProductNumber(int user_id);
}
