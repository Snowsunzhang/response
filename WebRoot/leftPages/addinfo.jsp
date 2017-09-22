<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息填报</title>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加信息</title>
</head>

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
<script language="javascript">
function checkinfo()
{
	var obj0 = document.getElementById("institutionName");	
 	if (obj0.value == "")
	{
		alert("机构全称不能为空！"); 
		obj0.focus();
		return false;
		}
 	var obj1 = document.getElementById("w");
 	
 if (obj1.value == "")
	{
		alert("请选择归口管理部门");
		obj1.focus();
		return false;
	}
	var obj2 = document.getElementById("ww");
 	if (obj2.value == "")
	{
		alert("请选择所在地域！"); 
		obj2.focus();
		return false;
		}
		var q = document.getElementById("q");
		if (q.value == "")
	{
		alert("通讯地址不能为空！"); 
		q.focus();
		return false;
		}
		var dwwz = document.getElementById("dwwz");
		if (dwwz.value == "")
	{
		dwwz.value ="--";
	}

	var Email = document.getElementById("Email");
		if (Email.value == "")
	{
		alert("电子信箱不能为空！"); 
		Email.focus();
		return false;
		}
//	alert("2");	
 	
 	var Represent = document.getElementById("Represent");
 	if (Represent.value == "")
	{
		alert("法人代表不能为空！"); 
		Represent.focus();
		return false;
		}
	var ContactName = document.getElementById("ContactName");	
 	if (ContactName.value == "")
	{
		alert("联系人不能为空！"); 
		ContactName.focus();
		return false;
		}
var MobilePhone = document.getElementById("MobilePhone");
 	if (MobilePhone.value == "")
	{
		alert("手机不能为空！"); 
		MobilePhone.focus();
		return false;
		}
var Introduction = document.getElementById("Introduction");
 	if (Introduction.value == "")
	{
		alert("机构简介不能为空！"); 
		Introduction.focus();
		return false;
		}

 	var dd1 = document.getElementById('Introduction').value.length;
	if(dd1>500)
		{
		alert("机构简介超出500字！"); 
		return false;
		}	
var Technology = document.getElementById("Technology");
 	if (Technology.value == "")
	{
		alert("技术需求名称不能为空！"); 
		Technology.focus();
		return false;
		}
/*  	if (a.Technology.value == "")
	{
		alert("技术需求名称不能为空！"); 
		a.Technology.focus();
		return false;
		} */
		
	var a = document.getElementById("time1");
 	var b = document.getElementById("time2");
 	if (a.value == "")
	{
		alert("技术需求开始时间不能为空！"); 
		a.focus();
		return false;
		}
 	if (b.value == "")
	{
		alert("技术需求结束时间不能为空！"); 
		b.focus();
		return false;
		}
 	
 	if(parseFloat(a.value)<2017)
 		{
 		alert("项目开始时间不能早于当前年份！"); 
		return false;
 		}
 	if(parseFloat(a.value)>parseFloat(b.value))
 		{
 		alert("项目开始时间应早于结束时间！"); 
		return false;
 		}
 	var Summary1 = document.getElementById("Summary1");	
 	if (Summary1.value == "")
	{
		alert("重大科技需求概述的主要问题不能为空！"); 
		Summary1.focus();
		return false;
		}
	var Summary2 = document.getElementById("Summary2");
 	if (Summary2.value == "")
	{
		Summary2.value="--";
		}
	var Summary3 = document.getElementById("Summary3");
 	if (Summary3.value == "")
	{
		Summary3.value="--";
		}
 	var s1 = document.getElementById('Summary1').value.length;
	if(s1>500)
		{
		alert("主要问题超出500字！"); 
		return false;
		}
	var s2 = document.getElementById('Summary2').value.length;
	if(s2>500)
		{
		alert("技术关键机构简介超出500字！"); 
		return false;
		}
	var s3 = document.getElementById('Summary3').value.length;
	if(s3>500)
		{
		alert("业务目标超出500字！"); 
		return false;
		}
	var Keyword1 = document.getElementById("Keyword1");	
 	if (Keyword1.value == "")
	{
		alert("关键字不能为空！"); 
		Keyword1.focus();
		return false;
		}
	var nmoney = document.getElementById("nmoney");
	if (nmoney.value == "")
	{
		nmoney.value=0;
		}	
	var s = document.getElementsByName('ResearchType');
    for (var i = 0; i < s.length; i++)
     {
        if (s[i].checked == true&&s[i].value=="基础研究") 
        {
        	var b=document.getElementById("Centralized3");
        	if (b.value=="")
        	{
        		alert("学科分类不能为空！");
        		return false;
        	}
        }
         if (s[i].checked == true&&s[i].value!="基础研究") 
        {
        	/*int l;
        	var v=document.getElementByName("Filed");
        	for (l = 0; l < v.length; l++)
        	{
        		if(v[l].checked)
        		{
        			break;
        		}
        	}
        	if(l==v.length)
        	{
        		alert("请选择需求技术所属领域！");
        		return false;
        	}*/
        	var b=document.getElementById("Industry3");
        	if (b.value=="")
        	{
        		alert("需求技术应用行业不能为空！");
        		return false;
        	}
        }
     }
     
     
     
		
}
</script>
<script language="javascript">/* t1（） */
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
</script>
<script language="javascript">/* t2(),t3(),t4() */
function t2()
{
	var dd2 = document.getElementById('Summary1').value.length;
	var d2 = document.getElementById('ts2');
	if(dd2>500)
		{
		d2.style.display = '';
		}
	else
		{
		d2.style.display = 'none';
		}
}
function t3()
{
	var dd2 = document.getElementById('Summary2').value.length;
	var d2 = document.getElementById('ts3');
	if(dd2>500)
		{
		d2.style.display = '';
		}
	else
		{
		d2.style.display = 'none';
		}
}
function t4()
{
	var dd2 = document.getElementById('Summary3').value.length;
	var d2 = document.getElementById('ts4');
	if(dd2>500)
		{
		d2.style.display = '';
		}
	else
		{
		d2.style.display = 'none';
		}
}
</script>
<script language="javascript">/* 基础研究 */
function demo()
{
//	var d1 = document.getElementById('ts1');//获取该div节点
//	d1.style.display = '';
//	var d2 = document.getElementById('ts2');//获取该div节点
//	d2.style.display = '';
	var s = document.getElementsByName('ResearchType');
    for (var i = 0; i < s.length; i++) {
        if (s[i].checked == true&&s[i].value=="基础研究") {
        	document.getElementById("e1").disabled=true;
        	document.getElementById("e2").disabled=true;
        	document.getElementById("e3").disabled=true;
        	document.getElementById("e4").disabled=true;
        	document.getElementById("e5").disabled=true;
        	document.getElementById("e6").disabled=true;
        	document.getElementById("e7").disabled=true;
        	document.getElementById("e8").disabled=true;
        	document.getElementById("e9").disabled=true;
        	document.getElementById("e0").disabled=true;
        	document.getElementById("e10").disabled=true;
        	document.getElementById("e11").disabled=true;
        	document.getElementById("Centralized1").disabled=false;
        	document.getElementById("Industry1").disabled=true;
            }
        if (s[i].checked == true&&s[i].value!="基础研究")
        	{
        	document.getElementById("e1").disabled=false;
        	document.getElementById("e2").disabled=false;
        	document.getElementById("e3").disabled=false;
        	document.getElementById("e4").disabled=false;
        	document.getElementById("e5").disabled=false;
        	document.getElementById("e6").disabled=false;
        	document.getElementById("e7").disabled=false;
        	document.getElementById("e8").disabled=false;
        	document.getElementById("e9").disabled=false;
        	document.getElementById("e0").disabled=false;
        	document.getElementById("e10").disabled=false;
        	document.getElementById("e11").disabled=false;
        	document.getElementById("Centralized1").disabled=true;
        	document.getElementById("Industry1").disabled=false;
        	}
    }
}
function d()
{
	var d1 = document.getElementById('ts1');//获取该div节点
	d1.style.display = 'none';
	var d2 = document.getElementById('ts2');//获取该div节点
	d2.style.display = 'none';
	var d3 = document.getElementById('ts3');//获取该div节点
	d3.style.display = 'none';
	var d4 = document.getElementById('ts4');//获取该div节点
	d4.style.display = 'none';
	}
