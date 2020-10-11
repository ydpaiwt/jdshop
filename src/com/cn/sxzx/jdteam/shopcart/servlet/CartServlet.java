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
import java.io.PrintWriter;
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
        }else if(method.equals("deleteCart")){
            this.deleteCart();
            this.showCart();
        }else if (method.equals("showCart")){
            this.showCart();
        }else if (method.equals("reduceCartNum")){
            this.reduceCartNum();
        }else if (method.equals("addCartNum")){
            this.addCartNum();
        }
    }

    private void addCartNum() {
        int id = Integer.parseInt(request.getParameter("cart_id"));
        service.addCartNum(id);
    }

    private void reduceCartNum() {
        int id = Integer.parseInt(request.getParameter("cart_id"));
        service.reduceCartNum(id);
    }

    //展示购物车
    private void showCart() throws IOException, ServletException {
        User user = (User)request.getSession().getAttribute("user");
        int user_id = user.getId();
        List<Cart> cartList = service.showCart(user_id);
        double total = service.getTotal(cartList);
        request.setAttribute("total",total);
        request.setAttribute("cartList",cartList);
        request.getRequestDispatcher("/flow1.jsp").forward(request,response);

    }
    //添加购物车
    private void addCart() throws IOException {
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        double price = Double.parseDouble(request.getParameter("price"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        User user = (User)request.getSession().getAttribute("user");
        int user_id = user.getId();
        Cart cart = new Cart(image,name,color,size,price,amount,user_id);
        boolean istrue = service.addCart(cart);
        response.setContentType("utf-8");
        PrintWriter out = response.getWriter();
        if (istrue){
            out.println("添加成功！");
        }
        out.flush();
        out.close();

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




