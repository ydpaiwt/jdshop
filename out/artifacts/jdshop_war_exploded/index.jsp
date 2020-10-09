<%--
  Created by IntelliJ IDEA.
  User: ydp
  Date: 2020/9/27
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

  <title>京东商城</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">

  <link rel="stylesheet" type="text/css" href="css/global.css">

  <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

  <script type="text/javascript" src="js/jsstyle.js"></script>

</head>

<body>

<div id="top">

  <div id="top_main">

    <ul class="topu">

      <li>

        <div class="xing"></div>

        <a href="">收藏京东</a>

      </li>

      <li class="xuan">

        <div class="erwei"></div>

        <a href="" class="aa">关注京东

          <!-- 将二维图添加进a标签里 -->

          <div class="erweitu"></div>

        </a>

      </li>



      <li>

        <div class="didian"></div>

        <strong style="padding-left: 20px">北京</strong><a href="" style="padding-left: 0px">[更换]</a>

      </li>



    </ul>



    <div id="hello">

				<span>您好，欢迎来到京东！

				<a href="loginServlet?method=toLogin">[登陆]</a><a href="registerServlet?method=toRegister">[免费注册]</a>

				</span>

    </div>



    <div class="topright">

      <ul>

        <li>

          <div class="cun">

            <a href="">我的订单</a>

          </div>

        </li>

        <li>

          <div class="cun">

            <div class="vip"></div>

            <a href="">会员俱乐部</a>

          </div>

        </li>

        <li>

          <div class="cun">

            <div class="bjd"></div>

            <a href="">企业频道</a>

          </div>

        </li>

        <li class="hidetu">

          <div class="cun">

            <a href="" class="dong">手机京东</a>

            <div class="phonetu"></div>

            <div class="downjian11"></div>

          </div>

          <div class="erwei">

            <div class="shoudan"></div>

            <div class="jd"></div>

            <div class="span1">

              <span>京东客户端</span>

            </div>

            <div class="apple"></div>

            <div class="andr"></div>

            <div class="ewtu"></div>

            <div class="span1">

              <span>网银钱包客户端</span>

            </div>

            <div class="apple"></div>

            <div class="andr"></div>

          </div>

        </li>

        <li class="kefu">

          <div class="cun">

            <div class="a1">

              <div class="kefuhide">

                <span>客户服务</span>

                <div class="downjian1"></div>

                <ul>

                  <li><a href="">帮助中心</a></li>

                  <li><a href="">售后服务</a></li>

                  <li><a href="">在线客服</a></li>

                  <li><a href="">投诉中心</a></li>

                  <li><a href="">客服邮箱</a></li>

                </ul>

              </div>

            </div>

          </div>

        </li>

        <li class="wangzhan">

          <div class="cun">

            <span>网站导航</span>

            <div class="downjian1"></div>

          </div>

          <div class="wangzhanhide">

            <div class="tese"><span>特色栏目</span></div>

            <div class="tesemain">

              <a href="">京东通信</a>

              <a href="">校园之星</a>

              <a href="">视频购物</a>

              <a href="">京东社区</a>

              <a href="">在线读书</a>

              <a href="">装机大师</a>

              <a href="">京东E卡　</a>

              <a href="">家装城</a>

              <a href="">搭配购　</a>

              <a href="">我喜欢　</a>

              <a href="">游戏社区</a>

            </div>

            <div class="tese"><span>企业服务</span></div>

            <div class="tesemain1">

              <a href="">企业采购</a>

              <a href="">办公直通车</a>

            </div>

            <div class="tese"><span>旗下网站</span></div>

            <div class="tesemain2">

              <a href="">English Site</a>

            </div>



          </div>

        </li>

      </ul>

    </div>



  </div>

</div>

<!-- 搜索区域开始 -->

