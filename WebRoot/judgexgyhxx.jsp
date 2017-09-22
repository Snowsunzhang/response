<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="cesh.DBean"  scope ="page"/>
<%
request.setCharacterEncoding("UTF-8");
String name=(String)session.getAttribute("user_name").toString();
String user_name=request.getParameter("user_name");
String gsid=request.getParameter("gsid");
String CName=request.getParameter("CName");
String CAdress=request.getParameter("CAdress");
String szdy=request.getParameter("szdy");
String email=request.getParameter("email");
String Clegalperson=request.getParameter("Clegalperson");
String Yb=request.getParameter("Yb");
String Introduction=request.getParameter("Introduction");
String sql="update usertable set usermame='" +user_name+"',gsid='"+gsid+"', CName='"+CName+"', CAdress='"+CAdress+"', szdy='"+szdy+"', email='"+email+"', Clegalpersonv='"+Clegalperson+"', Yb='"+Yb+"', Introduction='"+Introduction+"' where usermame='"+name+"'";

int i=0;
i=db.executeUpdate(sql);

if(i==1)
	{out.println("<script language='javaScript'> alert('修改成功！');</script>");response.setHeader("refresh","1;url=userinfo.jsp"); 

	}

%>
</body>
</html>