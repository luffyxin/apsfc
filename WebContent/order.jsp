<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/menu.css" />
		<link rel="stylesheet" type="text/css" href="css/bodyAndBottom.css" />
		<link rel="stylesheet" type="text/css" href="css/order.css" />
		<title>我的订单</title>
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
			<div id="middle_order">
				<table border="2" cellspacing="0" cellpadding="0" bordercolor="orangered">
					<tr>
						<td width="200px" align="right">按菜品名称查询</td>
						<td width="300px" align="left"><input type="text" />
							<a href="#"><img src="img/search5.gif" /></a>
						</td>
					</tr>
					<tr>
						<td width="200px" align="right">按菜品名称查询</td>
						<td width="300px" align="left"><input type="text" />
							<a href="#"><img src="img/search5.gif" /></a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<a href="#">我的所有订单</a>
							<a href="#">未已派送订单</a>
							<a href="#">已派送订单</a>
						</td>
					</tr>
				</table>
				<br/>
				<table border="2" cellspacing="0" cellpadding="0" bordercolor="orangered">
					<tr>
						<td colspan="9"><b>订单查询结果信息列表</b></td>
					</tr>
					<tr id="list_title">
						<td>菜品名称</td>
						<td>真实姓名</td>
						<td>订购电话</td>
						<td>派送地址</td>
						<td>订购数量</td>
						<td>单价(元)</td>
						<td>合计(元)</td>
						<td style="width: 160px;">订购时间</td>
						<td>是否派送</td>
					</tr>
					<tr>
						<td>咸肉菜饭</td>
						<td>111</td>
						<td>13977777777</td>
						<td>天津市</td>
						<td>1</td>
						<td>12.0</td>
						<td>12.0</td>
						<td>2015-02-15 13:26:09</td>
						<td>是</td>
					</tr>
					<tr>
						<td>糖醋排骨</td>
						<td>111</td>
						<td>13977777777</td>
						<td>天津市</td>
						<td>1</td>
						<td>24.0</td>
						<td>24.0</td>
						<td>2015-04-30 17:22:27</td>
						<td>否</td>
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