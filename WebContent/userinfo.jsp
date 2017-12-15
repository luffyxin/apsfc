	<%@page import="java.sql.ResultSet"%>
	<%@page import="com.hpe.util.DBHelper"%>
	<%@page import="java.sql.Connection"%>
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
	<%
		Integer userid=(Integer)session.getAttribute("userid");
	ResultSet rs=null;
		if(userid!=null){
			String sql="select * from users where id=?";
			Connection conn=DBHelper.getConn();
			rs=DBHelper.executeQuery(conn, sql,userid);
			rs.next();
		}
		
	
	
		
		
	%>
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
							<%=session.getAttribute("account")==null?"请登录":"亲爱的"+session.getAttribute("account")+"您好! 欢迎光临!" %>
						</div>
						<ul>
							<li>
								<a href="index.jsp"><b>首页</b></a>
							</li>
							<li>
								<a href="diner.jsp"><b>我的餐车</b></a>
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
			<div id="middle_userCenter">
			<form action="doUserCenter.jsp"  method="post">
				<table border="2" cellspacing="0" cellpadding="0" bordercolor="orangered">
					<tr>
						<td colspan="3"><b>用户信息</b></td>
					</tr>
					<tr>
						<td class="left">用 户 名：</td>
						<td class="center"><%=rs.getString(2)%></td>
			
					</tr>
					<tr>
						<td class="left">密 码：</td>
						<td class="center"><%=rs.getString(3) %></td>
			
					</tr>
					<tr>
						<td class="left">真实姓名：</td>
						<td class="center"><%=rs.getString(4) %></td>
			
					</tr>
					<tr>
						<td class="left">性 别：</td>
						<td align="center"><%=rs.getString(5) %></td>
			
					</tr>
					<tr>
						<td class="left">生 日：</td>
						<td class="center"><%=rs.getString(6) %></td>
			
					</tr>
					<tr>
						<td class="left">身份证号：</td>
						<td class="center"><%=rs.getString(7) %></td>
		
					</tr>
					<tr>
						<td class="left">家庭住址：</td>
						<td class="center"><%=rs.getString(8) %></td>
			
					</tr>
					<tr>
						<td class="left">电话号码：</td>
						<td class="center"><%=rs.getString(9) %></td>
	
					</tr>
					<tr>
						<td class="left">电子邮箱：</td>
						<td class="center"><%=rs.getString(10) %></td>
			
					</tr>
					<tr>
						<td class="left">邮政编码：</td>
						<td class="center"><%=rs.getString(11) %></td>
					</tr>
					<tr>
					</tr>
				</table>
			</form>
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