<div id="serach">

  <div class="logo">

    <img src="images/logo.png" alt="" />

    <div class="dongtu"></div>

  </div>

  <div class="sou">

    <div class="sousuo">

      <input type="text" class="kuang" value="跨界" style="color:#999;font-size:14px" />

      <div class="souzi"><a href="">搜索</a></div>

    </div>

  </div>

  <div class="myjd">

    <div class="mytu"></div>

    <a href="">我的京东</a>

    <div class="jiantou"></div>



    <div class="myjdhide">

      <div class="hello">

        <span>您好，请</span>

        <a href="">登录</a>

      </div>

      <div class="hey">

        <div class="heyleft">

          <ul>

            <li><a href="">待处理订单</a></li>

            <li><a href="">咨询回复</a></li>

            <li><a href="">降价商品</a></li>

            <li><a href="">返修退换货</a></li>

            <li><a href="">优惠券</a></li>

          </ul>

        </div>

        <div class="heyright">

          <ul>

            <li><a href="">我的关注></a></li>

            <li><a href="">我的京豆></a></li>

            <li><a href="">我的理财></a></li>

            <li><a href="">我的白条></a></li>

          </ul>

        </div>

      </div>

      <div class="hidebot">

        <div class="bottop">

          <span>最近浏览的商品:</span>

          <a href="">查看浏览历史></a>

        </div>

        <div class="botdown">

          <span>「暂无数据」</span>

        </div>

      </div>

    </div>

  </div>

  <div class="gouwuche">

    <div class="chetu"></div>

    <a href="">去购物车结算</a>

    <div class="jianleft"></div>

    <div class="num">

      <div class="numright"></div>

      <div class="numzi"><span>0</span></div>

    </div>

    <div class="hideche">

      <div class="kongche"></div>

      <span>购物车中还没有商品，赶紧选购吧！</span>

    </div>

  </div>

  <div class="jubao"></div>

</div>

<!-- 搜索区域结束 -->



<!-- 导航条区域开始 -->



