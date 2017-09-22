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
String user_name=request.getParameter("user_name");
String gsid=request.getParameter("gsid");
String CName=request.getParameter("CName");
String CAdress=request.getParameter("CAdress");
String szdy=request.getParameter("szdy");
String email=request.getParameter("email");
String Clegalperson=request.getParameter("Clegalperson");
String Yb=request.getParameter("Yb");
String Introduction=request.getParameter("Introduction");
String pwd1=request.getParameter("pwd1");
String pwd2=request.getParameter("pwd2");
String s = "select * from usertable";
ResultSet rs = db.executeQuery(s);
while (rs.next())//查询数据库中是否已经存在该用户
{
	if(rs.getString(1).equals(user_name))
	{
		out.println("<script language='javaScript'> alert('注册失败！用户名已存在！');</script>");
		response.setHeader("refresh","1;url=Register.jsp");
	}
}
/* if(!pwd1.equals(pwd2))//判断密码和确认密码是否一致
{
	out.println("<script language='javaScript'> alert('密码与确认密码不一致！');</script>");
	response.setHeader("refresh","1;url=Register.jsp");
} */
String sql="insert into usertable values('"+user_name+"','"+gsid+"','"+CName+"','"+CAdress+"','"+szdy+"','"+email+"','"+Clegalperson+"','"+Yb+"','"+Introduction+"','"+pwd1+"','yh')";
int i=0;
i=db.executeUpdate(sql);
System.out.println(sql);

if(i==1)
	{out.println("<script language='javaScript'> alert('注册成功！');top.location.href='login.html';</script>");/* response.setHeader("refresh","1;url=login.html"); */

	}

%>
</body>
</html>