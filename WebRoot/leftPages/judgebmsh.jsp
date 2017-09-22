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
	String in=request.getParameter("infoname");
	String re=request.getParameter("result");
	String infoname= new String (in.getBytes("ISO-8859-1"),"UTF-8");
	String result= new String (re.getBytes("ISO-8859-1"),"UTF-8");
	String sql;
	int i=0;
	if(re.equals("部门审核未通过"))
	{
		String bm=request.getParameter("bm");
		sql="update infotable set bmsh='"+re+"',bmshyj='"+bm+"' where infono='"+infoname+"'";
	}
	else
	{
		sql="update infotable set bmsh='"+result+"' where infono='"+infoname+"'";
	}
	i=db.executeUpdate(sql);
	if(i==1)
	{out.println("<script language='javaScript'> alert('审核成功！');</script>");response.setHeader("refresh","1;url=bmsh.jsp"); 
    }
	else
	{
		{out.println("<script language='javaScript'> alert('审核失败！');</script>");response.setHeader("refresh","1;url=bmsh.jsp");}
	}
	%>
  </body>
</html>
