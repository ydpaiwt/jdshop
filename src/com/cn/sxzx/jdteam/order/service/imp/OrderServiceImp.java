package com.cn.sxzx.jdteam.order.service.imp;


import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.javaBean.pojo.Order_;
import com.cn.sxzx.jdteam.order.dao.OrderDao;
import com.cn.sxzx.jdteam.order.service.OrderService;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:13
 */
public class OrderServiceImp implements OrderService {
    OrderDao dao = new OrderDao();
    @Override
    public List<Order_> showOrder(int user_id,int pageNow) {
        pageNow = (pageNow - 1) * OrderService.pageSize;
        return dao.showOrder(user_id,pageNow,OrderService.pageSize);
    }
    @Override
    public int pageCount() {
        int pageCount = 0;
        int count = dao.pageCount();
        if (count % OrderService.pageSize == 0){
            pageCount = count / OrderService.pageSize;
        }else{
            pageCount = count / OrderService.pageSize +1;
        }
        return pageCount;
    }

    @Override
    public void addOrder(Order_ order) {
        dao.addOrder(order);
    }

//    @Override
//    public List<Cart> showCart(int user_id) {
//        return null;
//    }


    @Override
    public double getTotal(List<Cart> cartList) {
        int total = 0;
        for (Cart cart :cartList) {
            total += cart.getNumber()*cart.getPrice();
        }
        return total;
    }
}
