package com.cn.sxzx.jdteam.shopcart.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:01
 */
public class CartServlet extends HttpServlet {
    HttpServletRequest request;
    HttpServletResponse response;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.request=req;
        this.response=resp;
        String method = request.getParameter("method");
        if (method.equals("toCart")){
            toShopCart();
        }
    }

    private void toShopCart() {
        Product product = (Product) request.getAttribute("product");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
