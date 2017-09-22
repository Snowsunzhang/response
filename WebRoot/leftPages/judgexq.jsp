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
	String infoname= new String (in.getBytes("ISO-8859-1"),"UTF-8");
	int i=0;
	String sql="update infotable set zt='已提交',sh='形式审核未审核' where infono='"+infoname+"'";
	i=db.executeUpdate(sql);
	if(i==1)
	{out.println("<script language='javaScript'> alert('提交成功！');</script>");response.setHeader("refresh","1;url=mywj.jsp"); 
    }
	else
	{
		{out.println("<script language='javaScript'> alert('提交失败！');</script>");response.setHeader("refresh","1;url=mywj.jsp");}
	}
	
	%>
	
  </body>
</html>
