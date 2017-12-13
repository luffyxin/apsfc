<%@page import="java.sql.ResultSet"%>
<%@page import="com.hpe.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//获取登录页面提交过来的用户名和密码
String account=request.getParameter("account");//account 必须和 帐号框中 name属性值一样
String  password=request.getParameter("password");
System.out.print("用户名："+account);
//和数据库校验
Connection conn=DBHelper.getConn();
String sql="select id from  users where account=? and password=?";
 ResultSet rs=  DBHelper.executeQuery(conn, sql, account,password);
         // select  *  from  users where account=zz  and password=123
//判断rs有没有值
if(rs.next()){
	System.out.print("登录成功");
	//登录成功跳转到项目首页面
	request.getRequestDispatcher("index.jsp").forward(request, response);
}else{
	System.out.print("登录失败");
	//跳转到项目的注册页面
	request.getRequestDispatcher("userCenter.jsp").forward(request, response);

}


%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>