<div id="daohang">

  <div class="dhleft">

    <a href="">全部商品分类</a>

    <div class="erjimenu">

      <ul>

        <li class="li1">

          <div class="mulu">

            <a href="mainServlet?method=toGoods&id=2&product_id=2">服装</a>/

            <a href="mainServlet?method=toGoods&id=2&product_id=2">女装</a>

            <div class="jian"></div>

            <div class="bai"></div>

          </div>

          <div class="hidemenu">

            <div class="hideleft">

              <dl class="dl1">

                <dt><a href="mainServlet?method=toGoods&id=2&product_id=2">女装</a></dt>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">当季热卖</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">新品推荐</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">商场同款</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">时尚套装</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">设计师/潮牌</a></dd>

              </dl>

            </div>

            <div class="hideright">

              <div class="tu1">

                <a href=""><img width="194px" height="70px" src="images/b1.jpg" alt="" /></a>

              </div>

              <div class="tu1">

                <a href=""><img width="194px" height="70px" src="images/b2.jpg" alt="" /></a>

              </div>

              <dl class="dlright">

                <dt>推荐品牌商品</dt>



                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">GAP</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">NIKE</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">KAPPA</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">PUMA</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">Addides</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=2&product_id=2">FAIL</a></dd>


              </dl>

            </div>

          </div>

        </li>



        <li class="li3">

          <div class="mulu">

            <a href="mainServlet?method=toGoods&id=1&product_id=1">服装</a>/

            <a href="mainServlet?method=toGoods&id=1&product_id=1">男装</a>

            <div class="jian"></div>

            <div class="bai"></div>

          </div>

          <div class="hidemenu2">

            <div class="hideleft">

              <dl class="dl1">

                <dt><a href="mainServlet?method=toGoods&id=1&product_id=1">男装</a></dt>

                <dd><a href="mainServlet?method=toGoods&id=1&product_id=1">衬衫</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=1&product_id=1">牛仔衣</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=1&product_id=1">POLO衫</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=1&product_id=1">真皮皮衣</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=1&product_id=1">唐装/中山装</a></dd>

              </dl>

            </div>

            <div class="hideright">

              <div class="phoneplan"></div>

              <dt>推荐品牌</dt>

              <ul>

                <li><a href="mainServlet?method=toGoods&id=1&product_id=1">GAP</a></li>

                <li><a href="mainServlet?method=toGoods&id=1&product_id=1">MIKE</a></li>

                <li><a href="mainServlet?method=toGoods&id=1&product_id=1">Addides</a></li>

                <li><a href="mainServlet?method=toGoods&id=1&product_id=1">FAIL</a></li>

                <li><a href="mainServlet?method=toGoods&id=1&product_id=1">PUMA</a></li>

                <li><a href="mainServlet?method=toGoods&id=1&product_id=1">KAAPA</a></li>

              </ul>



              </dl>

              <div class="tu2">

                <a href=""><img width="194px" height="70px" src="images/b7.jpg" alt="" /></a>

              </div>

              <div class="tu1">

                <a href=""><img width="194px" height="70px" src="images/b8.jpg" alt="" /></a>

              </div>

            </div>

        <li></li>

        <li class="li3">

          <div class="mulu">

            <a href="mainServlet?method=toGoods&id=3&product_id=3">配饰</a>/

            <a href="mainServlet?method=toGoods&id=3&product_id=3">帽子</a>

            <div class="jian"></div>

            <div class="bai"></div>

          </div>

          <div class="hidemenu2">

            <div class="hideleft">

              <dl class="dl1">

                <dt><a href="mainServlet?method=toGoods&id=3&product_id=3">帽子</a></dt>


                <dd><a href="mainServlet?method=toGoods&id=3&product_id=3">鸭舌帽</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=3&product_id=3">棒球帽</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=3&product_id=3">毛线帽</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=3&product_id=3">贝雷帽</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=3&product_id=3">遮阳帽</a></dd>

              </dl>

            </div>


        <li class="li4">

          <div class="mulu">

            <a href="mainServlet?method=toGoods&id=4&product_id=4">配饰</a>/

            <a href="mainServlet?method=toGoods&id=4&product_id=4">眼镜</a>

            <div class="jian"></div>

            <div class="bai"></div>

          </div>

          <div class="hidemenu3">

            <div class="hideleft">

              <dl class="dl2">

                <dt><a href="mainServlet?method=toGoods&id=4&product_id=4">眼镜</a></dt>

                <dd><a href="mainServlet?method=toGoods&id=4&product_id=4">太阳镜</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=4&product_id=4">游泳镜</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=4&product_id=4">光学镜架</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=4&product_id=4">防辐射眼镜</a></dd>

                <dd><a href="mainServlet?method=toGoods&id=4&product_id=4">老花镜</a></dd>

              </dl>

            </div>

            </div>

            <div class="hideright">

              <div class="game"></div>

              <dt>推荐品牌</dt>

              <ul>

                <li><a href="mainServlet?method=toGoods&id=4&product_id=4">暴龙旗舰店</a></li>

                <li><a href="mainServlet?method=toGoods&id=4&product_id=4">LV旗舰店</a></li>

                <li><a href="mainServlet?method=toGoods&id=4&product_id=4">香奈儿旗舰店</a></li>

                <li><a href="mainServlet?method=toGoods&id=4&product_id=4">HP旗舰店</a></li>

                <li><a href="mainServlet?method=toGoods&id=3&product_id=3">王大夫旗舰店</a></li>

                <li><a href="mainServlet?method=toGoods&id=3&product_id=3">ThinkPad旗舰店</a></li>

                <li><a href="mainServlet?method=toGoods&id=3&product_id=3">周大福旗舰店</a></li>

                <li><a href="mainServlet?method=toGoods&id=3&product_id=3">暴雪旗舰店</a></li>


              </ul>



              </dl>



            </div>
        </li>
      </ul>
    </div>

  </div>

  <div class="dhright">

    <ul>

      <li><a href="index.jsp" style="background: #A40000">首页</a></li>

    </ul>

    <div class="dhtu">

      <ul>

        <li class="on"><img src="images/a3.png" alt="" />

          <div class="zeng"><span>4.2610%</span></div>

        </li>

        <li><img src="images/a4.png" alt="" /></li>

      </ul>

    </div>

  </div>

