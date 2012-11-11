<%@ page language="java" contentType="text/html; charset=UTF-8"  import="java.sql.*"
    pageEncoding="UTF-8"%>
<jsp:useBean id="jdbc" class="register.JDBCBean"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>检查用户名是否存在</title>
</head>
<body>
<%
String username=request.getParameter("username");
String sql="select * from users where username='"+username+"'";
ResultSet rs=jdbc.executeQuery(sql);
if(rs!=null&&rs.next())
{
	out.println("该用户名已经被占用");
}
else
{
	out.println("该用户名可用");
}
jdbc.close();
%>
</body>
</html>