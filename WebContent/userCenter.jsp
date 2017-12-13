<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/menu.css" />
		<link rel="stylesheet" type="text/css" href="css/bodyAndBottom.css" />
		<link rel="stylesheet" type="text/css" href="css/userCenter.css" />
		<title>用户中心</title>
	</head>

	<body>
		<!--
        	作者：luchao7285@163.com
        	时间：2017-03-10
        	描述：背景层
        -->
		<div id="background">
			<!--
            	作者：luchao7285@163.com
            	时间：2017-03-10
            	描述：上层
            -->
			<div id="top">
				<!--
                	作者：luchao7285@163.com
                	时间：2017-03-10
                	描述：上层上块
                -->
				<div id="top_up">
					<ul>
						<li>
							<a href="login.html">会员登录</a>
						</li>|
						<li>
							<a href="userCenter.html">会员注册</a>
						</li>|
						<li>
							<a href="#">注销退出</a>
						</li>|
						<li>
							<a href="description.html">配送说明</a>
						</li>|
						<li>
							<a href="aboutUs.html">关于我们</a>
						</li>
					</ul>
				</div>
				<!--
                	作者：luchao7285@163.com
                	时间：2017-03-10
                	描述：上层下块
                -->
				<div>
					<!--
                	作者：luchao7285@163.com
                	时间：2017-03-10
                	描述：上层下块左
                -->
					<div style="float: left;">
						<img src="img/1257477260.gif" />
					</div>
					<!--
                	作者：luchao7285@163.com
                	时间：2017-03-10
                	描述：上层下块右
                -->
					<div id="top_bottom_right">
						<div id="title">
							亲爱的111您好! 欢迎光临!
						</div>
						<ul>
							<li>
								<a href="index.html"><b>首页</b></a>
							</li>
							<li>
								<a href="diner.html"><b>我的餐车</b></a>
							</li>
							<li>
								<a href="order.html"><b>我的订单</b></a>
							</li>
							<li>
								<a href="userCenter.html"><b>用户中心</b></a>
							</li>
							<li>
								<a href="description.html"><b>配送说明</b></a>
							</li>
							<li>
								<a href="aboutUs.html"><b>关于我们</b></a>
							</li>
							<li>
								<a href="#"><b>注销退出</b></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--
            	作者：luchao7285@163.com
            	时间：2017-03-10
            	描述：中层
            -->
			<div id="middle_userCenter">
				<table border="2" cellspacing="0" cellpadding="0" bordercolor="orangered">
					<tr>
						<td colspan="3"><b>请填写用户信息(带<font>*</font>为必填项)</b></td>
					</tr>
					<tr>
						<td class="left">用 户 名：</td>
						<td class="center"><input type="text" name="account" /></td>
						<td class="right">
							<font>*</font>您用来登录的用户名</td>
					</tr>
					<tr>
						<td class="left">密 码：</td>
						<td class="center"><input type="password" name="password" /></td>
						<td class="right">
							<font>*</font>长度必须大于5个小于16个字符，只能为英语字、数字</td>
					</tr>
					<tr>
						<td class="left">确认密码：</td>
						<td class="center"><input type="password" name="repassword" /></td>
						<td class="right">
							<font>*</font>请将输入的密码再次输入</td>
					</tr>
					<tr>
						<td class="left">真实姓名：</td>
						<td class="center"><input type="text" name="name" /></td>
						<td class="right">
							<font>*</font>填写您的真实的姓名</td>
					</tr>
					<tr>
						<td class="left">性 别：</td>
						<td align="left">男：<input type="radio" name="gender" checked="checked" />女：<input type="radio" name="gender" /></td>
						<td class="right">
							<font>*</font>请填写您的真实信息</td>
					</tr>
					<tr>
						<td class="left">生 日：</td>
						<td class="center"><input type="text" name="birthday" /></td>
						<td class="right">
							<font>*</font>请输入您的真实年龄</td>
					</tr>
					<tr>
						<td class="left">身份证号：</td>
						<td class="center"><input type="text" name="IDcard" /></td>
						<td class="right">
							<font>*</font>请填写您的真实信息</td>
					</tr>
					<tr>
						<td class="left">家庭住址：</td>
						<td class="center"><input type="text" name="address" /></td>
						<td class="right">
							<font>*</font>请填写您的真实信息</td>
					</tr>
					<tr>
						<td class="left">电话号码：</td>
						<td class="center"><input type="text" name="tel" /></td>
						<td class="right">
							<font>*</font>请填写您的真实信息(格式为02411111111或13911111111)</td>
					</tr>
					<tr>
						<td class="left">电子邮箱：</td>
						<td class="center"><input type="text" name="email" /></td>
						<td class="right">
							<font>*</font>请填写您有效的邮件地址，以便于我们为您提供有效的服务。</td>
					</tr>
					<tr>
						<td class="left">邮政编码：</td>
						<td class="center"><input type="text" name="postCode" /></td>
						<td class="right">
							<font>*</font>请填写您的真实信息(格式为111111)</td>
					</tr>
					<tr>
						<td colspan="3">
							<a href="#"><img src="img/canche_submit.gif" /></a>
						</td>
					</tr>
				</table>
			</div>
			<!--
        	作者：luchao7285@163.com
        	时间：2017-03-11
        	描述：下层
        	-->
			<div id="bottom" style="margin-top: 50px;">
				<ul>
					<li>
						<a href="aboutUs.html">关于我们</a>
					</li>|
					<li>
						<a href="description.html">配送说明</a>
					</li>|
				</ul>
				Copyright(C)2015-2020
			</div>
		</div>
	</body>

</html>