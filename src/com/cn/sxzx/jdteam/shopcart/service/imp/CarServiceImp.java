package com.cn.sxzx.jdteam.shopcart.service.imp;

import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.shopcart.dao.CartDao;
import com.cn.sxzx.jdteam.shopcart.service.CartService;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:00
 */
public class CarServiceImp implements CartService {
    CartDao dao = new CartDao();
    //删除购物车
    @Override
    public void deleteCart(int id) {
        dao.deleteCart(id);
    }

    @Override
    public List<Cart> showCart(int user_id) {
        return dao.showCart(user_id);
    }

    @Override
    public void addCart(Cart cart) {
        dao.addCart(cart);
    }
}
