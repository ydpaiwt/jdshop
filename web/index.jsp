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

    <div class="reci">

      <span>热门搜索:</span>

      <a href="" style="color:red">校园之星</a>

      <a href="">影院到家</a>

      <a href="">JD制暖节</a>

      <a href="">腕表领券</a>

      <a href="">自营满减</a>

      <a href="">N3抢购</a>

      <a href="">图书换购</a>

      <a href="">12.12</a>

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

            <a href="">服装</a>、

            <a href="">上衣</a>

            <div class="jian"></div>

            <div class="bai"></div>

          </div>

          <div class="hidemenu">

            <div class="hideleft">

              <dl class="dl1">

                <dt><a href="">　服装</a></dt>

                <dd><a href="">男装</a></dd>

                <dd><a href="">女装</a></dd>

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



                <dd><a href="">GAP</a></dd>

                <dd><a href="">NIKE</a></dd>

                <dd><a href="">KAPPA</a></dd>

                <dd><a href="">PUMA</a></dd>

                <dd><a href="">Addides</a></dd>

                <dd><a href="">FAIL</a></dd>


              </dl>

            </div>

          </div>

        </li>



        <li class="li3">

          <div class="mulu">

            <a href="">服装</a>、

            <a href="">下装</a>

            <div class="jian"></div>

            <div class="bai"></div>

          </div>

          <div class="hidemenu2">

            <div class="hideleft">

              <dl class="dl1">

                <dt><a href="">服装</a></dt>



                <dd><a href="">男装</a></dd>

                <dd><a href="">女装</a></dd>

              </dl>

            </div>

            <div class="hideright">

              <div class="phoneplan"></div>

              <dt>推荐品牌</dt>

              <ul>

                <li><a href="">GAP</a></li>

                <li><a href="">MIKE</a></li>

                <li><a href="">Addides</a></li>

                <li><a href="">FAIL</a></li>

                <li><a href="">PUMA</a></li>

                <li><a href="">KAAPA</a></li>

              </ul>



              </dl>

              <div class="tu2">

                <a href=""><img width="194px" height="70px" src="images/b7.jpg" alt="" /></a>

              </div>

              <div class="tu1">

                <a href=""><img width="194px" height="70px" src="images/b8.jpg" alt="" /></a>

              </div>

            </div>
          </div>

        </li>

        <li class="li4">

          <div class="mulu">

            <a href="">配饰</a>、

            <a href="">五金</a>

            <div class="jian"></div>

            <div class="bai"></div>

          </div>

          <div class="hidemenu3">

            <div class="hideleft">

              <dl class="dl2">

                <dt><a href="">配饰</a></dt>

                <dd><a href="">帽子</a></dd>

                <dd><a href="">眼镜</a></dd>

              </dl>

            </div>

            <div class="hideright">

              <div class="game"></div>

              <dt>推荐品牌</dt>

              <ul>

                <li><a href="">暴龙旗舰店</a></li>

                <li><a href="">LV旗舰店</a></li>

                <li><a href="">香奈儿旗舰店</a></li>

                <li><a href="">HP旗舰店</a></li>

                <li><a href="">王大夫旗舰店</a></li>

                <li><a href="">ThinkPad旗舰店</a></li>

                <li><a href="">周大福旗舰店</a></li>

                <li><a href="">暴雪旗舰店</a></li>


              </ul>



              </dl>

              <div class="tu3">

                <a href=""><img width="194px" height="70px" src="images/b9.jpg" alt="" /></a>

              </div>

              <div class="tu1">

                <a href=""><img width="194px" height="70px" src="images/b10.jpg" alt="" /></a>

              </div>

            </div>
          </div>
        </li>
      </ul>
    </div>

  </div>

  <div class="dhright">

    <ul>

      <li><a href="" style="background: #A40000">首页</a></li>

      <li><a href="">服装城</a></li>

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

          <li><a href=""><img src="images/c1.jpg" alt="" /></a></li>

          <li><a href=""><img src="images/c2.jpg" alt="" /></a></li>

          <li style="border-right:none"><a href=""><img src="images/c3.jpg" alt="" /></a></li>

          <li><a href=""><img src="images/c10.jpg" alt="" /></a></li>

          <li><a href=""><img src="images/c11.jpg" alt="" /></a></li>

          <li style="border-right:none"><a href=""><img src="images/c12.jpg" alt="" /></a></li>

        </ul>

      </div>

      <div class="liuright">

        <div class="righttu"></div>

      </div>

    </div>

  </div>

  <div class="mainright">

    <div class="baotu">

      <a href=""><img src="images/b30.jpg" alt="" /></a>

    </div>

    <div class="kuaibao">

      <span>京东快报</span>

      <a href="">更多快报></a>

    </div>

    <div class="baomain">

      <ul>

        <li><a href="">美妆年度盛典 要你好看！</a></li>

        <li><a href="">集美们都爱的美包</a></li>

        <li><a href="">京东值得买 9.9元购了</a></li>

        <li><a href="">搭配神器美得冒泡</a></li>

        <li><a href="">福利捡漏天天红包有好货</a></li>

        <li><a href="">百亿补贴爆品低价</a></li>

        <li><a href="">狂欢不落幕，好奇一整年</a></li>

        <li><a href="">专享大额优惠卷狂享五折</a></li>

      </ul>

    </div>

    <div class="tubiao">

      <ul>

        <li class="xiala">

          <div class="tubiao_1"></div>

          <a href="">话费</a>

          <div class="tubiao_9"></div>

        </li>

        <li  class="xiala">

          <div class="tubiao_2"></div>

          <a href="">机票</a>

          <div class="tubiao_9"></div>

        </li>

        <li  class="xiala">

          <div class="tubiao_3"></div>

          <a href="">彩票</a>

          <div class="tubiao_9"></div>

        </li>

        <li  class="xiala" style="border-right:none">

          <div class="tubiao_4"></div>

          <a href="">游戏</a>

          <div class="tubiao_9"></div>

        </li>

        <li style="border-bottom:none">

          <div class="tubiao_5"></div>

          <a href="">旅行</a>

        </li>

        <li style="border-bottom:none">

          <div class="tubiao_6"></div>

          <a href="">电影票</a>

        </li>

        <li style="border-bottom:none">

          <div class="tubiao_7"></div>

          <a href="">理财</a>

        </li>

        <li style="border-bottom:none;border-right:none;">

          <div class="tubiao_8"></div>

          <a href="">水电煤</a>

        </li>

        <div class="tubiaola">

          <div class="close_menu">

            <ul>

              <li><a href="">话费</a></li>

              <li><a href="">机票</a></li>

              <li><a href="">彩票</a></li>

              <li style="border-right:none"><a href="">游戏</a></li>

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

                  <a href="">[机选一注]</a>

                  <a href="">[自助选号]</a>

                </div>

                <input type="button" value="提交数据" class="sub" />

              </div>

              <div class="close">X</div>

            </div>

            <div class="box">

              <div class="gamechose">

                <ul>

                  <li><a href="">点卡</a></li>

                  <li><a href="">QQ</a></li>

                  <li><a href="">页游</a></li>

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

        <div class="life1"><a href="">基础通勤款</a></div>

        <div class="life1"><a href="" style="color:#E4393C">全场低至4折</a></div>

        <ul>

          <li><a href="">更多品牌</a></li>

          <li><a href="">进入品牌街</a></li>

        </ul>

      </div>

    </div>

    <div class="tuarea2">

      <img src="images/e3.jpg" alt="" />

      <div class="zhe1">

        <h3>天天低价</h3>

        <div class="life1"><a href="">时尚街拍墨镜</a></div>

        <div class="life1"><a href="" style="background:red;color:white;padding:2px 2px">直降100元</a></div>

      </div>

    </div>

    <div class="tuarea3">

      <img src="images/e4.jpg" alt="" />

      <div class="zhe">

        <h3>好东西</h3>

        <div class="life1"><a href="">嘻哈卫衣</a></div>

        <div class="life1"><a href="" style="color:#E4393C;font-size:12px">欧美潮牌</a></div>

        <ul>

          <li><a href="">更多品牌</a></li>

          <li><a href="">逛更多></a></li>

        </ul>

      </div>

    </div>

    <div class="tuarea4">

      <img src="images/e5.jpg" alt="" />

      <div class="zhe1">

        <h3>今日团购</h3>

        <div class="life1"><a href="">秋冬必备</a></div>

        <div class="life1" style="margin-top:20px">贝雷帽<span style="font-size:25px;color:red;font-weight:700">￥45</span></div>



        <div class="cantuan"></div>

      </div>

    </div>

    <div class="tuarea5">

      <img src="images/e6.jpg" alt="" />

      <div class="zhe1">

        <h3>京东首发</h3>

        <div class="life1"><a href="">保暖时尚</a></div>

        <div class="life1"><a href="" style="background:red;color:white;padding:2px 2px">明星同款</a></div>

      </div>

    </div>

    <div class="tuarea6">

      <img src="images/e7.jpg" alt="" />

      <div class="zhe1">

        <h3>潮牌</h3>

        <div class="life1"><a href="">中国风醒狮</a></div>

        <div class="life1"><a href="" style="color:#E4393C">免费疯抢ing</a></div>

      </div>

    </div>

    <div class="tuarea7">

      <img src="images/e8.jpg" alt="" />

      <div class="zhe1">

        <h3>京东预售</h3>

        <div class="life1"><a href="">显瘦墨镜</a></div>

        <div class="life1"><a href="" style="background:red;color:white;padding:2px 2px">网红同款</a></div>

      </div>

    </div>

    <div class="tuarea8">

      <img src="images/e9.jpg" alt="" />

      <div class="zhe1">

        <div class="zhe1">

          <h3>条纹长袖</h3>

          <div class="life1"><a href="">挂脖心机</a></div>

          <div class="life1"><a href="" style="color:red">露肩显瘦</a></div>

        </div>

      </div>

    </div>

    <div class="tuarea9"><img src="images/e10.jpg" alt="" /></div>

    <div class="tuarea9"><img src="images/e11.jpg" alt="" /></div>

    <div class="tuarea9"><img src="images/e12.jpg" alt="" /></div>

  </div>