//window.onload = demo,d ; 
</script>

<script language="javascript">/* 三级下拉菜单 */
function first()
{
	var obj = document.getElementById("Centralized");//全部值
	var obj1 = document.getElementById("Centralized1");//第一个框的值
	var obj2 = document.getElementById("Centralized2");
	var obj3 = document.getElementById("Centralized3");
	obj2.options.add(new Option("----请选择----","----请选择----"));
	for(var i = obj3.length-1;i >=0; i--)
	{
		obj3.options.remove(i);
		
	}
	for(var i = obj2.length-1;i >0; i--)
	{
		obj2.options.remove(i);
		
	}
	for(var i = 1; i <obj.length ; i++)
		{
		if(obj[i].value.substring(0,3)==obj1.value.substring(0,3)&&obj[i].value.substring(5,7)==obj1.value.substring(5,7)&&obj[i].value!=obj1.value)
			{
			obj2.options.add(new Option(obj[i].value,obj[i].value));
			}
		}
}
</script>
<script language="javascript">
function i1()
{
	var obj = document.getElementById("Industry");//全部值
	var obj1 = document.getElementById("Industry1");//第一个框的值
	var obj2 = document.getElementById("Industry2");
	var obj3 = document.getElementById("Industry3");
	obj2.options.add(new Option("----请选择----","----请选择----"));
	for(var i = obj3.length-1;i >=0; i--)
	{
		obj3.options.remove(i);
		
	}
	for(var i = obj2.length-1;i >0; i--)
	{
		obj2.options.remove(i);
		
	}
	for(var i = 1; i <obj.length ; i++)
		{
		if(obj[i].value.substring(0,1)==obj1.value.substring(0,1)&&obj[i].value.substring(3,5)==obj1.value.substring(3,5)&&obj[i].value!=obj1.value)
			{
			obj2.options.add(new Option(obj[i].value,obj[i].value));
			}
		}
}
</script>
<script language="javascript">
function second()
{
	var obj = document.getElementById("Centralized");//全部值
	var obj2 = document.getElementById("Centralized2");//第二个框的值
	var obj3 = document.getElementById("Centralized3");
	for(var i = obj3.length-1;i >=0; i--)
	{
		obj3.options.remove(i);
		
	}
	for(var i = 1; i <obj.length ; i++)
		{
		if(obj[i].value.substring(0,5)==obj2.value.substring(0,5))
			{
			obj3.options.add(new Option(obj[i].value,obj[i].value));
			}
		}
	}
