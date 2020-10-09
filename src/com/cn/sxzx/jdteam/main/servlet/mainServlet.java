package com.cn.sxzx.jdteam.main.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.javaBean.vo.ProductImg;
import com.cn.sxzx.jdteam.javaBean.vo.ProductXi;
import com.cn.sxzx.jdteam.main.service.imp.mainServiceImp;
import com.cn.sxzx.jdteam.main.service.mainservice;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/28 16:58
 */
public class mainServlet extends HttpServlet {
    HttpServletRequest request = null;
    HttpServletResponse response = null;

    mainservice service = new mainServiceImp();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.request = req;
        this.response = resp;

        String method = request.getParameter("method");
            if(method.equals("toGoods")){
                this.toGoods();
            }
//        String method2 = request.getParameter("method2");
//            if(method2.equals("toGoods2")){
//                this.toGoods2();
//            }
    }
        private void toGoods() throws IOException, ServletException {
            int id = Integer.parseInt(request.getParameter("id"));
            int product_id = Integer.parseInt(request.getParameter("product_id"));
            ProductXi productXi = service.getGoods(id);
            List<String> imgList=service.getGoodImgs(product_id);
            request.setAttribute("imgList",imgList);
            request.getSession().setAttribute("productXi",productXi);
            request.getRequestDispatcher("goods.jsp").forward(request,response);
        }
//        private void toGoods2() throws IOException, ServletException {
//            int id = Integer.parseInt(request.getParameter("id"));
//            int product_id = Integer.parseInt(request.getParameter("product_id"));
//            ProductXi productXi = service.getGoods(id);
//            List<String> imgList=service.getGoodImgs(product_id);
//            request.getSession().setAttribute("img",imgList.get(0));
//            request.getSession().setAttribute("productXi",productXi);
//            request.getRequestDispatcher("goods2.jsp").forward(request,response);
//        }
}