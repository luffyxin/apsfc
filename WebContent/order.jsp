<%@page import="java.sql.ResultSet"%>
<%@page import="com.hpe.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
	//页面加载是需要加载所有的订单信息
	Connection conn = DBHelper.getConn();
	Integer uid = (Integer) session.getAttribute("userid");

	String sql = "select u.name as userName,u.tel,u.address,o.dishes_name as dishesName,o.dishes_sum,o.dishes_price  priceAssociator, o.dateTime,o.delivery "
			+ "from orders o,users u   where o.userId = u.id  and u.id=?  ";
	ResultSet rs = null;
	String dishesName = request.getParameter("dishesName");
	String dateTime = request.getParameter("dateTime");
	//判断有没有输入菜单名称和日期
	if (dishesName != null &&!("").equals(dishesName)) { //按照名字查询
		sql = sql + " and o.dishes_name like ?  order by o.dateTime desc ";
		rs = DBHelper.executeQuery(conn, sql, uid, "%" + dishesName + "%");
	} else if (dateTime != null&&!("").equals(dateTime)) { //按照日期查询
		sql = sql + "and  o.dateTime like ? order by o.dateTime desc";
		rs = DBHelper.executeQuery(conn, sql, uid, "%" + dateTime + "%");
	} else { //查询框什么都没有输入
		sql = sql + "order by o.dateTime desc ";
		rs = DBHelper.executeQuery(conn, sql, uid);
	}
	
%>
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
					<li><a href="login.jsp">会员登录</a></li>|
					<li><a href="userCenter.jsp">会员注册</a></li>|
					<li><a href="loginOut.jsp">注销退出</a></li>|
					<li><a href="description.jsp">配送说明</a></li>|
					<li><a href="aboutUs.jsp">关于我们</a></li>
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
						<li><a href="index.jsp"><b>首页</b></a></li>
						<li><a href="dinner.jsp"><b>我的餐车</b></a></li>
						<li><a href="order.jsp"><b>我的订单</b></a></li>
						<li><a href="userCenter.jsp"><b>用户中心</b></a></li>
						<li><a href="description.jsp"><b>配送说明</b></a></li>
						<li><a href="aboutUs.jsp"><b>关于我们</b></a></li>
						<li><a href="loginOut.jsp"><b>注销退出</b></a></li>
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
		  <form action="order.jsp" method="post">
			<table border="2" cellspacing="0" cellpadding="0"
				bordercolor="orangered">
				<tr>
					<td width="200px" align="right">按菜品名称查询</td>
					<td width="300px" align="left"><input type="text"
						name="dishesName" />  <input type="image"  src="img/search5.gif">
					</td>
				</tr>
				<tr>
					<td width="200px" align="right">按销售日期查询</td>
					<td width="300px" align="left"><input type="date"
						name="dateTime" /> <input type="image"  src="img/search5.gif">
					</td>
				</tr>
				<tr>
					<td colspan="2">
							<a href="all.jsp">我的所有订单</a>
							<a href="undo.jsp">未已派送订单</a>
							<a href="do.jsp">已派送订单</a>
						</td>
				</tr>
			</table>
		 </form>
			<br />
			<table border="2" cellspacing="0" cellpadding="0"
				bordercolor="orangered">
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
				<%
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getInt(5)%></td>
					<td><%=rs.getDouble(6)%></td>
					<td><%=rs.getInt(5) * rs.getDouble(6)%></td>
					<td><%=rs.getDate(7)%></td>
					<td><%=rs.getInt(8) == 0 ? "否" : "是"%></td>
				</tr>
				<%
					}
				%>

			</table>
		</div>
		<!--
        	作者：luchao7285@163.com
        	时间：2017-03-11
        	描述：下层
        	-->
		<div id="bottom" style="margin-top: 50px;">
			<ul>
				<li><a href="aboutUs.jsp">关于我们</a></li>|
				<li><a href="description.jsp">配送说明</a></li>|
			</ul>
			Copyright(C)2015-2020
		</div>
	</div>
</body>

</html>