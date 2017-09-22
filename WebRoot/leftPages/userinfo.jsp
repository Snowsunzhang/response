<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册公司信息</title>
</head>
<body style="background-image:url(image/S.jpg);">
<center>
<br><br>
<%String name=(String)session.getAttribute("user_name").toString();%>
<jsp:useBean id="db" class="cesh.DBean" scope ="page"/>
<%
 	request.setCharacterEncoding("UTF-8");
	String h = "select * from usertable where usermame='"+name+"'";
	ResultSet hh = db.executeQuery(h);
	hh.next(); 
	System.out.print(h);
 %>
<table border="1" style="width:700px">
	<tr>
		<td style="width:100px">
		<p>用户名</p>
		</td>
		<td>
		<p><%=hh.getString(1) %></p>
		</td>
	</tr>
	<tr>
		<td style="width:100px">
		<p>工商注册码</p>
		</td>
		<td>
		<p><%=hh.getString(2) %></p>
		</td>
	</tr>
	<tr>
		<td style="width:100px">
		<p>机构全称</p>
		</td>
		<td>
		<p><%=hh.getString(3) %></p>
		</td>
	</tr>
	<tr>
		<td style="width:100px">
		<p>通讯地址</p>
		</td>
		<td>
		<p><%=hh.getString(4) %></p>
		</td>
	</tr>
	<tr>
		<td style="width:100px">
		<p>所在地域</p>
		</td>
		<td>
		<p><%=hh.getString(5) %></p>
	  </td>
	</tr>
	<tr>
		<td style="width:100px">
		<p>电子信箱</p>
		</td>
		<td>
		<p><%=hh.getString(6) %></p>
		</td>
	</tr>
	<tr>
		<td style="width:100px">
		<p>法人代表</p>
		</td>
		<td>
		<p><%=hh.getString(7) %></p>
		</td>
	</tr>
	<tr>
		<td style="width:100px">
		<p>邮政编码</p>
		</td>
		<td>
		<p><%=hh.getString(8) %></p>
		</td>
	</tr>
	<tr>
						<td style="width:100px">机构简介</td>
					       <td>
                          <p><%=hh.getString(9) %></p>
                          </td>
					</tr>

</table>
<br><br>
<input type="button" onclick="window.location.href='xgyhxx.jsp'" name="submit1" value="修    改" >
		</center>		
</body>
</html>