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
Connection conn=DBHelper.getConn();


int userId=Integer.parseInt(session.getAttribute("userid").toString());
String cname=request.getParameter("cname");
double cprice=Double.parseDouble(request.getParameter("cprice"));

ResultSet rs =  null;
if(userId!=0){
	String sql = "select cid from car where dish_name=? and user_id=?";
	rs = DBHelper.executeQuery(conn, sql, cname,userId);
}else{
	String sql = "select cid from car where dish_name=?";
	rs = DBHelper.executeQuery(conn, sql, cname);
}
if (rs.next()) {	
	String sql2 = "update car set count=count+1 where dish_name=?";
	DBHelper.executeUpdate(conn, sql2, cname);
} else {
	String sql3 = "insert into car (user_id,dish_name,dish_price,count) values(?,?,?,?)";
	DBHelper.executeUpdate(conn, sql3, userId, cname, cprice, 1);
}
//执行成功之后，返回首页面
request.getRequestDispatcher("index.jsp").forward(request, response);




%>
</body>
</html>