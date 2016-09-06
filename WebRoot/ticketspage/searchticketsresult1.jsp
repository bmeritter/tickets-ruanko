<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<title>二手票搜索</title>
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</SCRIPT> 
<style type="text/css">
body{
	background-image:url(src/bae6c9f1574daee01fd52889e624fd81.jpg);
	margin-left: 50px;
	margin-top: 10px;
	background-repeat: repeat;
	text-align: left;
}

a:link {/*链接*/
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}


#apDiv1 {
	position:absolute;
	width:953px;
	height:550px;
	z-index:1;
	left: 49px;
	top: 533px;
	color: #FFF;
}
.dl {
	height: 18px;
	width: 120px;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #666666;
	border-right-color: #666666;
	border-bottom-color: #666666;
	border-left-color: #666666;
}/*表单*/
.dl2 {
	height: 18px;
	width: 20px;
}

</style>
<script src="../Scripts/swfobject_modified.js" type="text/javascript"></script>
<script type="text/javascript">
<!--

function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
</head>

<body>

<div>
  	<%
			if (session.getAttribute("login") == null) {
				out.print("<a href='../ticketspage/index.jsp'>花空聚票网首页</a>&nbsp;|&nbsp;");
				out.print("<a href='../userspage/userlogin.jsp'>登录</a>&nbsp;&nbsp;");
				out.print("<a href='../userspage/adduser.jsp'>注册</a>");
			}else {
		%>
		<form action="userLogout.action" method="post">
			<table>
				<tr>
					<td>
						欢迎:<%=session.getAttribute("login").toString()%>
				    <%
						out.print("&nbsp;<a href='../ticketspage/addusedticket.jsp'>发布二手票</a>|&nbsp;");
						out.print("&nbsp;<a href='../ticketspage/searchorder.jsp'>查询订单</a>|&nbsp;");
						%>
						<input type="submit" value="退出" />
					</td>
				</tr>
			</table>

		</form>
		<%
			}
		%></div>

<table width="959" border="0">
  <tr>
    <td width="343" height="87">&nbsp;<img  src="src/logo4.png" width="453" height="113" align="absbottom" onclick="MM_goToURL('parent','../ticketspage/index.jsp');return document.MM_returnValue" /></td>
    <td width="162"><p class="yf">&nbsp;</p>
      <p class="yf">&nbsp;&nbsp; </p></td>
  <td width="440"><object id="FlashID7" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="440" height="100">
    <param name="movie" value="src/sz .swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="transparent" />
    <param name="swfversion" value="6.0.65.0" />
    <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
    <param name="expressinstall" value="../Scripts/expressInstall.swf" />
    <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data=" src/sz .swf" width="440" height="100">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="transparent" />
      <param name="swfversion" value="6.0.65.0" />
      <param name="expressinstall" value="../Scripts/expressInstall.swf" />
      <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
      <div>
        <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object></td>
  </tr>
</table>

