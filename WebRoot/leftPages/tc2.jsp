<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script language="javascript" type="text/javascript">
function a()
{
var wname = document.form1.s.value;
parent.window.returnValue=wname; //父窗口就是上一个页面
 window.close();
}
</script>
</head>
<body>
<form name="form1" action=""> 
不通过原因（选填）
 <textarea style="overflow-y:scroll"  rows="8" cols="40" style="resize:none;" name="s"></textarea> <br>
<input type="button" value="提交" onclick="return a()">
</form>
</body>
</html>