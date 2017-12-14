<%@page import="java.util.Date"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page import="com.hpe.util.DBHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 //提交餐车：
 Integer  userId=(Integer)session.getAttribute("userid");
  if(userId==null){//如果用户没有登录，则提示先登录
	  request.getRequestDispatcher("login.jsp").forward(request, response);
	 
  }else{
	  //跳转到订单页面
	  //餐车表中的数据保存到订单表中
	  Connection  conn=DBHelper.getConn();
	  String sql = "select * from car where user_id=?";
	  ResultSet  rs=DBHelper.executeQuery(conn, sql, userId);
	  while(rs.next()){
		  String sql2="insert into orders (userId,dishes_price,dishes_name,dishes_sum,dateTime,delivery) values(?,?,?,?,?,?)";
		  DBHelper.executeUpdate(conn, sql2, userId,rs.getDouble(4), rs.getString(3),rs.getInt(5),new Date(),0);
	  }
	//订单提交成功之后，餐车表中的数据就应该删掉
		String sql2 = "delete from car where user_id=?";
		int i = DBHelper.executeUpdate(conn, sql2, userId);
	  request.getRequestDispatcher("order.jsp").forward(request, response);
  }
%>
