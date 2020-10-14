<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/27
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>填写核对订单信息</title>
    <link rel="stylesheet" href="style/base.css" type="text/css">
    <link rel="stylesheet" href="style/global.css" type="text/css">
    <link rel="stylesheet" href="style/header.css" type="text/css">
    <link rel="stylesheet" href="style/fillin.css" type="text/css">
    <link rel="stylesheet" href="style/footer.css" type="text/css">

    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/cart2.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#total").text(${requestScope.total});
            $("#submit").click(function(){
                var address = "${requestScope.addressList}";
                if (address.length!=0){
                    var form = $("form[id=myform]").serialize();
                    var url = "orderServlet?"+form;
                    location.href = url;
                }else {
                    alert("请设置收货信息！");
                    location.href="addServlet?method=selectadd";
                }

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
                <li>您好，欢迎来到京西!</li>

            </ul>
        </div>
    </div>
</div>
<!-- 顶部导航 end -->

<div style="clear:both;"></div>

<!-- 页面头部 start -->
<div class="header w990 bc mt15">
    <div class="logo w990">
        <h2 class="fl"><a href="index.jsp"><img src="images/logo.png" alt="京西商城"></a></h2>
        <div class="flow fr flow2">
            <ul>
                <li>1.我的购物车</li>
                <li class="cur">2.填写核对订单信息</li>
                <li>3.成功提交订单</li>
            </ul>
        </div>
    </div>
</div>
<!-- 页面头部 end -->

<div style="clear:both;"></div>

<!-- 主体部分 start -->
<div class="fillin w990 bc mt15">
    <div class="fillin_hd">
        <h2>填写并核对订单信息</h2>
    </div>

    <div class="fillin_bd">
        <!-- 收货人信息  start-->
        <div class="address">
                <ul>
                    <c:forEach items="${requestScope.addressList}" var="address">
                        <li class="cur">
                            <form action="orderServlet" id="myform" method="post" >
                                <input type="hidden" name="method" value="toOrder">
                                <input type="radio" name="address" value="${address.consignee}"/>${address.consignee}  ${address.address}  ${address.mobile}
                            </form>
                            <a href="">删除</a>
                        </li>
                    </c:forEach>

                    <li><input type="button" name="address" class="new_address" value="使用新地址"/></li>
                </ul>
        </div>
        <!-- 收货人信息  end-->

        <!-- 商品清单 start -->
        <div class="goods">
            <h3>商品清单</h3>
            <table>
                <thead>
                <tr>
                    <th class="col1">商品</th>
                    <th class="col2">规格</th>
                    <th class="col3">价格</th>
                    <th class="col4">数量</th>
                    <th class="col5">小计</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.cartList}" var="cart">
                <tr>
                    <td class="col1"><img src="images/${cart.product_img}" alt="" />  <strong>${cart.product_name}</strong></td>
                    <td class="col2"> <p>颜色：${cart.color}</p> <p>尺码：${cart.size}</p> </td>
                    <td class="col3">￥${cart.price}</td>
                    <td class="col4"> ${cart.number}</td>
                    <td class="col5"><span>${cart.number*cart.price}</span></td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- 商品清单 end -->

    </div>

    <div class="fillin_ft">
        <a id="submit"><span>提交订单</span></a>
        <p>应付总额：￥<strong id="total"></strong>元</p>

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
