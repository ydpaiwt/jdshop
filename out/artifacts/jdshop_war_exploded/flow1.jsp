<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/27
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>购物车页面</title>
    <link rel="stylesheet" href="style/base.css" type="text/css">
    <link rel="stylesheet" href="style/global.css" type="text/css">
    <link rel="stylesheet" href="style/header.css" type="text/css">
    <link rel="stylesheet" href="style/cart.css" type="text/css">
    <link rel="stylesheet" href="style/footer.css" type="text/css">

    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/cart1.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#total").text(${requestScope.total});
            $("a[id=reduce_num]").click(function () {
                var cart_id = $(this).attr("cart_num");
                $.ajax({
                    url:"cartServlet",
                    data:{"method":"reduceCartNum","cart_id":cart_id},
                    type:"post",
                    success:function (data) {

                    },
                    error:function () {

                    },
                    dataType:"json"
                });
            });
            $("a[id=add_num]").click(function () {
                var cart_id = $(this).attr("cart_num");
                $.ajax({
                    url:"cartServlet",
                    data:{"method":"addCartNum","cart_id":cart_id},
                    type:"post",
                    success:function (data) {

                    },
                    error:function () {

                    },
                    dataType:"json"
                });
            });
        });
    </script>
</head>
<body>
<!-- 顶部导航 start -->
<div class="topnav">
    <div class="topnav_bd w990 bc">
        <div class="topnav_left">

        </div>
        <div class="topnav_right fr">
            <ul>
                <li>您好，欢迎来到京西！</li>

            </ul>
        </div>
    </div>
</div>
<!-- 顶部导航 end -->

<div style="clear:both;"></div>

<!-- 页面头部 start -->
<div class="header w990 bc mt15">
    <div class="logo w990">
        <h2 class="fl"><a href="index.jsp"><img src="images/logo.png" alt="京东商城"></a></h2>
        <div class="flow fr">
            <ul>
                <li class="cur">1.我的购物车</li>
                <li>2.填写核对订单信息</li>
                <li>3.成功提交订单</li>
            </ul>
        </div>
    </div>
</div>
<!-- 页面头部 end -->

<div style="clear:both;"></div>

<!-- 主体部分 start -->
<div class="mycart w990 mt10 bc">
    <h2><span>我的购物车</span></h2>
    <table>
        <thead>
        <tr>
            <th class="col1">商品名称</th>
            <th class="col2">商品信息</th>
            <th class="col3">单价</th>
            <th class="col4">数量</th>
            <th class="col5">小计</th>
            <th class="col6">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.cartList}" var="cart">
            <tr>
                <td class="col1"><img src="images/${cart.product_img}" alt="" /> <strong id="product_name">${cart.product_name}</strong></td>
                <td class="col2"> <p>颜色：${cart.color}</p> <p>尺码：${cart.size}</p> </td>
                <td class="col3">￥<span>${cart.price}</span></td>
                <td class="col4">
<%--                    <input type="button" class="reduce_num" id="reduce_num">--%>
                    <a href="javascript:;" class="reduce_num" id="reduce_num" cart_num="${cart.id}"  ></a>
                    <input type="text" name="amount" value="${cart.number}" class="amount"/>
                    <a href="javascript:;" class="add_num" id="add_num" cart_num="${cart.id}"></a>
<%--                    <input type="button" class="add_num" id="add_num">--%>
                </td>
                <td class="col5">￥<span>${cart.price*cart.number}</span></td>
                <td class="col6"><a href="cartServlet?method=deleteCart&id=${cart.id}">删除</a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="6">购物金额总计： <strong>￥ <span id="total"></span></strong></td>
        </tr>
        </tfoot>
    </table>
    <div class="cart_btn w990 bc mt10">
        <a href="index.jsp" class="continue">继续购物</a>
        <a href="cartServlet?method=toCheck" class="checkout">结 算</a>
    </div>
</div>
<!-- 主体部分 end -->

<div style="clear:both;"></div>
<!-- 底部版权 start -->
<div class="footer w1210 bc mt15">
    <p class="links">
        <a href="">关于我们</a> |
        <a href="">联系我们</a> |
        <a href="">人才招聘</a> |
        <a href="">商家入驻</a> |
        <a href="">千寻网</a> |
        <a href="">奢侈品网</a> |
        <a href="">广告服务</a> |
        <a href="">移动终端</a> |
        <a href="">友情链接</a> |
        <a href="">销售联盟</a> |
        <a href="">京西论坛</a>
    </p>
    <p class="copyright">
        © 2005-2013 京东网上商城 版权所有，并保留所有权利。  ICP备案证书号:京ICP证070359号
    </p>
    <p class="auth">
        <a href=""><img src="images/xin.png" alt="" /></a>
        <a href=""><img src="images/kexin.jpg" alt="" /></a>
        <a href=""><img src="images/police.jpg" alt="" /></a>
        <a href=""><img src="images/beian.gif" alt="" /></a>
    </p>
</div>
<!-- 底部版权 end -->
</body>
</html>
