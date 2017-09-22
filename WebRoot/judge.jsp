<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body >
<jsp:useBean id="db" class="cesh.DBean"  scope ="page"/>
	<%
	request.setCharacterEncoding("UTF-8");
	String in=request.getParameter("user");
	String name= new String (in.getBytes("ISO-8859-1"),"UTF-8");
	String in2=request.getParameter("pwd");
	String pwd= new String (in2.getBytes("ISO-8859-1"),"UTF-8");
	/* System.out.println("用户名"+name+"    "+pwd); */
	String a="gly";
	String b="";
	String c="bmsh";
	String bm="";
	String s = "select * from usertable";
	ResultSet rs = db.executeQuery(s);
	int i=-1,j=-1;
	
	while (rs.next()) {
		  if(rs.getString(1).equals(name))
			  i=1;
		  if(rs.getString(1).equals(name)&&rs.getString(10).equals(pwd))
			  {
			  b=rs.getString(11);
			  bm=rs.getString(3);
			  j=1;
			  }
		  }
	if(j==1)
		{
		if(b.equals(a))
		{
		out.println("<script language='javaScript'> alert('管理员登录成功！');</script>");
		session.setAttribute("user_name", name);	
		response.setHeader("refresh","1;url=NewFile2.jsp");
		}
		else if(b.equals(c))
		{
		out.println("<script language='javaScript'> alert('部门审核员登录成功！');</script>");
		session.setAttribute("user_name", name);
		session.setAttribute("bm", bm);		
		response.setHeader("refresh","1;url=NewFile3.jsp");
		}
		else
		{
		out.println("<script language='javaScript'> alert('登录成功！');</script>");
		session.setAttribute("user_name", name);	
		response.setHeader("refresh","1;url=NewFile1.jsp");
		}
		}
	if(i==1&&j==-1)
	{
		out.println("<script language='javaScript'> alert('密码错误，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh","1;url=login.html");
		}
	if(i!=1)
	{
		out.println("<script language='javaScript'> alert('用户名错误，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh","1;url=login.html");
		//response.sendRedirect("frameset/main.html");
		//request.getRequestDispatcher("main.html").forward(request,response);
		}
	    rs.close();
	%>
  </body>
</html>