</div>

<!-- 导航条区域结束 -->



<!-- 轮播区及浏览区开始 -->

<div id="main">

  <div class="mainleft">

    <div class="lunbo">

      <ul class="pic">

        <li style="display:block"><img src="images/z1.jpg" alt="" /></li>

        <li><img src="images/z2.jpg" alt="" /></li>

        <li><img src="images/z3.jpg" alt="" /></li>

        <li><img src="images/z4.jpg" alt="" /></li>

        <li><img src="images/0.jpg" alt="" /></li>

        <li><img src="images/z6.jpg" alt="" /></li>

      </ul>

      <ul class="nav">

        <li class="on">1</li>

        <li>2</li>

        <li>3</li>

        <li>4</li>

        <li>5</li>

        <li>6</li>

      </ul>

    </div>

    <div class="liulan">

      <div class="liuleft">

        <div class="lefttu"></div>

      </div>

      <div class="liucenter">

        <ul>

          <li><a href="mainServlet?method=toGoods&id=2&product_id=2"><img src="images/c1.jpg" alt="" /></a></li>

          <li><a href="mainServlet?method=toGoods&id=1&product_id=1"><img src="images/c2.jpg" alt="" /></a></li>

          <li style="border-right:none"><a href="mainServlet?method=toGoods&id=2&product_id=2"><img src="images/c3.jpg" alt="" /></a></li>

          <li><img src="images/c10.jpg" alt="" /></li>

          <li><img src="images/c11.jpg" alt="" /></li>

          <li style="border-right:none"><img src="images/c12.jpg" alt="" /></li>

        </ul>

      </div>

      <div class="liuright">

        <div class="righttu"></div>

      </div>

    </div>

  </div>

  <div class="mainright">

    <div class="baotu">

      <img src="images/b30.jpg" alt="" />

    </div>

    <div class="kuaibao">

      <span>京东快报</span>

    </div>

    <div class="baomain">

      <ul>

        <li><a href="index.jsp">美妆年度盛典 要你好看！</a></li>

        <li><a href="index.jsp">集美们都爱的美包</a></li>

        <li><a href="index.jsp">京东值得买 9.9元购了</a></li>

        <li><a href="index.jsp">搭配神器美得冒泡</a></li>

        <li><a href="index.jsp">福利捡漏天天红包有好货</a></li>

        <li><a href="index.jsp">百亿补贴爆品低价</a></li>

        <li><a href="index.jsp">狂欢不落幕，好奇一整年</a></li>

        <li><a href="index.jsp">专享大额优惠卷狂享五折</a></li>

      </ul>

    </div>

    <div class="tubiao">

      <ul>

        <li class="xiala">

          <div class="tubiao_1"></div>

          <a href="index.jsp">话费</a>

          <div class="tubiao_9"></div>

        </li>

        <li  class="xiala">

          <div class="tubiao_2"></div>

          <a href="index.jsp">机票</a>

          <div class="tubiao_9"></div>

        </li>

        <li  class="xiala">

          <div class="tubiao_3"></div>

          <a href="index.jsp">彩票</a>

          <div class="tubiao_9"></div>

        </li>

        <li  class="xiala" style="border-right:none">

          <div class="tubiao_4"></div>

          <a href="index.jsp">游戏</a>

          <div class="tubiao_9"></div>

        </li>

        <li style="border-bottom:none">

          <div class="tubiao_5"></div>

          <a href="index.jsp">旅行</a>

        </li>

        <li style="border-bottom:none">

          <div class="tubiao_6"></div>

          <a href="index.jsp">电影票</a>

        </li>

        <li style="border-bottom:none">

          <div class="tubiao_7"></div>

          <a href="index.jsp">理财</a>

        </li>

        <li style="border-bottom:none;border-right:none;">

          <div class="tubiao_8"></div>

          <a href="index.jsp">水电煤</a>

        </li>

        <div class="tubiaola">

          <div class="close_menu">

            <ul>

              <li><a href="index.jsp">话费</a></li>

              <li><a href="index.jsp">机票</a></li>

              <li><a href="index.jsp">彩票</a></li>

              <li style="border-right:none"><a href="index.jsp">游戏</a></li>

            </ul>

          </div>

          <div class="c_main">

            <div class="box" style="display:block">

              <div class="phonechong">

                <span class="span1">手机号:</span>

                <input type="text" value="请输入手机号" class="shuru1" style="color:#ccc" />

                <span class="span2">支持移动、联通、电信京东、通信</span>

                <span class="close">X</span>

              </div>

              <div class="mianzhi">

                <span class="span1">　面值:</span>

                <select name="" id="jine">

                  <option value="">10元</option>

                  <option value="">20元</option>

                  <option value="">30元</option>

                  <option value="">50元</option>

                  <option value="">100元</option>

                  <option value="">200元</option>

                  <option value="">300元</option>

                  <option value="">500元</option>

                </select>

                <span class="span3">9.80-11.00</span>

              </div>

              <div class="chong">

                <input type="button" value="立即充值" class="cb"/>

              </div>

              <div class="close">X</div>

            </div>

            <div class="box">

              <ul class="jipiao_top">

                <li class="tehui"><a href="">特惠国际机票</a></li>

                <li class="guonei"><a href="">国内机票</a></li>

              </ul>

              <div class="jpbox" style="display:block">

                <div class="tu">

                  <img src="images/d1.jpg" alt="" />

                  <span>国际机票430元起</span>

                </div>

                <div class="tu">

                  <img src="images/d2.jpg" alt="" />

                  <span>免签线路说走就走</span>

                </div>

              </div>

              <div class="jpbox">

                <div class="go">

                  <span>出发城市:</span>

                  <select name="" id="chufa">

                    <option value="">K-昆明</option>

                    <option value="">B-北京</option>

                    <option value="">S-上海</option>

                  </select>

                  <span>到达城市:</span>

                  <select name="" id="chufa1">

                    <option value="">A-阿克苏</option>

                    <option value="">B-北京</option>

                    <option value="">S-上海</option>

                  </select>

                </div>

                <div class="gotime">

                  <span>出发日期:</span>

                  <select name="" id="chufatime">

                    <option value="">2014</option>

                    <option value="">2015</option>

                  </select>

                  <span>年</span>

                  <select name="" id="chufatime1">

                    <option value="">12</option>

                    <option value="">11</option>

                  </select>

                  <span>月</span>

                  <select name="" id="chufatime2">

                    <option value="">11</option>

                    <option value="">12</option>

                  </select>

                  <span>日</span>

                </div>

                <div class="goserach">

                  <input type="button" value="机票查询" class="cha" />

                  <a href="">白条购机票更方便！</a>

                </div>

              </div>



              <div class="close">X</div>

            </div>

            <div class="box">

              <div class="doubleqiu">

                <div class="qiutu"></div>

              </div>

              <div class="qiumain">

                <div class="mai">

                  <span>买注</span>

                  <select name="" id="shuangseqiu">

                    <option value="">双色球</option>

                    <option value="">大乐透</option>

                    <option value="">3D</option>

                    <option value="">竞足</option>

                  </select>

                  <span><b>试试手气吧！</b></span>

                </div>

                <div class="number">

                  <span>04</span>

                  <span>11</span>

                  <span>19</span>

                  <span>25</span>

                  <span>27</span>

                  <span>28</span>

                  <span style="color:blue">03</span>

                </div>

                <div class="xiazhu">

                  <a href="index.jsp">[机选一注]</a>

                  <a href="index.jsp">[自助选号]</a>

                </div>

                <input type="button" value="提交数据" class="sub" />

              </div>

              <div class="close">X</div>

            </div>

            <div class="box">

              <div class="gamechose">

                <ul>

                  <li><a href="index.jsp">点卡</a></li>

                  <li><a href="index.jsp">QQ</a></li>

                  <li><a href="index.jsp">页游</a></li>

                </ul>

                <div class="yeyoutu">

                  <img src="images/d4.jpg" alt="" />

                  <img src="images/d5.jpg" alt="" />

                  <img src="images/d6.jpg" alt="" />

                </div>

              </div>

              <div class="close">X</div>

            </div>

          </div>

        </div>

      </ul>

    </div>

  </div>

