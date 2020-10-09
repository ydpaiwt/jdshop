<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>商品页面</title>
    <link rel="stylesheet" href="style/base.css" type="text/css">
    <link rel="stylesheet" href="style/global.css" type="text/css">
    <link rel="stylesheet" href="style/header.css" type="text/css">
    <link rel="stylesheet" href="style/goods.css" type="text/css">
    <link rel="stylesheet" href="style/common.css" type="text/css">
    <link rel="stylesheet" href="style/bottomnav.css" type="text/css">
    <link rel="stylesheet" href="style/footer.css" type="text/css">

    <!--引入jqzoom css -->
    <link rel="stylesheet" href="style/jqzoom.css" type="text/css">

    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/header.js"></script>
    <script type="text/javascript" src="js/goods.js"></script>
    <script type="text/javascript" src="js/jqzoom-core.js"></script>

    <!-- jqzoom 效果 -->
    <script type="text/javascript">
        $(function(){
            $('.jqzoom').jqzoom({
                zoomType: 'standard',
                lens:true,
                preloadImages: false,
                alwaysOn:false,
                title:false,
                zoomWidth:400,
                zoomHeight:400
            });
        })
    </script>
</head>
<body>
<!-- 顶部导航 start -->
<div class="topnav">
    <div class="topnav_bd w1210 bc">
        <div class="topnav_left">

        </div>
        <div class="topnav_right fr">
            <ul>
                <li>您好，欢迎来到京西！[<a href="loginServlet?method=toLogin">登录</a>] [<a href="registerServlet?method=toRegister">免费注册</a>] </li>
                <li class="line">|</li>
                <li>我的订单</li>
                <li class="line">|</li>
                <li>客户服务</li>

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
        <h1 class="fl"><a><img src="images/logo.png" alt="京西商城"></a></h1>
        <!-- 头部搜索 start -->
        <div class="search fl">
            <div class="search_form">
                <div class="form_left fl"></div>
                <form action="" name="serarch" method="get" class="fl">
                    <input type="text" class="txt" value="请输入商品关键字" /><input type="submit" class="btn" value="搜索" />
                </form>
                <div class="form_right fl"></div>
            </div>

            <div style="clear:both;"></div>

            <div class="hot_search">
                <strong>热门搜索:</strong>
                <a href="mainServlet?method=toGoods&id=1&product_id=1">NIKE休闲男装</a>
                <a href="mainServlet?method=toGoods&id=2&product_id=2">条纹卫衣</a>
                <a href="mainServlet?method=toGoods&id=4&product_id=4">暴龙眼睛</a>
                <a href="mainServlet?method=toGoods&id=3&product_id=3">ins风渔夫帽</a>
            </div>
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
                    <div class="prompt">
                        您好，请<a href="loginServlet?method=toLogin">登录</a>
                    </div>
                    <div class="uclist mt10">
                        <ul class="list1 fl">
                            <li><a href="">用户信息></a></li>
                            <li><a href="">收货地址></a></li>
                        </ul>

                        <ul class="fl">
                            <li><a href="">我的订单></a></li>
                        </ul>

                    </div>
                    <div style="clear:both;"></div>

                </dd>
            </dl>
        </div>
        <!-- 用户中心 end-->

        <!-- 购物车 start -->
        <div class="cart fl">
            <dl>
                <dt>
                    <a href="">去购物车结算</a>
                    <b></b>
                </dt>
                <dd>
                    <div class="prompt">
                        购物车中还没有商品，赶紧选购吧！
                    </div>
                </dd>
            </dl>
        </div>
        <!-- 购物车 end -->
    </div>
    <!-- 头部上半部分 end -->

    <div style="clear:both;"></div>

    <!-- 导航条部分 start -->
    <div class="nav w1210 bc mt10">
        <!--  商品分类部分 start-->
        <div class="category fl cat1">
            <div class="cat_hd off">  <!-- 注意，首页在此div上只需要添加cat_hd类，非首页，默认收缩分类时添加上off类，并将cat_bd设置为不显示(加上类none即可)，鼠标滑过时展开菜单则将off类换成on类 -->
                <h2>商        品</h2>
                <em></em>
            </div>

            <div class="cat_bd none">

                <div class="cat item1">
                    <h3><a href="">配饰</a> <b></b></h3>
                    <div class="cat_detail none">
                        <dl class="dl_1st">
                            <dt><a href="mainServlet?method=toGoods&id=4&product_id=4">眼镜</a></dt>
                            <dt><a href="mainServlet?method=toGoods&id=3&product_id=3">帽子</a></dt>
                        </dl>
                    </div>
                </div>

                <div class="cat">
                    <div class="cat_detail"></div>
                </div>
            </div>
        </div>
        <!--  商品分类部分 end-->

        <div class="navitems fl">
            <ul class="fl">
                <li ><a href="index.jsp">首页</a></li>
                <li ><a href="mainServlet?method=toGoods&id=4&product_id=4">眼镜</a></li>
                <li ><a href="mainServlet?method=toGoods&id=3&product_id=3">帽子</a></li>
            </ul>
            <div class="right_corner fl"></div>
        </div>
    </div>
    <!-- 导航条部分 end -->
