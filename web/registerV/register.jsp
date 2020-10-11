<%
	String path = request.getContextPath();
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

	<title>用户注册</title>
	<link rel="stylesheet" href="../style/base.css" type="text/css">
	<link rel="stylesheet" href="../style/global.css" type="text/css">
	<link rel="stylesheet" href="../style/header.css" type="text/css">
	<link rel="stylesheet" href="../style/login.css" type="text/css">
	<link rel="stylesheet" href="../style/footer.css" type="text/css">

	<script type="text/javascript">
		window.onload = function testName(){
		// 获取username的span标签
		var usernameErrorSpan = document.getElementById("usernameError");
		// 给用户名文本框绑定blur事件
		var usernameElt = document.getElementById("username");
		usernameElt.onblur = function(){
			// 获取用户名
			var username = usernameElt.value;
			// 去除前后空白
			username = username.trim();
			// 判断用户名是否为空

			/*
                  if(username){
                      // 代表username不是空字符串
                      alert("username = " + username);
                  }else{
                      // 代表username是空字符串
                      alert("username是空字符串");
                  }
              */

			// if(username.length == 0){}
			if(username === ""){
				// 用户名为空
				usernameErrorSpan.style.color = "red"
				usernameErrorSpan.innerText = "用户名不能为空";
			}else{
				// 用户名不为空
				// 继续判断长度[6-14]
				if(username.length < 3 || username.length > 12){
					// 用户名长度非法
					usernameErrorSpan.style.color = "red"
					usernameErrorSpan.innerText = "用户名长度必须在[3-12]之间";
				}else{
					// 用户名长度合法
					// 继续判断是否含有特殊符号
					var regExp = /^[A-Za-z0-9]+$/;
					var ok = regExp.test(username);
					if(ok){
						// 用户名最终合法
					}else{
						// 用户名中含有特殊符号
						usernameErrorSpan.innerText = "用户名只能由数字和字母组成";
					}
				}
			}
		}

		// 给username这个文本框绑定获得焦点事件
		usernameElt.onfocus = function(){
			// 清空非法的value
			if(usernameErrorSpan.innerText != ""){
				usernameElt.value = "";
			}
			// 清空span
			usernameErrorSpan.innerText = "";
		}

			window.onload = function testPwd(){
				var pwdx = document.getElementById("pwd_test");
				var userpwd = document.getElementById("userpwd");
				var pwdvalue = userpwd.value;
				if(pwdvalue.length >= 3 && pwdvalue.length <= 12){
					var regExp = /^\w+$ 或 ^\w{3,20}$/;
					var pwdTest2 = regExp.test(pwdvalue);

					if(pwdTest2){
						pwdTest.style.color = "green";
						pwdTest.innerHTML = "√";
						return true;
					}else{

						pwdTest.style.color = "red";
						pwdTest.innerHTML = "密码格式不正确，至少包含一个数字";
						return false;
					}
				}else{

					pwdTest2.style.color = "red";
					pwdTest2.innerHTML = "密码格式不正确，长度为3--12位";
					return false;
				}
			}

		// 获取密码错误提示的span标签
		var pwdErrorSpan = document.getElementById("pwdError");
		// 获取确认密码框对象
		var userpwd2Elt = document.getElementById("userpwd2");
		// 绑定blur事件
		userpwd2Elt.onblur = function(){
			// 获取密码和确认密码
			var userpwdElt = document.getElementById("userpwd");
			var userpwd = userpwdElt.value;
			var userpwd2 = userpwd2Elt.value;
			if(userpwd != userpwd2){
				// 密码不一致
				pwdErrorSpan.style.color = "red"
				pwdErrorSpan.innerText = "密码不一致";
			}else{
				// 密码一致
			}
		}

		// 绑定focus事件
		userpwd2Elt.onfocus = function(){
			if(pwdErrorSpan.innerText != ""){
				userpwd2Elt.value = "";
			}
			pwdErrorSpan.innerText = "";
		}

		// 给提交按钮绑定鼠标单击事件
		var submitBtnElt = document.getElementById("submitBtn");
		submitBtn.onclick = function(){
			// 触发username的blur userpwd2的blur email的blur
			// 不需要人工操作,使用纯JS代码触发事件.
			usernameElt.focus();
			usernameElt.blur();

			userpwd2Elt.focus();
			userpwd2Elt.blur();

			// 当所有表单项都是合法的时候,提交表单
			if(usernameErrorSpan.innerText == "" && pwdErrorSpan.innerText == ""){
				// 获取表单对象
				var userFormElt = document.getElementById("userForm");
				// 可以在这里设置action,也可以不在这里.
				userFormElt.action = "http://localhost:8080/jd/save";
				// 提交表单
				userFormElt.submit();
			}
		}
	}
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
					<li>您好，欢迎来到京西！[<a href="../loginServlet?method=toLogin">登录</a>] [<a href="registerServlet?method=toRegister">免费注册</a>] </li>
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

	<!-- 页面头部 start -->
	<div class="header w990 bc mt15">
		<div class="logo w990">
			<h2 class="fl"><a href="index.jsp"><img src="../images/logo.png" alt="京西商城"></a></h2>
		</div>
	</div>
	<!-- 页面头部 end -->
	
	<!-- 登录主体部分start -->
	<div class="login w990 bc mt10 regist">
		<div class="login_hd">
			<h2>用户注册</h2>
			<b></b>
		</div>
		<div class="login_bd">
			<div class="login_form fl">
				<form action="<%=path%>/registerServlet" method="post">
					<input type="hidden" name="method" value="register">
					<ul>
						<li>
							<label >用户名：</label>
							<input type="text" class="txt" name="username"  id="username" onblur="testName()"/><span id="usernameError" ></span>
							<p>长度必须在3-12之间，用户名只能由数字和字母组成</p>
						</li>
						<li>
							<label >密码：</label>
							<input type="password" class="txt" name="userpwd" id="userpwd"/><span id="pwd_test"></span>
							<p>3-12位字符，可使用字母、数字和符号的组合，不建议使用纯数字、纯字母、纯符号</p>
						</li>
						<li>
							<label >确认密码：</label>
							<input type="password" class="txt" id="userpwd2" name="userpwd2" /><span id="pwdError"></span>
							<p> <span>请再次输入密码</span></p>
						</li>
						<li>
							<label >&nbsp;</label>
							<input type="checkbox" class="chb" checked="checked" /> 我已阅读并同意《用户注册协议》
						</li>
						<li>
							<label >&nbsp;</label>
							<input type="submit" onclick="" value="" class="login_btn" id="submitBtn" />
						</li>
					</ul>
				</form>

				
			</div>
			
			<div class="mobile fl">
				<h3>手机快速注册</h3>			
				<p>中国大陆手机用户，编辑短信 “<strong>XX</strong>”发送到：</p>
				<p><strong>1069099988</strong></p>
			</div>

		</div>
	</div>
	<!-- 登录主体部分end -->

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