</div>

<!-- 轮播区及浏览区结束 -->



<!-- 商品展示区开始 -->

<div id="lifewindow">

  <div class="lifetu"></div>

  <div class="lifemain">

    <div class="tuarea1">

      <img src="images/e2.jpg" alt="" />

      <div class="zhe">

        <h3>品牌街</h3>

        <div class="life1"><a href="mainServlet?method=toGoods&id=2&product_id=2">基础通勤款</a></div>

        <div class="life1"><a href="mainServlet?method=toGoods&id=2&product_id=2" style="color:#E4393C">全场低至4折</a></div>

        <ul>

        <li><a href="mainServlet?method=toGoods&id=2&product_id=2">更多品牌</a></li>

        <li><a href="mainServlet?method=toGoods&id=2&product_id=2">进入品牌街</a></li>

      </ul>

      </div>

    </div>

    <div class="tuarea2">

      <img src="images/e3.jpg" alt="" />

      <div class="zhe1">

        <h3>天天低价</h3>

        <div class="life1"><a href="mainServlet?method=toGoods&id=4&product_id=4">时尚街拍墨镜</a></div>

        <div class="life1"><a href="mainServlet?method=toGoods&id=4&product_id=4" style="background:red;color:white;padding:2px 2px">直降100元</a></div>

      </div>

    </div>

    <div class="tuarea3">

      <img src="images/e4.jpg" alt="" />

      <div class="zhe">

        <h3>好东西</h3>

        <div class="life1"><a href="mainServlet?method=toGoods&id=1&product_id=1">嘻哈卫衣</a></div>

        <div class="life1"><a href="mainServlet?method=toGoods&id=1&product_id=1" style="color:#E4393C;font-size:12px">欧美潮牌</a></div>

        <ul>

          <li><a href="mainServlet?method=toGoods&id=1&product_id=1">更多品牌</a></li>

          <li><a href="mainServlet?method=toGoods&id=1&product_id=1">逛更多></a></li>

        </ul>

      </div>

    </div>

    <div class="tuarea4">

      <img src="images/e5.jpg" alt="" />

      <div class="zhe1">

        <h3>今日团购</h3>

        <div class="life1"><a href="mainServlet?method=toGoods&id=3&product_id=3">秋冬必备</a></div>

        <div class="life1" style="margin-top:20px">贝雷帽<span style="font-size:25px;color:red;font-weight:700">￥45</span></div>



        <div class="cantuan"></div>

      </div>

    </div>

    <div class="tuarea5">

      <img src="images/e6.jpg" alt="" />

      <div class="zhe1">

        <h3>京东首发</h3>

        <div class="life1"><a href="mainServlet?method=toGoods&id=3&product_id=3">保暖时尚</a></div>

        <div class="life1"><a href="mainServlet?method=toGoods&id=3&product_id=3" style="background:red;color:white;padding:2px 2px">明星同款</a></div>

      </div>

    </div>

    <div class="tuarea6">

      <img src="images/e7.jpg" alt="" />

      <div class="zhe1">

        <h3>潮牌</h3>

        <div class="life1"><a href="mainServlet?method=toGoods&id=1&product_id=1">中国风醒狮</a></div>

        <div class="life1"><a href="mainServlet?method=toGoods&id=1&product_id=1" style="color:#E4393C">免费疯抢ing</a></div>

      </div>

    </div>

    <div class="tuarea7">

      <img src="images/e8.jpg" alt="" />

      <div class="zhe1">

        <h3>京东预售</h3>

        <div class="life1"><a href="mainServlet?method=toGoods&id=4&product_id=4">显瘦墨镜</a></div>

        <div class="life1"><a href="mainServlet?method=toGoods&id=4&product_id=4" style="background:red;color:white;padding:2px 2px">网红同款</a></div>

      </div>

    </div>

    <div class="tuarea8">

      <img src="images/e9.jpg" alt="" />

      <div class="zhe1">

        <div class="zhe1">

          <h3>条纹长袖</h3>

          <div class="life1"><a href="mainServlet?method=toGoods&id=2&product_id=2">挂脖心机</a></div>

          <div class="life1"><a href="mainServlet?method=toGoods&id=2&product_id=2" style="color:red">露肩显瘦</a></div>

        </div>

      </div>

    </div>

  </div>