</div>
<!-- 头部 end-->

<div style="clear:both;"></div>


<!-- 商品页面主体 start -->
<div class="main w1210 mt10 bc">
    <!-- 面包屑导航 start -->
    <div class="breadcrumb">
        <h2>当前位置：<a href="">首页</a>>${sessionScope.productXi.sub_title}>${sessionScope.productXi.name}</h2>
    </div>
    <!-- 面包屑导航 end -->

    <!-- 主体页面左侧内容 start -->
    <div class="goods_left fl">
        <!-- 相关分类 start -->
        <div class="related_cat leftbar mt10">
            <h2><strong>相关分类</strong></h2>
            <div class="leftbar_wrap">
                <ul>
                    <li><a href="mainServlet?method=toGoods&id=4&product_id=4">眼镜</a></li>
                    <li><a href="mainServlet?method=toGoods&id=3&product_id=3">帽子</a></li>
                    <li><a href="mainServlet?method=toGoods&id=1&product_id=1">男装</a></li>
                    <li><a href="mainServlet?method=toGoods&id=2&product_id=2">女装</a></li>
                </ul>
            </div>
        </div>
        <!-- 相关分类 end -->

        <!-- 相关品牌 start -->
        <div class="related_cat	leftbar mt10">
            <h2><strong>同类品牌</strong></h2>
            <div class="leftbar_wrap">
                <ul>
                    <li><a href="">GAP</a></li>
                    <li><a href="">DIOR</a></li>
                    <li><a href="">热风</a></li>
                    <li><a href="">嘻哈</a></li>
                    <li><a href="">硬糖</a></li>
                    <li><a href="">YSL</a></li>
                    <li><a href="">LV</a></li>
                </ul>
            </div>
        </div>
        <!-- 相关品牌 end -->

        <!-- 热销排行 start -->
        <div class="hotgoods leftbar mt10">
            <h2><strong>热销排行榜</strong></h2>
            <div class="leftbar_wrap">
                <ul>
                    <li></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 主体页面左侧内容 end -->

    <!-- 商品信息内容 start -->
    <div class="goods_content fl mt10 ml10">
        <!-- 商品概要信息 start -->
        <div class="summary">
            <h3><strong>${sessionScope.productXi.name}</strong></h3>