</div>

<!-- 商品展示区结束 -->
<!-- 3楼开始 -->

<div id="threefloor">

  <!-- 1楼顶部开始 -->

  <div class="one_top">

    <div class="louceng">

      <h2>服饰鞋包</h2>

      <div class="lou"><span></span></div>

    </div>

    <ul>

      <li><h3 style="color:#E4393C">品牌男装</h3></li>

      <li><h3>品牌女装</h3></li>

      <div class="huakuai"></div>

    </ul>

    <div class="haiwaigou"></div>

  </div>

  <!-- 1楼顶部结束 -->

  <div class="onemain">

    <!-- 1楼左边开始 -->

    <div class="mainleft">

      <ul class="xiebao">

        <li><a href="">男装</a></li>

        <li><a href="">女装</a></li>

        <li><a href="">服装配饰</a></li>


      </ul>

      <div class="f_left">

        <img src="images/3fleft.jpg" alt="" />

      </div>

    </div>

    <!-- 1楼左边结束 -->



    <!-- 1楼中间开始 -->

    <div class="maincenter">


      <!-- 3楼品牌男装开始 -->

      <div class="cent1">

        <div class="centu">

          <div class="tu">

            <img src="images/3f8.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 Dickies 男式修身工装长裤</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">269</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f9.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 战地吉普 男装外套 连帽棉衣</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">288</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f10.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 北极绒 男士绒羽绒服</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">498</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f11.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 劲霸男装 白鸭绒羽绒服外套</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">599</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f12.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 海澜之家男装 羊毛呢大衣外套</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">428</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f13.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 千纸鹤男装 水晶绒休闲裤长裤子</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">138</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f14.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 秋鹿男女睡衣 家居服睡衣两件套</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">129</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f15.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 花笙记男汉服式针织开衫交领</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">199</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f16.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 波司登 男款大众气质毛领款</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">519</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f17.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 七匹狼男装 男士商务直筒长裤</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">279</b>.00</span>

          </div>

        </div>

      </div>

      <!-- 3楼品牌男装结束 -->



      <!-- 3楼品牌女装开始 -->

      <div class="cent1">

        <div class="centu">

          <div class="tu">

            <img src="images/3f18.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 三枪女士秋冬保暖内衣套装</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">125</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f19.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 波司登保暖内衣 护肩护膝</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">99</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f20.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 哥弟女装 圆领蓝绿拼色毛衣针织衫</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">520</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f21.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 咔琦娜 女装超大貉子毛领</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">799</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f22.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 tune tune 七分袖毛呢外套大衣</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">419</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f23.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 雪莲羊绒 樽高领女款</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">389</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f24.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 名人瑞裳 女装立领奢华毛呢大衣</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">208</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f25.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 华歌尔 包容大胸 蕾丝全罩杯文胸</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">360</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f26.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 Ochirly欧时力高腰半身短裙伞裙</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">285</b>.00</span>

          </div>

        </div>

        <div class="centu">

          <div class="tu">

            <img src="images/3f27.jpg" alt="" />

          </div>

          <div class="p_name">

            <a href="">12.12 思诺芙德毛衣 雪莲时尚纯山羊绒衫</a>

          </div>

          <div class="price">

            <span style="color:#E4393C">￥<b style="font-size:16px">299</b>.00</span>

          </div>

        </div>

      </div>

      <!-- 3楼品牌女装结束 -->

    </div>

    <!-- 3楼中间结束 -->



    <!-- 3楼右侧开始 -->

    <div class="mainright">

      <ul>

        <li><img src="images/3f48.gif" alt="" /></li>

        <li><img src="images/3f49.gif" alt="" /></li>

        <li><img src="images/3f50.gif" alt="" /></li>

        <li><img src="images/3f51.gif" alt="" /></li>

        <li><img src="images/3f52.gif" alt="" /></li>

        <li><img src="images/3f53.gif" alt="" /></li>

        <li><img src="images/3f54.gif" alt="" /></li>

        <li><img src="images/3f55.gif" alt="" /></li>

        <li><img src="images/3f56.jpg" alt="" /></li>

        <li><img src="images/3f57.jpg" alt="" /></li>

      </ul>

      <div class="righttu">

        <div class="rightlun">

          <img src="images/3f58.jpg" alt="" />

          <img src="images/3f59.jpg" alt="" />

        </div>

        <ul>

          <li style="background:#7ABD54"></li>

          <li></li>

        </ul>

      </div>

    </div>

    <!-- 1楼右侧结束 -->

  </div>

