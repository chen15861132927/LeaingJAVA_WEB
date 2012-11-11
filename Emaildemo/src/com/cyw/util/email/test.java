package com.cyw.util.email;

public class test
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		// 这个类主要是设置邮件　　
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.126.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("chen15861132927@126.com");
		mailInfo.setPassword("chenw15861132927");// 您的邮箱密码
		mailInfo.setFromAddress("chen15861132927@126.com");
		// mailInfo.setToAddress("315905059@qq.com");
		mailInfo.setToAddress("1045005960@qq.com");
		mailInfo.setSubject("设置邮箱标题 如http://www.guihua.org 中国桂花网");
		mailInfo.setContent("设置邮箱内容 如http://www.guihua.org 中国桂花网 是中国最大桂花网站==");
		// 这个类主要来发送邮件　　
		SimpleMailSender sms = new SimpleMailSender();
		sms.sendTextMail(mailInfo);// 发送文体格式
		SimpleMailSender.sendHtmlMail(mailInfo);// 发送html格式　
		System.out.println("success");
	}

}