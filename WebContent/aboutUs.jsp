<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/menu.css" />
		<link rel="stylesheet" type="text/css" href="css/bodyAndBottom.css" />
		<link rel="stylesheet" type="text/css" href="css/aboutUs.css" />
		<title>关于我们</title>
	</head>
	<style type="text/css">

	</style>

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
							<a href="login.jsp">会员登录</a>
						</li>|
						<li>
							<a href="userCenter.jsp">会员注册</a>
						</li>|
						<li>
							<a href="loginOut.jsp">注销退出</a>
						</li>|
						<li>
							<a href="description.jsp">配送说明</a>
						</li>|
						<li>
							<a href="aboutUs.jsp">关于我们</a>
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
								<%
						if(session.getAttribute("account")==null){%>
							游客你好！请先登录
						<%}else{%>												
							亲爱的<%=session.getAttribute("account")%>您好! 欢迎光临!
							<%}%>
						</div>
						<ul>
							<li>
								<a href="index.jsp"><b>首页</b></a>
							</li>
							<li>
								<a href="dinner.jsp"><b>我的餐车</b></a>
							</li>
							<li>
								<a href="order.jsp"><b>我的订单</b></a>
							</li>
							<li>
								<a href="userCenter.jsp"><b>用户中心</b></a>
							</li>
							<li>
								<a href="description.jsp"><b>配送说明</b></a>
							</li>
							<li>
								<a href="aboutUs.jsp"><b>关于我们</b></a>
							</li>
							<li>
								<a href="loginOut.jsp"><b>注销退出</b></a>
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
			<div id="middle_aboutUs">
				<br/>
				<p align="center" style="font-size: 28px;"><b>关于我们</b></p>
				<br/>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小时候的味道”即便五年十年都没机会再吃，也总是会挂念着，一吃就能想起过往时的味道来。这种味觉记忆，缠绕着思乡的点滴情怀，成为人们最原始的“乡愁”。你也有“小时候的味道”吗？ </p>
				<br/>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎来到阿婆私房菜，让你重温童年妈妈的味道！</p>
				<br/>
				<p align="center">
					<a href="index.jsp">返回</a>
				</p>
			</div>
			<!--
        	作者：luchao7285@163.com
        	时间：2017-03-11
        	描述：下层
        	-->
			<div id="bottom" style="margin-top: 50px;">
				<ul>
					<li>
						<a href="aboutUs.jsp">关于我们</a>
					</li>|
					<li>
						<a href="description.jsp">配送说明</a>
					</li>|
				</ul>
				Copyright(C)2015-2020
			</div>
		</div>
	</body>

</html>