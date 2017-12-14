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

String sql02="select * from car where user_id=?";

int i=Integer.parseInt(session.getAttribute("userid").toString());
ResultSet rs2=DBHelper.executeQuery(conn, sql02, i);


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
							<a href="login.jsp">会员登录</a>
						</li>|
						<li>
							<a href="userCenter.jsp">会员注册</a>
						</li>|
						<li>
							<a href="#">注销退出</a>
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
							亲爱的<%=session.getAttribute("userid")%>您好! 欢迎光临!
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
								<img src=<%=rs.getString(10)%> />
							</div>
							<div class="context_font">
								菜名: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b><%=rs.getString(2)%></b><br/> 市场价格: <%=rs.getDouble(6)%><br/> 会员价格:
								<font><b><%=rs.getDouble(8)%></b></font><br/> 配料: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(4)%><br/> <br/> <br/> 菜品类型: 炒菜
							</div>
						</div>
						<div class="context_button">
						    <!--加入餐车按钮  -->
							<a href="addCar.jsp?dinnerName=<%=rs.getString(2)%>&&dinnerPrice=<%=rs.getDouble(6)%>"><img src="img/img_dinggou.gif" /></a>
						</div>
					</div>
                   <%} %>
                    
		
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
								<a href="notice.jsp">本店特色《咸菜肉饭》</a>
								<font>2015-02-28</font>
							</li>
							<li>
								<a href="notice.jsp">本店特色《咸菜肉饭》</a>
								<font>2015-02-28</font>
							</li>
						</ul>
					</div>
					<!--
                    	作者：luchao7285@163.com
                    	时间：2017-03-11
                    	描述：我的餐车栏
                    -->
                    <%
                    	
                    %>
					<div id="dinner">
						<div id="dinner_title">
							我的餐车
							<a href="#">更多>></a>
						</div>
						<br/>
						<div id="dinner_context_head">
							菜单名称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量
						</div>
						<table>
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
							
						</table>
						
						<div id="dinner_context_foot">
							小计：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font><%=sum%></font>元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font><%=fenshu%></font>份
						</div>
						<div id="dinner_context_button">
							<a href="addOrder.jsp"><img src="img/canche_submit.gif" /></a>
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
								<a href="show.jsp">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.jsp">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.jsp">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.jsp">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.jsp">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.jsp">糖醋排骨</a>
								<font>已销售4次</font>
							</li>
							<li>
								<a href="show.jsp">糖醋排骨</a>
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