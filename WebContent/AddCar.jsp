<%@page import="java.sql.ResultSet"%>
<%@page import="com.hpe.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf--8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
int userid=Integer.parseInt(session.getAttribute("userid").toString());
String cname=request.getParameter("cname");
double cprice=Double.parseDouble(request.getParameter("cprice"));

Connection conn=DBHelper.getConn();
String sql="insert into car (user_id,dish_name,dish_price,count) VALUES(?,?,?,?)";
DBHelper.executeUpdate(conn, sql,userid,cname,cprice,1);
request.getRequestDispatcher("index.jsp").forward(request, response);
%>
</body>
</html>