</div>

<!-- 商品展示区结束 -->
<!-- 网站详情开始 -->

<div id="xiang">

  <div class="xleft">

    <div class="qing">

      <div class="qtu"></div>

      <h3>购物指南</h3>

      <div class="bao">购物流程</div>

      <div class="bao">会员介绍</div>

      <div class="bao">团购/机票</div>

      <div class="bao">常见问题</div>

      <div class="bao">大家电</div>

      <div class="bao">联系客服</div>

    </div><div class="bao"></div>

    <div class="qing">

      <div class="qtu1"></div>

      <h3>配送方式</h3>

      <div class="bao">上门自提</div>

      <div class="bao">211限时达</div>

      <div class="bao">配送服务查询</div>

      <div class="bao">配送费收取标准</div>

      <div class="bao">海外配送</div>

    </div>

    <div class="qing">

      <div class="qtu2"></div>

      <h3>支付方式</h3>

      <div class="bao">货到付款</div>

      <div class="bao">在线支付</div>

      <div class="bao">分期付款</div>

      <div class="bao">邮局汇款</div>

      <div class="bao">公司转账</div>

    </div>

    <div class="qing">

      <div class="qtu3"></div>

      <h3>售后服务</h3>

      <div class="bao">售后政策</div>

      <div class="bao">价格保护</div>

      <div class="bao">退款说明</div>

      <div class="bao">返修/退换货</div>

      <div class="bao">取消订单</div>

    </div>

    <div class="qing">

      <div class="qtu4"></div>

      <h3>特色服务</h3>

      <div class="bao">夺宝岛</div>

      <div class="bao">DIY装机</div>

      <div class="bao">延保服务</div>

      <div class="bao">京东E卡</div>

      <div class="bao">节能补贴</div>

      <div class="bao">京东通信</div>

    </div>

  </div>

  <div class="xright">

    <h3>京东自营覆盖区县</h3>

    <span>京东已向全国1864个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</span>



  </div>

