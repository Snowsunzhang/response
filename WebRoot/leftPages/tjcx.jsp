<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  import="java.sql.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link href="css1/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">@import "docs/assets/css/default.css";</style>
	<style type="text/css">@import "addons/pager/jquery.tablesorter.pager.css";</style>
	<script type="text/javascript" src="docs/assets/js/jquery-latest.js"></script>
	<script type="text/javascript" src="docs/assets/js/jquery.tablesorter.js"></script>
	<script type="text/javascript" src="addons/pager/jquery.tablesorter.pager.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$("table")
			.tablesorter({widthFixed: true})
			.tablesorterPager({container: $("#pager")});
	});
	</script>	
<script >
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});
});
</script>

<title>我的需求</title>

  </head>
  
  <body>
  <form name="a" action="tjcx.jsp" method="post" >
  部门审核结果<select  name="szdy" id="ww">
					    <option value="">-----请选择------</option>
					    <option value="部门审核未审核">部门审核未审核</option>
					    <option value="部门审核已通过">部门审核已通过</option>
					    <option value="部门审核未通过">部门审核未通过</option>
					    </select>
					      形式审核结果<select  name="xssh" id="ww">
					    <option value="">-----请选择------</option>
					    <option value="形式审核审核未审核">部门审核未审核</option>
					    <option value="形式审核已通过">部门审核已通过</option>
					    <option value="形式审核未通过">部门审核未通过</option>
					    </select>
					    管理部门<input type="text" name="glbm" id="glbm">
					   技术名称<input type="text" name="jsmc" id="FixedPhone">
					    				<input type="submit" name="submit" value="查询">
</form>
  <center>
  <table class="tablelist">
  <thead>
  <tr>
  	<td>需求名称</td>
  	<td>投入资金</td>
  	<td>审核部门</td>
  	<td>形式审核结果</td>
  	<td>形式审核意见</td>
  	<td>部门审核结果</td>
  	<td>部门审核意见</td>

  </tr>
  </thead>
         <tbody>
	<jsp:useBean id="db" class="cesh.DBean" scope ="page"/>
  	<%
  			request.setCharacterEncoding("UTF-8");
  			String w="";
  			String szdy=request.getParameter("szdy");
  			if(szdy!="")
  			{
  				w="and bmsh='"+szdy+"'";
  			}
  			String xssh=request.getParameter("xssh");
  			if(xssh!="")
  			{
  				w="and sh='"+xssh+"'";
  			}
  			String glbm=request.getParameter("glbm");
  			if(glbm!="")
  			{
  				w="and glcs='"+glbm+"'";
  			}
  			String jsmc=request.getParameter("jsmc");
  			if(szdy!="")
  			{
  				w="and Technology='"+jsmc+"'";
  			}
			String h = "select * from infotable where zt='已提交'"+w;
			System.out.println(h);
			ResultSet hh = db.executeQuery(h);
			while (hh.next()) {
				String infoname = hh.getString(39);
				out.println("<tr><td>" 
					+ hh.getString(15) + "</td><td>" 
					+ hh.getString(26) + "万元</td><td>" 
					+ hh.getString(33)+ "</td><td>"
					+ hh.getString(34)+ "</td><td>"
					+ hh.getString(36)+ "</td><td>"
					+ hh.getString(35)+ "</td><td>"
					  
					+ hh.getString(37)
					+ "</td><td></tr>");
			}
		%>
		</tbody>
 </table>
 </center>
  <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
	 <div id="pager" class="pager">
	<form>
		<img src="addons/pager/icons/first.png"  class="first"/>&nbsp;
		<img src="addons/pager/icons/prev.png"    class="prev"/>&nbsp;
		<input type="text" class="pagedisplay" readonly/>&nbsp;
		<img src="addons/pager/icons/next.png" class="next"/>&nbsp;
		<img src="addons/pager/icons/last.png" class="last"/>&nbsp;

每页显示<input type="number" class="pagesize" max=20 min=0 value=10>条记录
  </form>
</div>
  </body>
 <!--  作业内容：密码md5加密，数据表内密码列要加密，权限，日志，一天一备份， -->
</html>
