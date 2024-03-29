<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>河北省重大技术需求征集问卷调查系统</title>
        <!--框架必需start-->
        <link href="css/import_basic.css" rel="stylesheet" type="text/css"/>
        <link href="skins/sky/import_skin.css" rel="stylesheet" type="text/css" id="skin" themeColor="blue"/>
        <script type="text/javascript" src="js/jquery-1.4.js">
        </script>
        <script type="text/javascript" src="js/bsFormat.js">
        </script>
        <!--框架必需end--><!--引入弹窗组件start-->
        <script type="text/javascript" src="js/attention/zDialog/zDrag.js">
        </script>
        <script type="text/javascript" src="js/attention/zDialog/zDialog.js">
        </script>
        <!--引入弹窗组件end--><!--修正IE6支持透明png图片start-->
        <script type="text/javascript" src="js/method/pngFix/supersleight.js">
        </script>
        <!--修正IE6支持透明png图片end-->
        <script>
            function bookmarksite(title, url){
                if (window.sidebar) // firefox
                    window.sidebar.addPanel(title, url, "");
                else 
                    if (window.opera && window.print) { // opera
                        var elem = document.createElement('a');
                        elem.setAttribute('href', url);
                        elem.setAttribute('title', title);
                        elem.setAttribute('rel', 'sidebar');
                        elem.click();
                    }
                    else 
                        if (document.all)// ie
                            window.external.AddFavorite(url, title);
            }
        </script>
    </head>
    <body>
        <div id="mainFrame">
            <!--头部与导航start-->
            <div id="hbox">
                <div id="bs_bannercenter">
                    <div id="bs_bannerleft">
                        <div id="bs_bannerright">
                            <div class="bs_banner_logo">
                            </div>
                            <div class="bs_banner_title">
                            </div>
                            <div class="bs_nav">
                                <div class="bs_navleft">
                                    <li>
                                        <span id="username">
                                        </span><%String name=(String)session.getAttribute("user_name").toString();%><%=name%>您好！今天是
                                        <script>
                                            var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
                                            var now = new Date();
                                            var year = now.getFullYear();
                                            var month = now.getMonth() + 1;
                                            var day = now.getDate()
                                            var currentime = year + "年" + month + "月" + day + "日 " + weekDayLabels[now.getDay()]
                                            document.write(currentime)
                                        </script>
                                    </li>
                                    <div class="clear">
                                    </div>
                                </div>
                                <div class="bs_navright">
                                    <span class="icon_no hand" onclick='top.Dialog.confirm("确定要退出系统吗",function(){window.location="exitServlet"});'>退出系统</span>
                                    <div class="clear">
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--头部与导航end-->
            <table width="100%" cellpadding="0" cellspacing="0" class="table_border0">
                <tr>
                    <!--左侧区域start-->
                    <td id="hideCon" class="ver01 ali01">
                        <div id="lbox">
                            <div id="lbox_topcenter">
                                <div id="lbox_topleft">
                                    <div id="lbox_topright">
                                        <div class="lbox_title">
                                            操作菜单
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="lbox_middlecenter">
                                <div id="lbox_middleleft">
                                    <div id="lbox_middleright">
                                        <div id="bs_left">
                                            <IFRAME scrolling="no" width="100%" frameBorder=0 id=frmleft name=frmleft src="leftPages/accordition3.html" allowTransparency="true">
                                            </IFRAME>
                                      </div> 
                                        <!--更改左侧栏的宽度需要修改id="bs_left"的样式-->
                                    </div>
                                </div>
                            </div>
                            <div id="lbox_bottomcenter">
                                <div id="lbox_bottomleft">
                                    <div id="lbox_bottomright">
                                        <div class="lbox_foot">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <!--左侧区域end-->
                    <!--中间栏区域start-->
                    <td class="main_shutiao">
                        <div class="bs_leftArr" id="bs_center" title="收缩面板">
                        </div>
                    </td>
                    <!--中间栏区域end-->
                    <!--右侧区域start-->
                    <td class="ali01 ver01" width="100%">
                        <div id="rbox">
                            <div id="rbox_topcenter">
                                <div id="rbox_topleft">
                                    <div id="rbox_topright">
                                        <div class="rbox_title">
                                            操作内容
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="rbox_middlecenter">
                                <div id="rbox_middleleft">
                                    <div id="rbox_middleright">
                                        <div id="bs_right">
                                            <IFRAME scrolling="yes" width="100%" height="100%" frameBorder=0 id=frmright name=frmright src="addinfo.jsp" allowTransparency="true">
                                            </IFRAME>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <div id="rbox_bottomcenter">
                                <div id="rbox_bottomleft">
                                    <div id="rbox_bottomright">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <!--右侧区域end-->
                </tr>
            </table>
            <!--尾部区域start-->
            <div id="fbox">
                <div id="bs_footcenter">
                    <div id="bs_footleft">
                        <div id="bs_footright">
                            业务咨询电话：0311-85813216     技术服务电话：13028644840 18330107787
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--尾部区域end-->
        <!--浏览器resize事件修正start-->
        <div id="resizeFix">
        </div>
        <!--浏览器resize事件修正end-->
        <!--载进度条start-->
        <div class="progressBg" id="progress" style="display:none;">
            <div class="progressBar">
            </div>
        </div>
        <!--载进度条end-->
    </body>
     <script>
        
        $(document).ready(function(){
            var username = GetRequest();
            $("#username").html(username);
        });
        function GetRequest(){
            var url = location.search; //获取url中"?"符后的字串
            if (url.indexOf("?") != -1) { //判断是否有参数
                var str = url.substr(1); //从第一个字符开始 因为第0个是?号 获取所有除问号的所有符串
                strs = str.split("="); //用等号进行分隔 （因为知道只有一个参数 所以直接用等号进分隔 如果有多个参数 要用&号分隔 再用等号进行分隔）
                wjid = decodeURI(strs[1]);
                return decodeURI(strs[1]); //直接弹出第一个参数 （如果有多个参数 还要进行循环的）
            }
        }
		

    </script>
 <!--    <script>
        
        $(document).ready(function(){
            GetRequest();
			
          
        });
        function GetRequest(){
          doAjax("userShowServlet", null, function(rstText) {
				var result=eval('('+rstText+')');
				if(result.status=='OK')
					{
					var s=result.user;
				    $("#username").html(s);
					}else{
						window.location.href="login.html";
						}
			});
            }
        
function getXMLHttpResquest() {
	  var request;
      if (window.XMLHttpRequest)
      {
          request = new XMLHttpRequest();
      }
      else
      {
          try
          {
              request = new ActiveXObject("Microsoft.XMLHTTP");
          }
          catch (e)
          {
              request = new ActiveXObject("Msxml2.XMLHTTP");
          }
      }
      return request;
}
function doAjax(url,params,callBack) {
	var req=getXMLHttpResquest();
	if(req!=null)
		{
		req.onreadystatechange=function(){
			if(req.readyState==4)
				{
				if(200==req.status)
					{
					callBack(req.responseText);
					
					}else if(404==req.status)
						{
						//alert('404-HTTP请求路径错误！');
						window.location.href="login.html";
						}
					else if(500==req.status)
						{
						alert('500-HTTP请求路径错误！');
						window.location.href="login.html";
						}
						
				}
			
		};
		req.open("POST",url,true);
		req.setRequestHeader("Content-Type","application/x-www-form-urlencoded;;charset=utf-8");
		req.send(params);
	}
	
}


    </script> -->
</html>