<table width="958" height="58" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="191"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="191" height="47" id="FlashID2" onmousedown="MM_goToURL('parent','Main.jsp');return document.MM_returnValue">
      <param name="movie" value="src/an_101.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="transparent" />
      <param name="swfversion" value="8.0.35.0" />
      <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
      <param name="expressinstall" value="../Scripts/expressInstall.swf" />
      <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
      <!--[if !IE]>-->
      <object type="application/x-shockwave-flash" data="src/an_101.swf" width="191" height="47">
        <!--<![endif]-->
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <param name="swfversion" value="8.0.35.0" />
        <param name="expressinstall" value="../Scripts/expressInstall.swf" />
        <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
        <div>
          <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
          <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
        </div>
        <!--[if !IE]>-->
      </object>
      <!--<![endif]-->
    </object></td>
    <td width="190"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="190" height="47" id="FlashID3" onmousedown="MM_goToURL('parent','searchtickets.jsp');return document.MM_returnValue">
      <param name="movie" value="src/an_102.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="transparent" />
      <param name="swfversion" value="8.0.35.0" />
      <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
      <param name="expressinstall" value="../Scripts/expressInstall.swf" />
      <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
      <!--[if !IE]>-->
      <object type="application/x-shockwave-flash" data="src/an_102.swf" width="190" height="47">
        <!--<![endif]-->
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <param name="swfversion" value="8.0.35.0" />
        <param name="expressinstall" value="../Scripts/expressInstall.swf" />
        <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
        <div>
          <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
          <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
        </div>
        <!--[if !IE]>-->
      </object>
      <!--<![endif]-->
    </object></td>
    <td width="191"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="191" height="47" id="FlashID4" onmousedown="MM_goToURL('parent','searchusedtickets.jsp');return document.MM_returnValue">
      <param name="movie" value="src/an_103.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="transparent" />
      <param name="swfversion" value="8.0.35.0" />
      <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
      <param name="expressinstall" value="../Scripts/expressInstall.swf" />
      <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
      <!--[if !IE]>-->
      <object type="application/x-shockwave-flash" data="src/an_103.swf" width="191" height="47">
        <!--<![endif]-->
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <param name="swfversion" value="8.0.35.0" />
        <param name="expressinstall" value="../Scripts/expressInstall.swf" />
        <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
        <div>
          <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
          <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
        </div>
        <!--[if !IE]>-->
      </object>
      <!--<![endif]-->
    </object></td>
    <td width="190"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="190" height="47" id="FlashID5" onmousedown="MM_goToURL('parent','../userspage/adduser.jsp');return document.MM_returnValue">
      <param name="movie" value="src/an_104.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="transparent" />
      <param name="swfversion" value="8.0.35.0" />
      <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
      <param name="expressinstall" value="../Scripts/expressInstall.swf" />
      <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
      <!--[if !IE]>-->
      <object type="application/x-shockwave-flash" data="src/an_104.swf" width="190" height="47">
        <!--<![endif]-->
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <param name="swfversion" value="8.0.35.0" />
        <param name="expressinstall" value="../Scripts/expressInstall.swf" />
        <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
        <div>
          <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
          <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
        </div>
        <!--[if !IE]>-->
      </object>
      <!--<![endif]-->
    </object></td>
    <td width="196"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="195" height="47" id="FlashID6" onmousedown="MM_goToURL('parent','index.jsp');return document.MM_returnValue">
      <param name="movie" value="src/an_105.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="transparent" />
      <param name="swfversion" value="8.0.35.0" />
      <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
      <param name="expressinstall" value="../Scripts/expressInstall.swf" />
      <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
      <!--[if !IE]>-->
      <object type="application/x-shockwave-flash" data="src/an_105.swf" width="195" height="47">
        <!--<![endif]-->
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <param name="swfversion" value="8.0.35.0" />
        <param name="expressinstall" value="../Scripts/expressInstall.swf" />
        <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
        <div>
          <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
          <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
        </div>
        <!--[if !IE]>-->
      </object>
      <!--<![endif]-->
    </object></td>
  </tr>
</table>
<table width="953" height="550" border="0" align="left" cellpadding="0" cellspacing="5" >
  <tr>
    <td width="863" height="350">
 <div id="apDiv1">
   <center>
<form name="login" accept-charset="UTF-8" action="userLogin.action" method="post"><br>
				<font color = "black">
<table class="forumline" align="left" cellspacing="1" cellpadding="3" width="919" border="0" style="" heigh="50%">
  <!--DWLayoutTable-->
                     <tr><br /><br /></tr>

					<tr>
					

					  <td  height="60px"colspan="3" align="center" valign="middle" class="row1"style="font-size:20px">
					  账号: 
		    <input class="post" height="20px"size="18" name="username" type="text"/> 
					  </td>
					</tr>
                    <tr><br /><br /></tr>
					<tr>
					  <td height="60px"colspan="3" align="center" valign="middle" class="row1"style="font-size:20px">
					    
							 密码:   
					    <input class="post"height="20px" type="password" size="18" name="password" /><br />
					  
                        <a href="">忘记密码</a></td>
                        
					</tr>
                    
					<tr>

					  <td height="60px"colspan="3" align="center" valign="middle" class="row1"style="font-size:20px">
						

						  
                    						  <label for="autologin">&nbsp;&nbsp;自动登录</label>
					
						  <input class="text" type="checkbox" name="autologin" id="autologin"/>
						 
					  </td>
					</tr>
                    
                    	<tr>

					  <td colspan="3" align="center" valign="middle" class="row1"style="font-size:20px">
						
&nbsp;&nbsp;&nbsp;&nbsp;<input class="mainoption" align="center" type="submit" value="登录" name="login" style="width:100px; height:30px" />
						  
                          </td></tr>
  </table>
  </font>
</form>
 </center></div> 
</td>
  </tr>

</table>

<p>&nbsp;</p>
<script type="text/javascript">
swfobject.registerObject("FlashID2");
swfobject.registerObject("FlashID3");
swfobject.registerObject("FlashID4");
swfobject.registerObject("FlashID5");
swfobject.registerObject("FlashID6");
swfobject.registerObject("FlashID7");
</script>
</body>
</html>
