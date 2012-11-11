<%@page import="javax.mail.*,javax.mail.internet.*,java.net.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String host="smtp.live.com";
	String user="chen15861132927@hotmail.com";
	String password="chenw15861132927";
	Properties props=new Properties();
    props.put("mail.host",host );
    Session ses=Session.getDefaultInstance(props,null);
    Store store=ses.getStore("pop3");
    store.connect(host, user, password);
    Folder folder=store.getFolder("INBOX");
    folder.open(Folder.READ_ONLY);
    Message[] messages=folder.getMessages();
    folder.close(false);
    store.close();
%>
</body>
</html>