<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body >
<jsp:useBean id="db" class="cesh.DBean"  scope ="page"/>
    <%
    request.setCharacterEncoding("UTF-8");
	String infoname=request.getParameter("infoname");
	String result=request.getParameter("result");
	String bm=request.getParameter("bm");
	String sql="";
	int i=0;
	if(result.equals("形式审核已通过"))
	{
		sql="update infotable set sh='"+result+"',bmsh='部门审核未审核',glcs='"+bm+"' where infono='"+infoname+"'";
	}
	else if(result.equals("形式审核未通过"))
	{
		sql="update infotable set sh='"+result+"',bmsh='部门审核未审核',xsshyj='"+bm+"' where infono='"+infoname+"'";
	}
	else
	{
		System.out.println(result);
		System.out.println(result);
	}
	i=db.executeUpdate(sql);
	if(i==1)
	{out.println("<script language='javaScript'> alert('审核成功！');</script>");response.setHeader("refresh","1;url=xssh.jsp"); 
    }
	else
	{
		{out.println("<script language='javaScript'> alert('审核失败！');</script>");response.setHeader("refresh","1;url=xssh.jsp");}
	}
	%>
  </body>
</html>
