<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script language="javascript" type="text/javascript">
function a()
{
var wname = document.form1.Centralized.value;
parent.window.returnValue=wname; //父窗口就是上一个页面
 window.close();
}
</script>
</head>
<body>
<form name="form1" action=""> 
请选择管理部门
		 <select name="Centralized" >
		 <option select value="办公室">办公室</option>
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
                    <br><br>
<!-- <input type="text" value="输入要传的值" name="backname"> -->
<center><input type="button" value="提交" onclick="return a()"></center>
<br><br><br>
</form>
</body>
</html>
