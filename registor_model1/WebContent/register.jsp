<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="jdbc" class="register.JDBCBean"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String sql="select * from users where username='"+username+"'";
	ResultSet rs=jdbc.executeQuery(sql);
	if(rs!=null&&rs.next())
	{
		jdbc.close();
		%>
		<center>
		 <h3>该用户名已经被占用，请<a href="register.html">返回</a></h3>
		 </center>
		<%
	}
	else
	{
		sql="insert into users(username,password) values('"+username+"','"+password+"')";
		int res=jdbc.executeUpdate(sql);
		if(res==1)
		{
			jdbc.close();
			%>
			<center> 
			<h2>注册成功!</h2>
			<a href="userlist.jsp">查看已有用户列表</a>
			</center>
			
			<%
		}
		else
		{
			jdbc.close();
			%>
			<center> 
			<h2>注册失败!请从新</h2>
			<a href="register.html">注册</a>!
			</center>
			
			<%
		}
	}
 %>

</body>
</html>