<%--            <c:forEach items="${sessionScope.imgList}" var="img" begin="0" end="0">--%>
            <!-- 图片预览区域 start -->
            <div class="preview fl">
                <div class="midpic">
                    <a href="images/${requestScope.imgList[0]}" style="width: 800px;height: 800px;"  class="jqzoom" rel="gal1">   <!-- 第一幅图片的大图 class 和 rel属性不能更改 -->
                        <img src="images/${requestScope.imgList[0]}" style="width: 350px;height: 350px;" alt="" />               <!-- 第一幅图片的中图 -->
                    </a>
                </div>

                <!--使用说明：此处的预览图效果有三种类型的图片，大图，中图，和小图，取得图片之后，分配到模板的时候，把第一幅图片分配到 上面的midpic 中，其中大图分配到 a 标签的href属性，中图分配到 img 的src上。 下面的smallpic 则表示小图区域，格式固定，在 a 标签的 rel属性中，分别指定了中图（smallimage）和大图（largeimage），img标签则显示小图，按此格式循环生成即可，但在第一个li上，要加上cur类，同时在第一个li 的a标签中，添加类 zoomThumbActive  -->

                <div class="smallpic">
                    <a href="javascript:;" id="backward" class="off"></a>
                    <a href="javascript:;" id="forward" class="on"></a>

                    <script type="text/javascript">
                        $(function () {
                            $("#imgUL li:first").attr("class","cur");
                            $("#imgUL li:first a").attr("class","zoomThumbActive");
                        })
                    </script>


                    <div class="smallpic_wrap">
                        <ul id="imgUL">
                            <c:forEach items="${requestScope.imgList}" var="img" varStatus="i">
                            <li>
                                <a href="javascript:void(0);" rel="{gallery: 'gal1', smallimage: '<%=path%>/images/${img}',largeimage: '<%=path%>/images/${img}'}">
                                    <img style="width: 50px; height: 50px;" src="<%=path%>/images/${img}">
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- 图片预览区域 end -->
<%--            </c:forEach>--%>
            <!-- 商品基本信息区域 start -->
            <div class="goodsinfo fl ml10">
                <form action="" method="get" class="choose">
                    <input type="hidden" name="method" value="toCart">
                    <input type="hidden" name="name" value="${sessionScope.productXi.name}">
                    <input type="hidden" name="price" value="${sessionScope.productXi.price}">
                <ul>
                    <li><span>商品编号： </span>971344</li>
                    <li class="market_price"><span>定价：</span><em>￥499.00</em></li>
                    <li class="shop_price"><span>本店价：</span> <strong>${sessionScope.productXi.price}</strong> <a>(降价通知)</a></li>
                    <li><span>销售：</span>${sessionScope.productXi.sale}</li>
                    <li class="star"><span>商品评分：</span> <strong></strong><a href="">(已有21人评价)</a></li> <!-- 此处的星级切换css即可 默认为5星 star4 表示4星 star3 表示3星 star2表示2星 star1表示1星 -->
                </ul>

                    <ul>
                        <li class="product">
                            <dl>
                                <dt>颜色：</dt>
                                <dd>
                                    <a class="selected" href="javascript:;">${sessionScope.productXi.value} <input type="radio" name="color" value="白色" checked="checked" /></a>

                                    <input type="hidden" name="" value="" />
                                </dd>
                            </dl>
                        </li>

                        <li class="product">
                        </li>
                        <dl>
                            <dt>尺码：</dt>
                            <dd>
                                <a class="selected" href="javascript:;">XL<input type="radio" name="size" value="XL" checked="checked" /></a>
                                <input type="hidden" name="" value="" />
                            </dd>
                        </dl>
                        <li>
                            <dl>
                                <dt>购买数量：</dt>
                                <dd>
                                    <a href="javascript:;" id="reduce_num"></a>
                                    <input type="text" name="amount" value="1" class="amount"/>
                                    <a href="javascript:;" id="add_num"></a>
                                </dd>
                            </dl>
                        </li>

                        <li>
                            <dl>
                                <dt>&nbsp;</dt>
                                <dd>
                                    <input type="submit" class="add_btn" />
                                </dd>
                            </dl>
                        </li>

                    </ul>
                </form>
            </div>
            <!-- 商品基本信息区域 end -->
        </div>
        <!-- 商品概要信息 end -->

        <div style="clear:both;"></div>

        </div>
    <!-- 商品详情 start -->
    <div class="detail">
        <div class="detail_hd">
            <ul>
                <li class="on"><span>商品介绍</span></li>
                <li ><span>售后保障</span></li>
            </ul>
        </div>
        <div class="detail_bd">
            <!-- 商品介绍 start -->
            <div class="introduce detail_div none">
                

                <div class="attr mt15">
                    <ul>
                        <li><span>商品名称：</span>${sessionScope.productXi.name}</li>
                        <li><span>商品产地：</span>中国大陆</li>
                        <li><span>商品规格：</span>全型号</li>
                        <li><span></span></li>
                    </ul>
                </div>
                <div class="desc mt10">
                    <!-- 此处的内容 一般是通过在线编辑器添加保存到数据库，然后直接从数据库中读出 -->
                    <img src="images/${requestScope.imgList[3]}" alt="" />
                    <p style="height:10px;"></p>
                    <img src="images/${requestScope.imgList[4]}" alt="" />
                    <p style="height:10px;"></p>
                    <img src="images/${requestScope.imgList[5]}" alt="" />
                    <p style="height:10px;"></p>
                    <img src="images/${requestScope.imgList[6]}" alt="" />
                    <p style="height:10px;"></p>
                </div>
            </div>
            <!-- 商品介绍 end -->


            <!-- 商品评论 end -->

                <!-- 售后保障 start -->
                <div class="after_sale mt15 none detail_div">
                    <div>
                        <h3>服务承诺：</h3>
                        <p>本商城向您保证所售商品均为正品行货，京东自营商品自带机打发票，与商品一起寄送。凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由本商城联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。本商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！</p>

                        <p>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！</p>

                    </div>

                    <div>
                        <h3>权利声明：</h3>
                        <p>本商城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东商城重要的经营资源，未经许可，禁止非法转载使用。</p>
                        <p>注：本站商品信息均来自于厂商，其真实性、准确性和合法性由信息拥有者（厂商）负责。本站不提供任何保证，并不承担任何法律责任。</p>

                    </div>
                </div>
                <!-- 售后保障 end -->

            </div>
        </div>
        <!-- 商品详情 end -->


    </div>
    <!-- 商品信息内容 end -->


