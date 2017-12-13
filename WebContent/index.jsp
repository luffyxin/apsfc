<%@page import="java.sql.ResultSet"%>
<%@page import="com.hpe.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
//获取连接接口
Connection  conn=DBHelper.getConn();
String  sql="select *  from dishes";
ResultSet  rs=DBHelper.executeQuery(conn, sql);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/menu.css" />
		<link rel="stylesheet" type="text/css" href="css/context.css" />
		<link rel="stylesheet" type="text/css" href="css/bodyAndBottom.css" />
		<title>阿婆私房菜</title>
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
			<div id="middle_index">
				<!--
                	作者：luchao7285@163.com
                	时间：2017-03-10
                	描述：中层左部
                -->
				<div id="middle_left">
					<!--
                    	作者：luchao7285@163.com
                    	时间：2017-03-10
                    	描述：中层左部内容
                    -->
                    <%while(rs.next()){%> 
                    <div class="context">
						<div class="context_top">
							<div class="context_img">
							   <img alt="" src="<%=rs.getString(10)%>">
							</div>
							<div class="context_font">
								菜名: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b><%=rs.getString(2) %></b><br/> 市场价格: <%=rs.getDouble(6) %><br/> 会员价格:
								<font><b><%=rs.getDouble(8) %></b></font><br/> 配料: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=rs.getString(4) %><br/> <br/> <br/> 菜品类型: 炒菜
							</div>
						</div>
						<div class="context_button">
							<a href="#"><img src="img/img_dinggou.gif" /></a>
						</div>
					</div>
                    	
                   <% } %>
                    
					
			
			
				
				
				
				</div>
				<!--
                	作者：luchao7285@163.com
                	时间：2017-03-11
                	描述：中层右部
                -->
				<div id="middle_right">
					<!--
                    	作者：luchao7285@163.com
                    	时间：2017-03-11
                    	描述：餐厅公告栏
                    -->
					<div id="announcement">
						<div id="announcement_title">
							餐厅公告
							<a href="#">更多>></a>
						</div>
						<br/>
						<ul>
							<li>
								<a href="notice.html">本店特色《咸菜肉饭》</a>
								<font>2015-02-28</font>
							</li>
							<li>
								<a href="notice.html">本店特色《咸菜肉饭》</a>
								<font>2015-02-28</font>
							</li>
						</ul>
					</div>
					<!--
                    	作者：luchao7285@163.com
                    	时间：2017-03-11
                    	描述：我的餐车栏
                    -->
					<div id="diner">
						<div id="diner_title">
							我的餐车
							<a href="#">更多>></a>
						</div>
						<br/>
						<div id="diner_context_head">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;菜单名称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量
						</div>
						<div id="diner_context_foot">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小计：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font>0.0</font>元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font>0</font>份
						</div>
						<div id="diner_context_button">
							<a href="#"><img src="img/canche_submit.gif" /></a>
							<a href="#"><img src="img/quxiao2.gif" /></a>
						</div>
					</div>
					<!--
                    	作者：luchao7285@163.com
                    	时间：2017-03-11
                    	描述：销售排行栏
                    -->
					<div id="sell">
						<div id="sell_title">
							销售排行榜
							<a href="#">更多>></a>
						</div>
						<br/>
						<ul>
							<li>
								<a href="show.html">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.html">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.html">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.html">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.html">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.html">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.html">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--
        	作者：luchao7285@163.com
        	时间：2017-03-11
        	描述：下层
        	-->
			<div id="bottom">
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