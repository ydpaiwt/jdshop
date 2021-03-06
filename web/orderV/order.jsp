<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/27
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>订单页面</title>
    <link rel="stylesheet" href="./style/base.css" type="text/css">
    <link rel="stylesheet" href="./style/global.css" type="text/css">
    <link rel="stylesheet" href="./style/header.css" type="text/css">
    <link rel="stylesheet" href="./style/home.css" type="text/css">
    <link rel="stylesheet" href="./style/order.css" type="text/css">
    <link rel="stylesheet" href="./style/bottomnav.css" type="text/css">
    <link rel="stylesheet" href="./style/footer.css" type="text/css">

    <script type="text/javascript" src="./js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="./js/header.js"></script>
    <script type="text/javascript" src="./js/home.js"></script>
</head>
<body>
<!-- 顶部导航 start -->
<div class="topnav">
    <div class="topnav_bd w1210 bc">
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

<!-- 头部 start -->
<div class="header w1210 bc mt15">
    <!-- 头部上半部分 start 包括 logo、搜索、用户中心和购物车结算 -->
    <div class="logo w1210">
        <h1 class="fl"><img src="./images/logo.png" alt="京西商城"></h1>
        <!-- 头部搜索 start -->
        <div class="search fl">
            <div class="search_form">
                <div class="form_left fl"></div>
                <form action="#" name="serarch" method="get" class="fl">
                    <input type="text" class="txt" value="请输入商品关键字" /><input type="button" class="btn" value="搜索" />
                </form>
                <div class="form_right fl"></div>
            </div>

            <div style="clear:both;"></div>

        </div>
        <!-- 头部搜索 end -->

        <!-- 用户中心 start-->
        <div class="user fl">
            <dl>
                <dt>
                    <em></em>
                    <a href="">用户中心</a>
                    <b></b>
                </dt>
                <dd>
                    <%--                    <div class="prompt">--%>
                    <%--                        您好，请<a href="loginServlet?method=toLogin">登录</a>--%>
                    <%--                    </div>--%>
                    <div class="uclist mt10">
                        <ul class="list1 fl">
                            <li><a href="userServlet?method=toUser">用户信息></a></li>
                        </ul>

                        <ul class="fl">
                            <li><a href="addServlet?method=selectadd">收货地址></a></li>
                        </ul>
                    </div>
                    <div style="clear:both;"></div>
                </dd>
            </dl>
        </div>
        <!-- 用户中心 end-->
        <div class="menu"></div>
        <!-- 购物车 start -->
        <div class="cart fl">
            <dl>
                <dt>
                    <a href="cartServlet?method=showCart">去购物车结算</a>
                    <b></b>
                </dt>
            </dl>
        </div>
        <!-- 购物车 end -->
    </div>
    <!-- 头部上半部分 end -->

    <div style="clear:both;"></div>
    <!-- 导航条部分 start -->
    <div class="nav w1210 bc mt10">
        <!--  商品分类部分 start-->
        <div class="category fl cat1"> <!-- 非首页，需要添加cat1类 -->

        </div>
        <!--  商品分类部分 end-->

        <div class="navitems fl">
            <ul class="fl">
                <li class="current"><a href="index.jsp">首页</a></li>
            </ul>
            <div class="right_corner fl"></div>
        </div>
    </div>
    <!-- 导航条部分 end -->

    <div style="clear:both;"></div>

    <!-- 页面主体 start -->
    <div class="main w1210 bc mt10">
        <div class="crumb w1210">
            <h2><span>> 我的订单</span></h2>
        </div>
        <!-- 左侧导航菜单 start -->
        <div class="menu fl">
            <div class="menu_wrap">
                <dl>
                    <dt>账户中心 <b></b></dt>
                    <dd><b>.</b><a href="userServlet?method=toUser">账户信息</a></dd>
                    <dd><b>.</b><a href="addServlet?method=selectadd">收货地址</a></dd>
                </dl>
            </div>
        </div>
        <!-- 左侧导航菜单 end -->
        <!-- 右侧内容区域 start -->
        <div class="main w1210 bc mt10">
            <div class="main w1210 bc mt10">
                <table>
                    <thead>
                    <tr>
                        <th width="15%">订单号</th>
                        <th width="35%">订单商品</th>
                        <th width="5%">数量</th>
                        <th width="10%">收货人</th>
                        <th width="10%">订单金额</th>
                        <th width="15%">下单时间</th>
                        <th width="10%">订单状态</th>
                    </tr>
                    </thead>
                    <c:forEach items="${requestScope.orderList}" var="order">
                        <tbody>
                        <tr>
                            <td>${order.order_code}</td>
                            <td><img src="images/${order.product_img}"/> <strong>${order.product_name}</strong> </td>
                            <td>${order.number}</td>
                            <td>${order.consignee}</td>
                            <td>${order.total}</td>
                            <td>${order.pay_data}</td>
                            <td>${order.status}</td>
                        </tr>
                        </tbody>
                    </c:forEach>
                </table>

                <c:if test="${requestScope.pageNow > 1}">
                    <a href="orderServlet?method=showOrder&pageNow=${pageNow - 1}" align="center">上一页</a>
                </c:if>
                <c:if test="${requestScope.pageNow < requestScope.pageCount}">
                    <a href="orderServlet?method=showOrder&pageNow=${pageNow + 1}" align="center">下一页</a>
                </c:if>
            </div>
        </div>
        <!-- 右侧内容区域 end -->
    </div>
    <!-- 页面主体 end-->
    <div style="clear:both;"></div>
    <!-- 底部导航 start -->
    <div class="bottomnav w1210 bc mt10">
        <div class="bnav1">
            <h3><b></b> <em>购物指南</em></h3>
            <ul>
                <li><a href="">购物流程</a></li>
                <li><a href="">会员介绍</a></li>
                <li><a href="">团购/机票/充值/点卡</a></li>
                <li><a href="">常见问题</a></li>
                <li><a href="">大家电</a></li>
                <li><a href="">联系客服</a></li>
            </ul>
        </div>
        <div class="bnav2">
            <h3><b></b> <em>配送方式</em></h3>
            <ul>
                <li><a href="">上门自提</a></li>
                <li><a href="">快速运输</a></li>
                <li><a href="">特快专递（EMS）</a></li>
                <li><a href="">如何送礼</a></li>
                <li><a href="">海外购物</a></li>
            </ul>
        </div>
        <div class="bnav3">
            <h3><b></b> <em>支付方式</em></h3>
            <ul>
                <li><a href="">货到付款</a></li>
                <li><a href="">在线支付</a></li>
                <li><a href="">分期付款</a></li>
                <li><a href="">邮局汇款</a></li>
                <li><a href="">公司转账</a></li>
            </ul>
        </div>
        <div class="bnav4">
            <h3><b></b> <em>售后服务</em></h3>
            <ul>
                <li><a href="">退换货政策</a></li>
                <li><a href="">退换货流程</a></li>
                <li><a href="">价格保护</a></li>
                <li><a href="">退款说明</a></li>
                <li><a href="">返修/退换货</a></li>
                <li><a href="">退款申请</a></li>
            </ul>
        </div>
        <div class="bnav5">
            <h3><b></b> <em>特色服务</em></h3>
            <ul>
                <li><a href="">夺宝岛</a></li>
                <li><a href="">DIY装机</a></li>
                <li><a href="">延保服务</a></li>
                <li><a href="">家电下乡</a></li>
                <li><a href="">京东礼品卡</a></li>
                <li><a href="">能效补贴</a></li>
            </ul>
        </div>
    </div>
    <!-- 底部导航 end -->

    <div style="clear:both;"></div>
    <!-- 底部版权 start -->
    <div class="footer w1210 bc mt10">
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
            <a href=""><img src="./images/xin.png" alt="" /></a>
            <a href=""><img src="./images/kexin.jpg" alt="" /></a>
            <a href=""><img src="./images/police.jpg" alt="" /></a>
            <a href=""><img src="./images/beian.gif" alt="" /></a>
        </p>
    </div>
    <!-- 底部版权 end -->
</div>
</body>
</html>