</div>

<!-- 3楼结束 -->



<!-- hot热门区开始 -->

<div id="hot">

  <!-- 左边开始 -->

  <div class="hotleft">

    <!-- 热门晒单区域开始 -->

    <div class="shaidan">

      <div class="dan_top">

        <h2>热门晒单</h2>

      </div>

      <div class="shaimain">

        <ul>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s1.jpg" alt="" />

              <div class="shai"></div>

            </div>

            <div class="hotname"><a href="">[晒单帖]服务态度好</a></div>

            <div class="hotlun">

              <a href="">客服很好，买东西服务很重要，产品不错，服务满意</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>





            <div class="dantu">

              <img width="50px" height="50px" src="images/s2.jpg" alt="" />

              <div class="shai"></div>

            </div>

            <div class="hotname"><a href="">[晒单帖]眼镜舒适感极佳</a></div>

            <div class="hotlun">

              <a href="">看评价说眼镜腿有问题，可是在我手里的非常优秀，给商家一个赞</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s3.jpg" alt="" />

              <div class="shai"></div>

            </div>

            <div class="hotname"><a href="">[晒单帖]很棒的东西</a></div>

            <div class="hotlun">

              <a href="">给媳妇买的。感觉很不错。拆包以后就试了下。帽子很舒服。</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s4.jpg" alt="" />

              <div class="shai"></div>

            </div>

            <div class="hotname"><a href="">[晒单帖]儿子喜欢这种风格的衣服！</a></div>

            <div class="hotlun">

              <a href="">质量很好，外观漂亮，儿子喜欢！</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s5.jpg" alt="" />

              <div class="shai"></div>

            </div>

            <div class="hotname"><a href="">[晒单帖]颜色好、做工好</a></div>

            <div class="hotlun">

              <a href="">京东配送还是很给力的，下单两天就收到货了 我买的米白色衣服，看外观没有色差，跟描述的一样</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s6.jpg" alt="" />

              <div class="shai"></div>

            </div>





            <div class="hotname"><a href="">[晒单帖]王俊凯同款眼镜</a></div>

            <div class="hotlun">

              <a href="">不愧是凯凯代言的眼镜，好棒！好喜欢！</a>

              <div class="dou"></div>

            </div>

          </li>

        </ul>

      </div>

    </div>

    <!-- 热门晒单区域结束 -->



    <!-- 热门活动区域开始 -->

    <div class="shaidan1">

      <div class="dan_top">

        <h2>热门活动</h2>

      </div>

      <div class="shaimain">

        <ul>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s7.jpg" alt="" />

              <div class="re"></div>

            </div>

            <div class="hotname"><a href="">佳贝艾特金装150克2、3段0元试用！</a></div>

            <div class="hotlun">

              <a href="">全球同步销售：佳贝艾特金装150克2、3段0元试用，零风险！快来报名！</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s8.jpg" alt="" />

              <div class="re"></div>

            </div>

            <div class="hotname"><a href="">一枪在手生活无琐事-惠泽热熔胶枪</a></div>

            <div class="hotlun">

              <a href="">惠泽热熔胶枪京东首发，邀您0元试用啦~~</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s9.jpg" alt="" />

              <div class="re"></div>

            </div>

            <div class="hotname"><a href="">I’m cool系列彩色冰箱0元试用</a></div>

            <div class="hotlun">

              <a href="">奥马I’m cool系列彩色冰箱0元试用啦！冷藏/冷冻双温区，欧盟质控标准，太空舱检漏技术，年轻人的冰箱</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s10.jpg" alt="" />

              <div class="re"></div>

            </div>

            <div class="hotname"><a href="">华为荣耀6plus0元试用</a></div>

            <div class="hotlun">

              <a href="">为了庆祝华为荣耀新品横空出世，也为了答谢各位花粉的支持与厚爱，我们从研发童鞋那里抢到了50台崭</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s11.jpg" alt="" />

              <div class="re"></div>

            </div>

            <div class="hotname"><a href="">《Win8平板最佳伴侣》有奖问答活动</a></div>

            <div class="hotlun">

              <a href="">今年双12来京东，参加《Win8平板最佳伴侣》有奖问答活动，就有机会把Win8平板“伴侣”带回家！</a>

              <div class="dou"></div>

            </div>

          </li>

          <li>

            <div class="dantu">

              <img width="50px" height="50px" src="images/s12.jpg" alt="" />

              <div class="re"></div>

            </div>

            <div class="hotname"><a href="">许愿望，赢周生生Charme苹果串珠免单</a></div>

            <div class="hotlun">

              <a href="">2015年即将到来，你有什么愿望？留下你的愿望，有机会赢取周生生Charme苹果串珠免单权，祈愿明年平</a>

              <div class="dou"></div>

            </div>

          </li>

        </ul>

      </div>

    </div>

    <!-- 热门活动区域结束 -->

  </div>

  <!-- 左边结束 -->



  <!-- 右边开始 -->

  <div class="hotright">

    <div class="readtop">

      <div class="read">

        <h2>热门同款</h2>

        <a href="">更多网红同款></a>

      </div>

      <div class="readmain">

        <div class="readleft">

          <img src="images/s13.jpg" alt="" />

        </div>

        <div class="readright">

          <a href="">[太阳镜]100元特价</a>

          <a href="">小众豹纹衬衣外穿</a>

          <a href="">显脸小，素颜遮脸渔夫帽</a>

          <a href="">哈伦日系宽松纯色休闲裤</a>

        </div>

      </div>

    </div>

    <h3>订阅促销信息</h3>

    <div class="readbottom">

      <div class="youjian"></div>

      <input class="shuru" type="text" name="" id="" value="请输入您的Email地址" />

      <input  class="ding"  type="button" value="订阅"/>

    </div>

  </div>



  <!-- 右边结束 -->

