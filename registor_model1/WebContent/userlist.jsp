<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<jsp:useBean id="jdbc" class="register.JDBCBean"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息列表</title>
</head>
<body>
<center>
<h2>用户信息列表</h2>
<table bordercolor="blue">
<tr><th>序号</th><th>用户名</th></tr>
<%
	//查询数据库中所有信息
	String sql="select * from users";
	ResultSet rs=jdbc.executeQuery(sql);
	int i=0;
	while(rs.next())
	{
%>
	<tr>
	<td align="center"><%=rs.getString("id") %></td>
	<td align="center"><%=rs.getString("username") %></td>
	<td align="center"><%=rs.getString("password") %></td>
	</tr>
<%
i++;
}

	jdbc.close();
	%>
</table>
<h3><%=i %></h3>
</center>
</body>
</html>