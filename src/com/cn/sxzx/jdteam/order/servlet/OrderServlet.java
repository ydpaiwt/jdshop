package com.cn.sxzx.jdteam.order.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.Cart;
import com.cn.sxzx.jdteam.javaBean.pojo.Order_;
import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.order.service.OrderService;
import com.cn.sxzx.jdteam.order.service.imp.OrderServiceImp;
import com.cn.sxzx.jdteam.shopcart.service.CartService;
import com.cn.sxzx.jdteam.shopcart.service.imp.CarServiceImp;
import com.cn.sxzx.jdteam.utils.util.Order_code;
import com.cn.sxzx.jdteam.utils.util.Time_get;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:31
 */
public class OrderServlet extends HttpServlet {
    HttpServletRequest request;
    HttpServletResponse response;
    OrderService service = new OrderServiceImp();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.request = request;
        this.response = response;
        String method = request.getParameter("method");

//        if (method.equals("showCart")){
//            this.showCart();
//        }

        if (method.equals("toOrder")){
            this.addOrder();
            this.showOrder();
        }

        if (method.equals("showOrder")){
            this.showOrder();
        }

    }
//    //获取购物车信息
//    private void showCart() throws ServletException, IOException {
//        User user = (User)request.getSession().getAttribute("user");
//        int user_id = user.getId();
//        List<Cart> cartList = service.showCart(user_id);
//        double total = service.getTotal(cartList);
//        request.setAttribute("total",total);
//        request.setAttribute("cartList",cartList);
//        request.getRequestDispatcher("/flow1.jsp").forward(request,response);
//    }

    //点击提交订单后添加订单
    private void addOrder() {
        User user = (User)request.getSession().getAttribute("user");
        int user_id = user.getId();
        CartService cartService = new CarServiceImp();
        List<Cart> cartList = cartService.showCart(user_id);
        for (Cart cart :cartList){
            String order_code = Order_code.getBillCode();
            String product_img = cart.getProduct_img();
            String product_name = cart.getProduct_name();
            int number = cart.getNumber();
            String consignee = user.getName();
            double total = cart.getPrice()*cart.getNumber();
            String pay_data = Time_get.getTime();
            String status = "待发货";
            Order_ order = new Order_(order_code,product_img,product_name,number,consignee,total,pay_data,user_id,status);
            service.addOrder(order);
        }
        double total = service.getTotal(cartList);
    }

    private void showOrder() throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("user");
        int user_id = user.getId();
        int pageNow = Integer.parseInt(request.getParameter("pageNow"));
        List<Order_> order_itemPoList = service.showOrder(user_id,pageNow);
        //总页数
        int pageCount = service.pageCount();
        request.setAttribute("pageCount", pageCount);
        request.setAttribute("pageNow", pageNow);
        request.setAttribute("order_itemPoList", order_itemPoList);
        request.getRequestDispatcher("orderV/order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