</script>
<script language="javascript">
function i2()
{
	var obj = document.getElementById("Industry");
	var obj2 = document.getElementById("Industry2");
	var obj3 = document.getElementById("Industry3");
	for(var i = obj3.length-1;i >=0; i--)
	{
		obj3.options.remove(i);
		
	}
	for(var i = 1; i <obj.length ; i++)
		{
		if(obj[i].value.substring(0,3)==obj2.value.substring(0,3))
			{
			obj3.options.add(new Option(obj[i].value,obj[i].value));
			}
		}
	}
</script>
<script language="javascript">
function check1()
{
	if (document.getElementById("Independentl").value == "")
	{
		document.getElementById("Independentl").value="0";
	}
	if (document.getElementById("Loan").value == "")
	{
		document.getElementById("Loan").value="0";
	}
 	if (document.getElementById("Finance").value == "")
 	{
 		document.getElementById("Finance").value="0";
 		}
 	var a = document.getElementById("Independentl").value;
 	var b = document.getElementById("Loan").value;
 	var c = document.getElementById("Finance").value;
 	var d = parseFloat(a) + parseFloat(b)+ parseFloat(c);
 	document.getElementById("TotalInvestment").value=d;
	
	}
function g0()
{
	
	var k2 = document.getElementById('Keyword2');
	var k3 = document.getElementById('Keyword3');
	var k4 = document.getElementById('Keyword4');
	var k5 = document.getElementById('Keyword5');

	k2.style.display = 'none';
	k3.style.display = 'none';
	k4.style.display = 'none';
	k5.style.display = 'none';
}
function g1()
{
	var k2 = document.getElementById('Keyword2');
	k2.style.display = '';
	k2.focus();
	}
