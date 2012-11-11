<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"
    pageEncoding="UTF-8"%>
<jsp:useBean  class="calculator.Calculator" id="calculat" scope="page">
<jsp:setProperty property="*" name="calculat"/>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>四则运算</title>
</head>
<body>
<%
	try
	{
		String result=calculat.calculate();
		out.println(calculat.getValue1()+calculat.getOper()+calculat.getValue2()+"="+result);
		out.println("<a herf=\"calculator.html\">返回</a>");
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
</body>
</html>