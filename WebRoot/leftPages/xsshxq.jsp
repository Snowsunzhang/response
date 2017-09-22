<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body,td,th {
	font-size: larger;
}
body {
	background-image: url(images/wen1.jpg);
}
</style>

<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 600px;
}

th, td {
	
	border: solid #333 1px;
	height: 30px;
}

div {
	text-align: center;
}
</style>
<style type="text/css">
	* {margin:0px; padding:0px;}
	em{
		color:#3F0;
		}
body { font-family:Verdana; font-size:14px; margin:0;}
#container {margin:0 auto; width:910px;}
#header { height:206px; background:#6cf; margin-bottom:5px;}
#menu { height:20px; background:lightgray; margin-bottom:5px;}
#mainContent { height:500px; margin-bottom:5px;}
#content { margin:0 245px !important; margin:0 245px; height:500px;background-image:url(images/1.jpg);}
#footer { height:40px; background:lightgray;}
</style>
</head>
<body >
<jsp:useBean id="db" class="cesh.DBean"  scope ="page"/>
	<%
	request.setCharacterEncoding("UTF-8");
	String in=request.getParameter("infoname");
	String infoname= new String (in.getBytes("ISO-8859-1"),"UTF-8");
	String h = "select * from infotable where infono='"+infoname+"'";
	ResultSet hh = db.executeQuery(h);
	hh.next(); 
	%>
	<br><br><br><br>
	<table>
						<tr>
						<td style="text-align:center;">机构全称</td>
				        <td colspan="2"><p><%=hh.getString(1) %></p></td>
						<td  style="text-align:center;">*归口管理部门</td>
						<td><p><%=hh.getString(2) %></p></td>
					    </tr>
					<tr>
						<td  style="text-align:center;">*通讯地址</td>
						<td colspan="2"><p><%=hh.getString(3) %></p></td>
						<td  style="text-align:center;">*所在地域</td>
						<td style="text-align:center;">
						<p><%=hh.getString(4) %></p></td>
					    
						</tr>
					<tr>
						<td colspan="1"  style="text-align:center;">网址</td>
						<td colspan="2" style="text-align:center;"><p><%=hh.getString(5) %></p></td>
						<td colspan="1" style="text-align:center;">*电子信箱</td>
						<td colspan="1" style="text-align:center;"><p><%=hh.getString(6) %></p></td>
					</tr>
					<tr>
						<td style="text-align:center;">*法人代表</td>
						<td colspan="2" style="text-align:center;"><p><%=hh.getString(7) %></p></td>
						<td style="text-align:center;">邮政编码</td>
						<td style="text-align:center;"><p><%=hh.getString(8) %></p></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*联系人</td>
						<td colspan="2" style="text-align:center;"><p><%=hh.getString(9) %></p></td>
						<td  style="text-align:center;">固定</td>
						<td style="text-align:center;"><p><%=hh.getString(10) %></p></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*手机</td>
						<td colspan="2"  style="text-align:center;"><p><%=hh.getString(11) %></p></td>
						<td style="text-align:center;">传真</td>
						<td style="text-align:center;"><p><%=hh.getString(12) %></p></td>
					</tr>
					
					
					
					
					<tr>
						<td style="text-align:center;">机构属性</td>
						<td colspan="4">
						<p><%=hh.getString(13) %></p>
						</td>
					</tr>
					
					<tr>
						<td colspan="5" style="text-align:center;">机构简介</td>
						</tr>
						<tr>
					      <td colspan="5" style="text-align:center;"> <p><%=hh.getString(14) %></p></td>
					</tr>
					<tr>
						<td style="text-align:center;">*技术需求名称</td>
						<td colspan="2" style="text-align:center;"><p><%=hh.getString(15) %></p></td>
						<td style="text-align:center;">*需求时限</td>
						<td style="text-align:center;"><p><%=hh.getString(16) %></p>年至<p><%=hh.getString(17) %></p>年</td>
					</tr>
		            <tr>
						<td colspan="5" style="text-align:center;">*重大科技需求概述</td>
						</tr>
						<tr>
					       <td colspan="5">
					       <br>1.主要问题（限500字）<br>
                         <p><%=hh.getString(18) %></p>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="5">
                          <br>2.技术关键（限500字）<br>
                          <p><%=hh.getString(19) %></p>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="5">
                          <br>3.预期目标（限500字）<br>
                          <p><%=hh.getString(20) %></p>
                          </td>
					   </tr>
					<tr>
						<td style="text-align:center;">*关键字</td>
						<td colspan="4">
						<p><%=hh.getString(21) %></p><br><p><%=hh.getString(22) %></p><br><p><%=hh.getString(23) %></p><br><p><%=hh.getString(24) %></p><br><p><%=hh.getString(25) %></p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">拟投入资金总额</td>
						<td colspan="4" style="text-align:center;">
						<p><%=hh.getString(26) %></p>万元
						</td>
					</tr>
					<tr>
						<td rowspan="2" style="text-align:center;">*需求技术合作模式</td>
						<td colspan="4">
						<p><%=hh.getString(27) %></p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">合作意向单位</td>
						<td colspan="3"><p><%=hh.getString(28) %></p></td>
					</tr>
					<tr>
						<td style="text-align:center;">*科技活动类型</td>
						<td colspan="4">
						<p><%=hh.getString(29) %></p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">学科分类（限基础研究填写）</td>
						<td colspan="4">
					    <p><%=hh.getString(30) %></p>
						</td>
					</tr>

					<tr>
						<td style="text-align:center;">需求技术所属领域（非基础研究填写）</td>
						<td colspan="4">
						<p><%=hh.getString(31) %></p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">需求技术应用行业（非基础研究填写）</td>
						<td colspan="4">
						<p><%=hh.getString(32) %></p>
					    </td>
					</tr>
		
