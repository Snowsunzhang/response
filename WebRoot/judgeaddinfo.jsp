<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="cesh.DBean"  scope ="page"/>
<%
    String name=(String)session.getAttribute("user_name").toString();
    request.setCharacterEncoding("UTF-8");
	String institutionName="--"; institutionName=request.getParameter("institutionName");//机构名称
	String Centralized="--"; Centralized=request.getParameter("Centralized");//归口管理部门
	String Address="--"; Address=request.getParameter("Address");//通讯地址
	String szdy="--"; szdy=request.getParameter("szdy");//所在地域
	String Website="--"; Website=request.getParameter("Website");//单位网址
	String Email="--"; Email=request.getParameter("Email");//电子信箱
	String Represent="--"; Represent=request.getParameter("Represent");//法人代表
	String Postalcode="--"; Postalcode=request.getParameter("Postalcode");//邮政编码
	String ContactName="--"; ContactName=request.getParameter("ContactName");//联系人
	String FixedPhone="--"; FixedPhone=request.getParameter("FixedPhone");//1.固定
	String MobilePhone="--"; MobilePhone=request.getParameter("MobilePhone");//2.手机
	String Fax="--"; Fax=request.getParameter("Fax");//传真
	String Attributes="--"; Attributes=request.getParameter("Attributes");//机构属性
	String Introduction="--"; Introduction=request.getParameter("Introduction");//机构简介
	String Technology="--"; Technology=request.getParameter("Technology");//技术需求名称
	int time1=0;time1=Integer.parseInt(request.getParameter("time1"));//开始时间
	int time2=0;time2=Integer.parseInt(request.getParameter("time2"));//结束时间
	String Summary1="--"; Summary1=request.getParameter("Summary1");//重大科技需求概述
	String Summary2="--"; Summary2=request.getParameter("Summary2");
	String Summary3="--"; Summary3=request.getParameter("Summary3");
	String Keyword1="--"; Keyword1=request.getParameter("Keyword1");//关键字：
	String Keyword2="--"; Keyword2=request.getParameter("Keyword2");
	String Keyword3="--"; Keyword3=request.getParameter("Keyword3");
	String Keyword4="--"; Keyword4=request.getParameter("Keyword4");
	String Keyword5="--"; Keyword5=request.getParameter("Keyword5");
	int nmoney=0;nmoney=Integer.parseInt(request.getParameter("nmoney"));//投入资金
	String Cooperation="--"; Cooperation=request.getParameter("Cooperation");//需求技术合作模式
	String CooperationUnit="--"; CooperationUnit=request.getParameter("CooperationUnit");//合作意向单位
	String ResearchType="--"; ResearchType=request.getParameter("ResearchType");//ResearchType
	String Centralized3="--"; Centralized3=request.getParameter("Centralized3");//学科分类
	String[] d=request.getParameterValues("Filed");
	String Filed ="";
	if(d !=null){
	for(int i=0;i<d.length;i++)
	{
		Filed=Filed+d[i]+",";
	}
	System.out.println("所属领域"+Filed);
	}
	
	//需求技术所属领域（非基础研究填写）
	String Industry3="--"; Industry3=request.getParameter("Industry3");//需求技术应用行业
	System.out.println("所在地域"+szdy);
	String sql="insert into infotable (institutionName,Centralized,Address,szdy,Website,Email,Represent,Postalcode,ContactName,FixedPhone,MobilePhone,Fax,Attributes,Introduction,Technology,time1,time2,Summary1,Summary2,Summary3,Keyword1,Keyword2,Keyword3,Keyword4,Keyword5,nmoney,Cooperation,CooperationUnit,ResearchType,Centralized3,Filed,Industry3,zt) values ('"
	            +institutionName+"','"+Centralized+"','"+Address+"','"+szdy+"','"+Website+"','"+Email+"','"+Represent+"','"+Postalcode+"','"+ContactName+"','"+FixedPhone+"','"+MobilePhone+"','"+Fax+"','"+Attributes+"','"+Introduction+"','"+Technology+"','"+time1+"','"+time2+"','"+Summary1+"','"+Summary2+"','"+Summary3+"','"+Keyword1+"','"+Keyword2+"','"+Keyword3+"','"+Keyword4+"','"+Keyword5+"','"+nmoney+"','"+Cooperation+"','"+CooperationUnit+"','"+ResearchType+"','"+Centralized3+"','"+Filed+"','"+Industry3+"','未提交')";
	int i=0;
	i=db.executeUpdate(sql);
	if(i!=0)
	{
		out.println("<script language='javaScript'> alert('添加成功！');</script>");
		response.setHeader("refresh","1;url=addinfo.jsp");
	} 
	else
	{
	out.println("<script language='javaScript'> alert('添加失败！');</script>");
	}
%>
</body>
</html>