</div>

<!-- hot热门区结束 -->



<!-- 网站详情开始 -->

<div id="xiang">

  <div class="xleft">

    <div class="qing">

      <div class="qtu"></div>

      <h3>购物指南</h3>

      <div class="bao"><a href="">购物流程</a></div>

      <div class="bao"><a href="">会员介绍</a></div>

      <div class="bao"><a href="">团购/机票</a></div>

      <div class="bao"><a href="">常见问题</a></div>

      <div class="bao"><a href="">大家电</a></div>

      <div class="bao"><a href="">联系客服</a></div>

    </div><div class="bao"></div>

    <div class="qing">

      <div class="qtu1"></div>

      <h3>配送方式</h3>

      <div class="bao"><a href="">上门自提</a></div>

      <div class="bao"><a href="">211限时达</a></div>

      <div class="bao"><a href="">配送服务查询</a></div>

      <div class="bao"><a href="">配送费收取标准</a></div>

      <div class="bao"><a href="">海外配送</a></div>

    </div>

    <div class="qing">

      <div class="qtu2"></div>

      <h3>支付方式</h3>

      <div class="bao"><a href="">货到付款</a></div>

      <div class="bao"><a href="">在线支付</a></div>

      <div class="bao"><a href="">分期付款</a></div>

      <div class="bao"><a href="">邮局汇款</a></div>

      <div class="bao"><a href="">公司转账</a></div>

    </div>

    <div class="qing">

      <div class="qtu3"></div>

      <h3>售后服务</h3>

      <div class="bao"><a href="">售后政策</a></div>

      <div class="bao"><a href="">价格保护</a></div>

      <div class="bao"><a href="">退款说明</a></div>

      <div class="bao"><a href="">返修/退换货</a></div>

      <div class="bao"><a href="">取消订单</a></div>

    </div>

    <div class="qing">

      <div class="qtu4"></div>

      <h3>特色服务</h3>

      <div class="bao"><a href="">夺宝岛</a></div>

      <div class="bao"><a href="">DIY装机</a></div>

      <div class="bao"><a href="">延保服务</a></div>

      <div class="bao"><a href="">京东E卡</a></div>

      <div class="bao"><a href="">节能补贴</a></div>

      <div class="bao"><a href="">京东通信</a></div>

    </div>

  </div>

  <div class="xright">

    <h3>京东自营覆盖区县</h3>

    <span>京东已向全国1864个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</span>

    <a href="">查看详情></a>

  </div>

</div>

<!-- 网站详情结束 -->



<!-- 底部开始 -->

<div id="down">

  <div class="down_top">

    <a href="">关于我们</a>

    <a href="">联系我们</a>

    <a href="">商家入驻</a>

    <a href="">营销中心</a>

    <a href="">手机京东</a>

    <a href="">友情链接</a>

    <a href="">销售联盟</a>

    <a href="">京东社区</a>

    <a href="">京东公益</a>

    <a href="" style="border-right:none">English Site</a>

  </div>

  <div class="down_center">

    <span>北京市公安局朝阳分局备案编号110105014669  |  京ICP证070359号  |  <a href="">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>  |  新出发京零 字第大120007号</span>

    <span><a href="">音像制品经营许可证苏宿批005号</a>  |  出版物经营许可证编号新出发(苏)批字第N-012号  |  互联网出版许可证编号新出网证(京)字150号</span>

    <span><a href="">网络文化经营许可证京网文[2011]0168-061号</a>  违法和不良信息举报电话：4006561155  Copyright © 2004-2014  京东JD.com 版权所有</span>

    <span>京东旗下网站：<a href="">360TOP</a>  <a href="">拍拍网</a> <a href="">网银在线</a> </span>

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