</div>
<!-- 商品页面主体 end -->


<div style="clear:both;"></div>

<!-- 底部导航 start -->
<div class="bottomnav w1210 bc mt10">
    <div class="bnav1">
        <h3><b></b> <em>购物指南</em></h3>
        <ul>
            <li><a >购物流程</a></li>
            <li><a >会员介绍</a></li>
            <li><a >团购/机票/充值/点卡</a></li>
            <li><a >常见问题</a></li>
            <li><a >大家电</a></li>
            <li><a >联系客服</a></li>
        </ul>
    </div>

    <div class="bnav2">
        <h3><b></b> <em>配送方式</em></h3>
        <ul>
            <li><a >上门自提</a></li>
            <li><a >快速运输</a></li>
            <li><a >特快专递（EMS）</a></li>
            <li><a >如何送礼</a></li>
            <li><a >海外购物</a></li>
        </ul>
    </div>


    <div class="bnav3">
        <h3><b></b> <em>支付方式</em></h3>
        <ul>
            <li><a >货到付款</a></li>
            <li><a >在线支付</a></li>
            <li><a >分期付款</a></li>
            <li><a >邮局汇款</a></li>
            <li><a >公司转账</a></li>
        </ul>
    </div>

    <div class="bnav4">
        <h3><b></b> <em>售后服务</em></h3>
        <ul>
            <li><a >退换货政策</a></li>
            <li><a >退换货流程</a></li>
            <li><a >价格保护</a></li>
            <li><a >退款说明</a></li>
            <li><a >返修/退换货</a></li>
            <li><a >退款申请</a></li>
        </ul>
    </div>

    <div class="bnav5">
        <h3><b></b> <em>特色服务</em></h3>
        <ul>
            <li><a >夺宝岛</a></li>
            <li><a >DIY装机</a></li>
            <li><a >延保服务</a></li>
            <li><a >家电下乡</a></li>
            <li><a >京东礼品卡</a></li>
            <li><a >能效补贴</a></li>
        </ul>
    </div>
</div>
<!-- 底部导航 end -->

<div style="clear:both;"></div>
<!-- 底部版权 start -->
<div class="footer w1210 bc mt10">
    <p class="links">
        <a >关于我们</a> |
        <a>联系我们</a> |
        <a >人才招聘</a> |
        <a >商家入驻</a> |
        <a >千寻网</a> |
        <a >奢侈品网</a> |
        <a >广告服务</a> |
        <a >移动终端</a> |
        <a >友情链接</a > |
        <a >销售联盟</a> |
        <a >京西论坛</a>
    </p>
    <p class="copyright">
        © 2005-2013 京东网上商城 版权所有，并保留所有权利。  ICP备案证书号:京ICP证070359号
    </p>
    <p class="auth">
        <a ><img src="images/xin.png" alt="" /></a>
        <a ><img src="images/kexin.jpg" alt="" /></a>
        <a ><img src="images/police.jpg" alt="" /></a>
        <a ><img src="images/beian.gif" alt="" /></a>
    </p>
</div>
<!-- 底部版权 end -->

<script type="text/javascript">
    document.execCommand("BackgroundImageCache", false, true);
</script>
</body>
</html>