</div>

<!-- 网站详情结束 -->



<!-- 底部开始 -->

<div id="down">

  <div class="down_top">

    <a href="index.jsp">关于我们</a>

    <a href="index.jsp">联系我们</a>

    <a href="index.jsp">商家入驻</a>

    <a href="index.jsp">营销中心</a>

    <a href="index.jsp">手机京东</a>

    <a href="index.jsp">友情链接</a>

    <a href="index.jsp">销售联盟</a>

    <a href="index.jsp">京东社区</a>

    <a href="index.jsp">京东公益</a>

    <a href="index.jsp" style="border-right:none">English Site</a>

  </div>

  <div class="down_center">

    <span>北京市公安局朝阳分局备案编号110105014669  |  京ICP证070359号  |  互联网药品信息服务资格证编号(京)-经营性-2014-0008  |  新出发京零 字第大120007号</span>

    <span>音像制品经营许可证苏宿批005号  |  出版物经营许可证编号新出发(苏)批字第N-012号  |  互联网出版许可证编号新出网证(京)字150号</span>

    <span>网络文化经营许可证京网文[2011]0168-061号  违法和不良信息举报电话：4006561155  Copyright © 2004-2014  京东JD.com 版权所有</span>

    <span>京东旗下网站：360TOP  拍拍网 网银在线 </span>

  </div>

  <div class="down_bot">

    <img src="images/bot1.gif" alt="" />

    <img src="images/bot2.gif" alt="" />

    <img src="images/bot3.png" alt="" />

    <img src="images/bot4.png" alt="" />

  </div>

</div>

<!-- 底部结束 -->

</body>

</html>
