<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'sc.jsp' starting page</title>

  </head>
  
  <body>
<jsp:useBean id="db" class="cesh.DBean"  scope ="page"/>
	<%
	request.setCharacterEncoding("UTF-8");
	String in=request.getParameter("infoname");
	String infoname= new String (in.getBytes("ISO-8859-1"),"UTF-8");
	int i=0;
	String s="select zt from infotable where infono='"+infoname+"'";
	ResultSet hh = db.executeQuery(s);
	hh.next();
	if(hh.getString(1).equals("已提交    "))
	{
		out.println("<script language='javaScript'> alert('技术已经提交，不能删除');</script>");
		response.setHeader("refresh","1;url=mywj.jsp");
	}
	else
	{
	 String sql="delete from infotable where infono='"+infoname+"'";
	i=db.executeUpdate(sql);
	System.out.println(sql);
	if(i==1)
	{
	response.setHeader("refresh","1;url=mywj.jsp");
	}
	}
	%>
  </body>
</html>
