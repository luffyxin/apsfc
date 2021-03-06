<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import="com.hpe.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
 <%
 Connection  conn=DBHelper.getConn();
 String sql="select * from car";
 ResultSet  rs2=null;
 Integer userId=(Integer)session.getAttribute("userid");
 if(userId!=null){
		sql=sql+" where user_id=?";
		rs2=DBHelper.executeQuery(conn, sql, userId);
	}else{
		rs2=DBHelper.executeQuery(conn, sql);
	}
 %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/menu.css" />
		<link rel="stylesheet" type="text/css" href="css/bodyAndBottom.css" />
		<link rel="stylesheet" type="text/css" href="css/dinner.css" />
		<title>我的餐车</title>
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
			<div id="middle_dinner">
				<table border="2" cellspacing="0" cellpadding="0" bordercolor="orangered">
					<tr>
						<td colspan="3"><b>我的订餐信息列表</b></td>
					</tr>
					<tr>
						<td width="250px">菜品名称</td>
						<td width="150px">单价</td>
						<td width="150px">数量</td>
					</tr>
					<%
						double sum=0;
						int fenshu=0;
						while(rs2.next()){
						%>	
							<tr>
							<td width="120px"><%=rs2.getString(3)%></td>
							<td width="90px"><%=rs2.getDouble(4)%>元</td>
							<td width="50px"><%=rs2.getInt(5)%>份</td>
							</tr>
						 <%
							sum+=rs2.getDouble(4);
						 	fenshu+=rs2.getInt(5);
						}%>
					<tr>
						<td colspan="3">小计：
							<font>0.0</font>元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共：
							<font>0</font>份</td>
					</tr>
					<tr>
						<td colspan="3">
							<a href="addOrder.jsp"><img src="img/canche_submit.gif" /></a>
							<a href="loginOut.jsp"><img src="img/quxiao2.gif" /></a>
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

</html>tml>