function g2()
{
	var k3 = document.getElementById('Keyword3');
	k3.style.display = '';
	k3.focus();
	}
function g3()
{
	var k4 = document.getElementById('Keyword4');
	k4.style.display = '';
	k4.focus();
	}
function g4()
{
	var k5 = document.getElementById('Keyword5');
	k5.style.display = '';
	k5.focus();
	}
</script>
<body style="background-image:url(image/S.jpg);" onload="demo();d();g0();">
<center>
		<h1 class="one">河北省科技信息通用调查系统</h1>
<h2>河北省重大技术需求征集表</h2>
<form name="a" action="judgeaddinfo.jsp" method="post" onsubmit="return checkinfo()">
<table>
<%-- <%%> --%>
<jsp:useBean id="db" class="cesh.DBean" scope ="page"/>
<%
 	request.setCharacterEncoding("UTF-8");
 	String name=(String)session.getAttribute("user_name").toString();
 //	System.out.println(name);
	String h = "select * from usertable where usermame='"+name+"'";
	System.out.println(h);
	ResultSet hh = db.executeQuery(h);
	hh.next(); 

 %>
					
					
					<tr>
						<td  style="text-align:center;">*机构全称</td>
						<td  style="text-align:center;"><input type="text" value=<%=hh.getString(3) %> style="width:90%; height:90%"id="institutionName" name="institutionName" readonly="true"></td>
						<td  style="text-align:center;">*归口管理部门</td>
						<td  style="text-align:center;">
					    <select name="Centralized" style="width:90%; height:90%" id="w">
					    <option select value="">-----请选择------</option>
					    <jsp:useBean id="db2" class="cesh.DBean" scope ="page"/>
					  	<%
					  		request.setCharacterEncoding("UTF-8");
							String s = "select bname from bm";
							ResultSet rs = db2.executeQuery(s);
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
                    </td>
					</tr>
					<tr>
						<td  style="text-align:center;">*通讯地址</td>
						<td style="text-align:center;"><input id="q" value=<%=hh.getString(4) %> type="text" style=" width:90%; height:90%" name="Address"></td>
						<td  style="text-align:center;">*所在地域</td>
						<td style="text-align:center;">
						<select style="width:90%; height:90%" name="szdy" id="ww">
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
						<td  style="text-align:center;">网址</td>
						<td  style="text-align:center;"><input  style="width:90%; height:90%;" id="dwwz" type="text" name="Website" style="height:25px;"></td>
						<td  style="text-align:center;">*电子信箱</td>
						<td  style="text-align:center;"><input value=<%=hh.getString(6) %> style="width:90%; height:90%; " type="text" name="Email" id="Email" style="height:25px;"></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*法人代表</td>
						<td style="text-align:center;"><input type="text" value=<%=hh.getString(7) %> style="width:90%; height:90%;" name="Represent" id="Represent" style="height:25px;"></td>
						<td  style="text-align:center;">邮政编码</td>
						<td  style="text-align:center;"><input value=<%=hh.getString(8) %> style="width:90%; height:90%" type="text" name="Postalcode" id="Postalcode"style="height:25px;"></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*联系人</td>
						<td   style="text-align:center;"><input style=" width:90%; height:90%" type="text" name="ContactName" id="ContactName" style="height:25px;"></td>
						<td style="text-align:center;">固定</td>
						<td   style="text-align:center;"><input type="text" style=" width:90%; height:90%" name="FixedPhone" id="FixedPhone"></td>
					</tr>
					<tr>
						<td style="text-align:center;">*手机</td>
						<td  style="text-align:center;"><input style=" width:90%; height:90%" type="text" name="MobilePhone" id="MobilePhone" ></td>
						<td style="text-align:center;">传真</td>
						<td  style="text-align:center;">    <input style=" width:90%; height:90%"  type="text" name="Fax" id="Fax" style="height:25px;"></td>
					</tr>
					
					
					
					
					<tr>
						<td style="text-align:center;">*机构属性</td>
						<td colspan="3">
						<input type="radio" name="Attributes" checked value="企业">企业
						<input type="radio" name="Attributes" value="高等院校">高等院校
						<input type="radio" name="Attributes" value="研究机构">研究机构
						<input type="radio" name="Attributes" value="其它">其它
						</td>
					</tr>
					
					<tr>
						<td colspan="4" style="text-align:center;">*机构简介（限500字）</td>
						</tr>
						<tr>
					       <td colspan="4">
                          <textarea id="Introduction" rows="8" cols="110" style="resize:none;" name="Introduction" onchange="t1()"><%=hh.getString(9) %></textarea> 
                          <div id="ts1" style="color:red"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
					</tr>
					<tr>
						<td style="text-align:center;">*技术需求名称</td>
						<td  style="text-align:center;"><input style="width:90%; height:90%;" type="text" name="Technology" id="Technology"></td>
						<td style="text-align:center;">*需求时限</td>
						<td style="text-align:center;"><input type="text" style="width:50px;"  name="time1" id="time1" >年至<input type="text"  style="width:50px;"   name="time2" id="time2"">年</td>
					</tr>
		            <tr>
						<td colspan="4" style="text-align:center;">重大科技需求概述</td>
						</tr>
						<tr>
					       <td colspan="5">
					       <br>*1.主要问题（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary1" rows="8" cols="110" style="resize:none;" name="Summary1" onchange="t2()"></textarea> 
                          <div id="ts2" style="color:red"> 
                          <h5>*字数超过500字</h5> </div> <br>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                          <br>2.技术关键（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary2" rows="8" cols="110" style="resize:none;" name="Summary2" onchange="t3()"></textarea> 
                          <div id="ts3" style="color:red"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                          <br>3.预期目标（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary3" rows="8" cols="110" style="resize:none;" name="Summary3" onchange="t4()"></textarea> 
                          <div id="ts4" style="color:red"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
					   </tr>
					<tr>
						<td style="text-align:center;">*关键字</td>
						<td colspan="3">
						<input style="height:25px;wight:50px" type="text" name="Keyword1" id="Keyword1" onchange="g1()">
						<input style="height:25px;wight:50px" type="text" name="Keyword2" id="Keyword2" onchange="g2()">
						<input style="height:25px;wight:50px" type="text" name="Keyword3" id="Keyword3" onchange="g3()">
						<input style="height:25px;wight:50px" type="text" name="Keyword4" id="Keyword4" onchange="g4()">
						<input style="height:25px;wight:50px" type="text" name="Keyword5" id="Keyword5">
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">拟投入资金总额</td>
						<td colspan="3" style="text-align:center;">
						<input type="text" name="nmoney" id="nmoney">万元
						</td>
					</tr>
					<tr>
						<td rowspan="2" style="text-align:center;">*需求技术合作模式</td>
						<td colspan="3">
						<input type="radio" name="Cooperation" checked value="独立研发 ">独立研发
						<input type="radio" name="Cooperation" value="委托研发 ">委托研发<br>
						<input type="radio" name="Cooperation" value="合作研发 ">合作研发
						<input type="radio" name="Cooperation" value="其他">其他<br>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">合作意向单位</td>
						<td colspan="2"><input style="border-left-width:0px;border-top-width:0px;border-right-width:0px;border-bottom-color:black" type="text" name="CooperationUnit" size="50" style="height:25px;">（选填）</td>
					</tr>
					<tr>
						<td style="text-align:center;">*科技活动类型</td>
						<td colspan="3">
						<input id="type" type="radio" name="ResearchType" checked value="基础研究" onChange="demo()">基础研究
						<input id="type" type="radio" name="ResearchType" value="应用研究" onChange="demo()">应用研究
						<input id="type" type="radio" name="ResearchType" value="试验发展" onChange="demo()">试验发展<br>
						<input id="type" type="radio" name="ResearchType" value="研究发展与成果应用" onChange="demo()">研究发展与成果应用
						<input id="type" type="radio" name="ResearchType" value="技术推广与科技服务" onChange="demo()">技术推广与科技服务
						<input id="type" type="radio" name="ResearchType" value="生产性活动" onChange="demo()">生产性活动
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">学科分类（限基础研究填写）</td>
						<td colspan="3">
					    <select  name="Centralized1" id="Centralized1" onchange="first()">
					    <option select value="">-----请选择------</option>
					  <%request.setCharacterEncoding("UTF-8");
						String ss = "select * from fl where fno like '___0000'";
						ResultSet rs1 = db.executeQuery(ss);
						try{
							int i=1;
							while (rs1.next())
							{
								out.print("<option id=\"q"+i+"\" value="+rs1.getString(1).trim()+rs1.getString(2).trim()+">"+rs1.getString(1).trim()+rs1.getString(2).trim()+"</option>");
								i=i+1;
							}
						}
						catch(Exception e){}
						%>
						</select>
						<select name="Centralized" id="Centralized" style="display:none">
					    <option select value="">-----请选择------</option>
					  <%request.setCharacterEncoding("UTF-8");
						String sss = "select * from fl";
						ResultSet rs11 = db.executeQuery(sss);
						try{
							int i=1;
							while (rs11.next())
							{
								out.print("<option id=\"q"+i+"\" value="+rs11.getString(1).trim()+rs11.getString(2).trim()+">"+rs11.getString(1).trim()+rs11.getString(2).trim()+"</option>");
								i=i+1;
							}
						}
						catch(Exception e){}
						%>
						</select>
					    <select name="Centralized2" id="Centralized2" onchange="second()">
						</select>
						<select name="Centralized3" id="Centralized3" >
						</select>
						</td>
					</tr>

					<tr>
						<td style="text-align:center;">需求技术所属领域（非基础研究填写）</td>
						<td colspan="3">
						<input id="e1" type="checkbox" name="Filed" value="电子信息">电子信息
						<input id="e2" type="checkbox" name="Filed" value="光机电一体化">光机电一体化
						<input id="e3" type="checkbox" name="Filed" value="生物技术与制药">生物技术与制药<br>
						<input id="e4" type="checkbox" name="Filed" value="新材料及应用">新材料及应用
						<input id="e5" type="checkbox" name="Filed" value="现代农业">现代农业
						<input id="e6" type="checkbox" name="Filed" value="新能源与高效节能">新能源与高效节能<br>
						<input id="e7" type="checkbox" name="Filed" value="资源与环境">资源与环境
						<input id="e8" type="checkbox" name="Filed" value="高技术服务业">高技术服务业<br>
						<input id="e9" type="checkbox" name="Filed" value="海洋">海洋
						<input id="e0" type="checkbox" name="Filed" value="社会公共事业 ">社会公共事业
						<input id="e10" type="checkbox" name="Filed" value="医疗卫生">医疗卫生
						<input id="e11" type="checkbox" name="Filed" value="其它技术（注明） ">其它技术（注明）
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">需求技术应用行业（非基础研究填写）</td>
						<td colspan="3">
						<select name="Industry1" id="Industry1" onchange="i1()">
					    <option value="">-----请选择------</option>
					    <%request.setCharacterEncoding("UTF-8");
						String p = "select * from gmjj where Code like '_0000'";
						ResultSet rp = db.executeQuery(p);
						try{
							int i=1;
							while (rp.next())
							{
								out.print("<option value="+rp.getString(1).trim()+rp.getString(2).trim()+">"+rp.getString(1).trim()+rp.getString(2).trim()+"</option>");
								i=i+1;
							}
						}
						catch(Exception e){}
						%>
						</select>
						<select name="Industry" id="Industry" style="display:none">
					    <option select value="">-----请选择------</option>
					  <%request.setCharacterEncoding("UTF-8");
						String o = "select * from gmjj";
						ResultSet ii = db.executeQuery(o);
						try{
							int i=1;
							while (ii.next())
							{
								out.print("<option value="+ii.getString(1).trim()+ii.getString(2).trim()+">"+ii.getString(1).trim()+ii.getString(2).trim()+"</option>");
								i=i+1;
							}
						}
						catch(Exception e){}
						%>
					    </select>
					     <select name="Industry2" id="Industry2" onchange="i2()">
						</select>
						<select name="Industry3" id="Industry3" >
						</select>
					    </td>
					</tr>
		
</table>
<br><br><br>
				<input type="submit" name="submit" value="提交">
</form>
</center>
</body>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  

</html>
