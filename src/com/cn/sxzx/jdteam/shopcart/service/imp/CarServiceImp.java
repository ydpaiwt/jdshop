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
    public boolean addCart(Cart cart) {
         Cart cart1 = dao.selectCardName(cart);
         if (cart1!=null){
             cart1.setNumber(cart1.getNumber()+cart.getNumber());
             return dao.updateCartNumber(cart1);
         }else {
             return dao.addCart(cart);
         }

    }

    @Override
    public double getTotal(List<Cart> cartList) {
        int total = 0;
        for (Cart cart :cartList) {
            total += cart.getNumber()*cart.getPrice();
        }
        return total;
    }

    @Override
    public void reduceCartNum(int id) {
        Cart cart = dao.selectCardID(id);
        if (cart.getNumber()==1){
            cart.setNumber(1);
        }else {
            cart.setNumber(cart.getNumber()-1);
        }
        dao.updateCartNumber(cart);
    }

    @Override
    public void addCartNum(int id) {
        Cart cart = dao.selectCardID(id);
        cart.setNumber(cart.getNumber()+1);
        dao.updateCartNumber(cart);
    }
}
