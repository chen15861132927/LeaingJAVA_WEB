<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${pageContext.request.requestURL}<br/>
${pageContext.request.queryString}<br/>
${pageContext.request.contextPath }<br/>
${pageContext.servletContext.serverInfo }<br/>
<-------------------------------------------><br/>
${header.host}<br/>
${header.accept }<br/>
${header["accept-encoding"] }<br/>
${header["accept-language"] }<br/>
${header["accept-length"] }<br/>
${header["user-agent"] }<br/>
<-------------------------------------------><br/>
<%
//Cookie cookie=new Cookie("film","A Chinese Odyssey");
//cookie.setMaxAge(300);
//response.addCookie(cookie);
Cookie co[]=request.getCookies();
int len=-1;
if(co!=null)
	len=co.length;
%>
<%=len %><br/>
value:${cookie.film.value}<br/>
</body>
</html>