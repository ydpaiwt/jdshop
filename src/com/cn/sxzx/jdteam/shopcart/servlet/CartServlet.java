package com.cn.sxzx.jdteam.shopcart.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.javaBean.pojo.Product;
import com.cn.sxzx.jdteam.javaBean.vo.ProductXi;
import com.cn.sxzx.jdteam.shopcart.service.CartService;
import com.cn.sxzx.jdteam.shopcart.service.imp.CarServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:01
 */
public class CartServlet extends HttpServlet {
    CartService service = new CarServiceImp();
    HttpServletRequest request;
    HttpServletResponse response;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.request=req;
        this.response=resp;
        String method = request.getParameter("method");
        if (method.equals("toCart")){
            this.addCart();
            this.showCart();
        }else if(method.equals("deleteCart")){
            this.deleteCart();
        }
    }
    //展示购物车
    private void showCart() throws IOException {
        Integer user_id = Integer.parseInt(request.getParameter("user_id"));
        service.showCart(user_id);
        response.sendRedirect("flow1.jsp");
    }
    //添加购物车
    private void addCart() {
        String name = request.getParameter("name");
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        String price = request.getParameter("price");
        Cart cart = new Cart();
        service.addCart(cart);
    }
    //删除购物车
    private void deleteCart(){
        int id = 1;
        service.deleteCart(id);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}




