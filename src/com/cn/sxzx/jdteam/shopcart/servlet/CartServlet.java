package com.cn.sxzx.jdteam.shopcart.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.javaBean.pojo.Product;
import com.cn.sxzx.jdteam.javaBean.pojo.User;
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
            this.showCart();
        }else if (method.equals("showCart")){
            this.showCart();
        }
    }
    //展示购物车
    private void showCart() throws IOException, ServletException {
//        int user_id = Integer.parseInt(request.getParameter("user_id"));
        User user = (User)request.getSession().getAttribute("user");
        int user_id = user.getId();
        List<Cart> cartList = service.showCart(user_id);
        double total = service.getTotal(cartList);
        request.setAttribute("total",total);
        request.setAttribute("cartList",cartList);
        request.getRequestDispatcher("/flow1.jsp").forward(request,response);

    }
    //添加购物车
    private void addCart() {
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        double price = Double.parseDouble(request.getParameter("price"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        User user = (User)request.getSession().getAttribute("user");
        int user_id = user.getId();
        Cart cart = new Cart(image,name,color,size,price,amount,user_id);
        service.addCart(cart);
    }
    //删除购物车
    private void deleteCart(){
        int id = Integer.parseInt(request.getParameter("id"));
        service.deleteCart(id);

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}




