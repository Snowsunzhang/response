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
String pwd1=request.getParameter("pwd1");
String pwd2=request.getParameter("pwd2");
String pwd3=request.getParameter("pwd3");
	String s = "select * from usertable";
	ResultSet rs = db.executeQuery(s);
int a=0;
while (rs.next())
	    {
		  if(rs.getString(1).equals(name)&&rs.getString(10).equals(pwd1))
			  a=1;
		}
int i=0;
String sql="update usertable set pwd1='"+pwd2+"' where usermame='"+name+"'";
i=db.executeUpdate(sql);

if(i==1&&a==1)
	{out.println("<script language='javaScript'> alert('修改成功！');</script>");response.setHeader("refresh","1;url=xgpwd.jsp"); 
}
else
{
	{out.println("<script language='javaScript'> alert('修改失败！');</script>");response.setHeader("refresh","1;url=xgpwd.jsp");}
}

%>
</body>
</html>