</table>
<br>
		<%-- <td style="width:100px" style="text-align:center;">请选择管理部门</td>
		<td  style="text-align:center;">
		 <select name="Centralized" id="w">
		 <option select value="">-----请选择------</option>
		 <jsp:useBean id="db3" class="cesh.DBean" scope ="page"/>
		 <%
				request.setCharacterEncoding("UTF-8");
				String s = "select bmmc from glbm";
				ResultSet rs = db3.executeQuery(s);
				try{
					while (rs.next())
					{
						out.print("<option value="+rs.getString(1).trim()+">"+rs.getString(1).trim()+"</option>");
					}
				}
				catch(Exception e)
				{}
						%>
                    </select>
         </td> --%>
    <form name="form1" action="judgexssh.jsp" method="post" onsubmit="return opendialog1()">
    <input type="hidden"  name="infoname" value=<%=infoname %>>
    <input type="hidden"  name="result" value="形式审核已通过">
    <input type="hidden"  name="bm" value="">
	<input type="submit" name="submit" value="通 过" >
	</form>
	<form name="form2" action="judgexssh.jsp" method="post" onsubmit="return opendialog2()">
    <input type="hidden"  name="infoname" value=<%=infoname %>>
    <input type="hidden"  name="result" value="形式审核未通过">
    <input type="hidden"  name="bm" value="">
	<input type="submit" name="submit" value="不通过" >
	</form>
    <%-- <input type="button" onclick="window.location.href='judgexssh.jsp?infoname=<%=infoname %>&result=形式审核已通过'" name="submit1" value="通  过" >
    <input type="button" onclick="window.location.href='judgexssh.jsp?infoname=<%=infoname %>&result=形式审核未通过'" name="submit1" value="不通过" >
    <input type="button" onclick="window.location.href='xssh.jsp'" name="submit1" value="返    回" > --%>
<br><br><br><br><br>
  </body>
  <script language="javascript" type="text/javascript">
function opendialog1()
 {
 var someValue=window.showModalDialog("tc1.jsp","","dialogWidth=500px;dialogHeight=500px;status=no;help=no;scrollbars=no");
  document.form1.bm.value=someValue;
 }
 function opendialog2()
 {
 var someValue=window.showModalDialog("tc2.jsp","","dialogWidth=500px;dialogHeight=500px;status=no;help=no;scrollbars=no");
  document.form2.bm.value=someValue;
 }
</script>
</html>



