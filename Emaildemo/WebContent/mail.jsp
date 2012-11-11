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
    MimeMessage msg=new MimeMessage(ses);
    InternetAddress from=new InternetAddress(user);
    InternetAddress to=new InternetAddress("chen15861132927@gmail.com");
    msg.setFrom(from);
    msg.addRecipient(Message.RecipientType.TO, to);
    
    msg.setSubject("frist mail");
    msg.setText("this is my first mail");
    Transport tran =ses.getTransport("smtp");
    tran.connect(host, user, password);
    Transport.send(msg);
    out.println("success");
%>
</body>
</html>