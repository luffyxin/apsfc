<%@page import="java.sql.ResultSet"%>
<%@page import="com.hpe.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%
    String account=request.getParameter("account");
    String password=request.getParameter("password");
   // String repassword=request.getParameter("repassword");
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String birthday=request.getParameter("birthday");
    String IDcard=request.getParameter("IDcard");
    String address=request.getParameter("address");
    String tel=request.getParameter("tel");
    String email=request.getParameter("email");
    String postCode=request.getParameter("postCode");
    
    Connection conn=DBHelper.getConn();
    String sql="insert into users (account,password,name,gender,birthday,IDcard,address,tel,email,postCode) values(?,?,?,?,?,?,?,?,?,?)";
    int cou=DBHelper.executeUpdate(conn, sql, account,password,name,gender,birthday,IDcard,address,tel,email,postCode);
    request.getRequestDispatcher("index.jsp").forward(request, response);
    System.out.print("执行的条数"+cou);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>