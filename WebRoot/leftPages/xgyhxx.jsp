<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册公司信息</title>
</head>
<script language="javascript">
function t1()
{
	var dd1 = document.getElementById('Introduction').value.length;
	var d1 = document.getElementById('ts1');
	if(dd1>500)
		{
		d1.style.display = '';
		}
	else
		{
		d1.style.display = 'none';
		}
}
function a()
{
var obj2 = document.getElementById("ww");
var obj = document.getElementById("Yb");
if (!obj2.value == "")
	{
		obj.value=obj2.value.substring(0,6);
	}
	else
	{
	obj.value="";
	}
}
function check()
{ 
var dd1 = document.getElementById('Introduction').value.length;
	if(dd1>500)
		{
		alert("机构简介超过500字！");
		return false;
		}
		if(dd1==0)
		{
		alert("机构简介不能为空！");
		return false;
		}

 	if (z.user_name.value == "")
	{  
		alert("用户名不能为空！"); 
		z.user_name.focus();
		return false;
		}
	var user = document.getElementById("user_name");
		if (user.value.length > 20 || user.value.length < 6)
		 {
			alert("用户名小于6位或大于20位");
			user.value="";
			return false;
		} 
		else if (CheckCode(user.value)) {
				alert("用户名有特殊字符请重新填写！");
				user.value = "";
				return false;
			}
		if (z.gsid.value == "")
	{  
		alert("注册工商码不能为空！"); 
		z.gsid.focus();
		return false;
		}
	if (z.CName.value == "")
	{  
		alert("机构全称不能为空！"); 
		z.CName.focus();
		return false;
		}
	if (z.CAdress.value == "")
	{  
		alert("通讯地址不能为空！");
		z.CAdress.focus();
		return false;
		}

		if (z.szdy.value == "")
	{  
		alert("所在地域不能为空！");
		z.szdy.focus();
		return false;
		}

	if (z.email.value == "")
	{  
		alert("电子邮箱不能为空！");
		z.email.focus();
		return false;
		}
			if (z.Clegalperson.value == "")
	{  
		alert("法人代表不能为空！");
		z.Clegalperson.focus();
		return false;
		}
			if (z.Phone.value == "")
	{  
		alert("联系方式不能为空！");
		z.Phone.focus();
		return false;
		}
		var pwd = document.getElementById("pwd1");
		if (pwd.value.length > 20 || pwd.value.length < 6)
		 {
			alert("密码小于6位或大于20位");
			pwd.value="";
			return false;
		} 
		else if (CheckCode(pwd.value)) {
				alert("密码有特殊字符请重新填写！");
				pwd.value = "";
				return false;
			}
	if (z.pwd1.value == "")
	{  
		alert("密码不能为空！"); 
		z.pwd1.focus();
		return false;
		}
	if (z.pwd2.value == "")
	{  
		alert("确认密码不能为空！");
		z.pwd2.focus();
		return false;
	}
	}
	function CheckCode(s) //有特殊字符为true  
	{
		var containSpecial = RegExp(/[(\ )(\~)(\!)(\#)(\$)(\%)(\^)(\&)(\*)(\()(\))(\-)(\_)(\+)(\=)(\[)(\])(\{)(\})(\|)(\\)(\;)(\:)(\')(\")(\,)(\.)(\/)(\<)(\>)(\?)(\)]+/);
		return (containSpecial.test(s));
	}
	function isNum(str){
		for (ilen = 0; ilen < str.length; ilen++) {
                if (str.charAt(ilen) < '0' || str.charAt(ilen) > '9') {
                       return false;
                    }
                }
            return true;
	}
</script>
<body style="background-image:url(image/S.jpg);" onload="t1();">
<center>
<br><br>
<%String name=(String)session.getAttribute("user_name").toString();%>
<jsp:useBean id="db" class="cesh.DBean" scope ="page"/>
<%
 	request.setCharacterEncoding("UTF-8");
	String h = "select * from usertable where usermame="+name;
	ResultSet hh = db.executeQuery(h);
	hh.next(); 
	System.out.print(h);
 %>
<form name="z" action="judgexgyhxx.jsp" method="post" onsubmit="return check()">
<table>
	<tr>
		<td>
		<p>用户名</p>
		</td>
		<td>
		<input type="text" value=<%=hh.getString(1) %> name="user_name" id="user_name" >
		</td>
	</tr>
	<tr>
		<td>
		<p>工商注册码</p>
		</td>
		<td>
		<input type="text" value=<%=hh.getString(2) %> name="gsid" >
		</td>
	</tr>
	<tr>
		<td>
		<p>机构全称</p>
		</td>
		<td>
		<input type="text" value=<%=hh.getString(3) %> name="CName" >
		</td>
	</tr>
	<tr>
		<td>
		<p>通讯地址</p>
		</td>
		<td>
		<input type="text" value=<%=hh.getString(4) %> name="CAdress">
		</td>
	</tr>
	<tr>
		<td>
		<p>所在地域</p>
		</td>
		<td>
		<select  name="szdy" id="ww">
	    <option value="">-----请选择------</option>
		<option value="130100石家庄市">石家庄市</option>
		<option value="130200唐山市">唐山市</option>
		<option value="130300秦皇岛市">秦皇岛市</option>
		<option value="130400邯郸市">邯郸市</option>
		<option value="130500邢台市">邢台市</option>
		<option value="130600保定时">保定市</option>
		<option value="130700张家口市">张家口市</option>
		<option value="130800承德市">承德市</option>
		<option value="130900沧州市">沧州市</option>
		<option value="131000廊坊市">廊坊市</option>
		<option value="131100衡水市">衡水市</option>
		<option value="130682定州市">定州市</option>
		<option value="130181辛集市">辛集市</option>
		<option value="120000其他（河北工大）">其他（河北工大）</option>
		</select>
	  </td>
	</tr>
	<tr>
		<td>
		<p>电子信箱</p>
		</td>
		<td>
		<input type="text" value=<%=hh.getString(6) %> name="email">
		</td>
	</tr>
	<tr>
		<td>
		<p>法人代表</p>
		</td>
		<td>
		<input type="text"  value=<%=hh.getString(7) %> name="Clegalperson">
		</td>
	</tr>
	<tr>
		<td>
		<p>邮政编码</p>
		</td>
		<td>
		<input type="text" value=<%=hh.getString(8) %> name="Yb" id="Yb">
		</td>
	</tr>
	<tr>
						<td>机构简介<br><p>(限500字)</p></td>
					       <td>
                          <textarea id="Introduction" rows="9" cols="60" style="resize:none;" name="Introduction" onchange="t1()"><%=hh.getString(9) %></textarea> 
                          <div id="ts1" style="color:red"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
					</tr>
</table>
<br><br>
		<input type="submit" name="submit" value="提    交">       <input type="button" onclick="window.location.href='userinfo.jsp'" name="submit1" value="返    回" >
		</form>
		</center>		
</body>
</html>