<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
	<title>主页</title>
	<html>
		<head>
			<%@ page language="java" contentType="text/html; charset=gbk"%>
			</SCRIPT>
			<style type="text/css">
body {
	background-image: url(src/bg2.jpg);
	margin-left: 50px;
	margin-top: 10px;
	background-repeat: repeat;
	text-align: left;
}

.yf {
	font-size: 24px;
	color: #FFF;
	font-weight: bold;
	text-align: left;
}

.ys_1 {
	font-size: 36px;
	cursor: crosshair;
	color: #960;
}

.ys_1 {
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

.ys_1 {
	font-family: "Arial Unicode MS";
}

.ys_1 {
	font-family: Verdana, Geneva, sans-serif;
	color: #09F;
	text-align: center;
	font-size: 16px;
	font-weight: bold;
}

.s1 {
	color: #FFF;
}

.s1 {
	font-weight: bold;
}

.zt02 {
	font-weight: bold;
	color: #FFF;
}

#apDiv1 {
	position: absolute;
	width: 646px;
	height: 417px;
	z-index: 1;
	left: 151px;
	top: 588px;
	color: #FFF;
}

#apDiv2 {
	position: absolute;
	width: 810px;
	height: 349px;
	z-index: 1;
	left: 79px;
	top: 401px;
	background-color: #0000FF;
}

#apDiv3 {
	position: absolute;
	width: 799px;
	height: 292px;
	z-index: 1;
	background-color: #0000FF;
	left: 74px;
	top: 437px;
}
            </style>
			<script src="../Scripts/swfobject_modified.js" type="text/javascript">
</script>
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

    <script language="javascript">
     function del()
    {
       if(confirm("确实要删除吗?"))
          alert("已经删除！");
       else
          alert("已经取消了删除操作");
    }
    </script>


</script>
		</head>

		<body>
		
		<div>
  <%
			if (session.getAttribute("login") == null) {
				
				
				response.sendRedirect("../userspage/userlogin.jsp");
			
				out.print("<a href='../ticketspage/index.jsp'>花空聚票网首页</a>&nbsp;|&nbsp;");
				out.print("<a href='../userspage/userlogin.jsp'>登录</a>&nbsp;&nbsp;");
				out.print("<a href='../userspage/adduser.jsp'>注册</a>");
			} else {
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
					<td width="343" height="87">
						&nbsp;
						<img src="src/logo4.png" width="453" height="113" align="absbottom" onClick="MM_goToURL('parent','index.jsp');return document.MM_returnValue" />					</td>
					<td width="162">
						<p class="yf">&nbsp;
							
						</p>
						<p class="yf">
							&nbsp;&nbsp;
						</p>
					</td>
					<td width="440">
						<object id="FlashID7"
							classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="440"
							height="100">
							<param name="movie" value="src/sz .swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="6.0.65.0" />
							<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash" data=" src/sz .swf"
								width="440" height="100">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="6.0.65.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
								<div>
									<h4>
										此页面上的内容需要较新版本的 Adobe Flash Player。
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="获取 Adobe Flash Player" width="112" height="33" />
										</a>
									</p>
								</div>
								<!--[if !IE]>-->
							</object>
							<!--<![endif]-->
						</object>
					</td>
				</tr>
			</table>
			<table width="958" height="58" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="191">
						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
							width="191" height="47" id="FlashID2" onMouseDown="MM_goToURL('parent','Main.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_101.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_101.swf" width="191" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
								<div>
									<h4>
										此页面上的内容需要较新版本的 Adobe Flash Player。
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="获取 Adobe Flash Player" width="112" height="33" />
										</a>
									</p>
								</div>
								<!--[if !IE]>-->
							</object>
							<!--<![endif]-->
					  </object>
					</td>
					<td width="190">
						<object
							classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="190"
							height="47" id="FlashID3" onMouseDown="MM_goToURL('parent','searchtickets.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_102.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_102.swf" width="190" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
								<div>
									<h4>
										此页面上的内容需要较新版本的 Adobe Flash Player。
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="获取 Adobe Flash Player" width="112" height="33" />
										</a>
									</p>
								</div>
								<!--[if !IE]>-->
							</object>
							<!--<![endif]-->
					  </object>
					</td>
					<td width="191">
						<object
							classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="191"
							height="47" id="FlashID4" onMouseDown="MM_goToURL('parent','searchusedtickets.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_103.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_103.swf" width="191" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
								<div>
									<h4>
										此页面上的内容需要较新版本的 Adobe Flash Player。
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="获取 Adobe Flash Player" width="112" height="33" />
										</a>
									</p>
								</div>
								<!--[if !IE]>-->
							</object>
							<!--<![endif]-->
					  </object>
					</td>
					<td width="190">
						<object
							classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="190"
							height="47" id="FlashID5" onMouseDown="MM_goToURL('parent','../userspage/adduser.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_104.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_104.swf" width="190" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
								<div>
									<h4>
										此页面上的内容需要较新版本的 Adobe Flash Player。
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="获取 Adobe Flash Player" width="112" height="33" />
										</a>
									</p>
								</div>
								<!--[if !IE]>-->
							</object>
							<!--<![endif]-->
					  </object>
					</td>
					<td width="196">
						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
							width="195" height="47" id="FlashID6"
							onmousedown="MM_goToURL('parent','index.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_105.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_105.swf" width="195" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
								<div>
									<h4>
										此页面上的内容需要较新版本的 Adobe Flash Player。
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="获取 Adobe Flash Player" width="112" height="33" />
										</a>
									</p>
								</div>
								<!--[if !IE]>-->
							</object>
							<!--<![endif]-->
					  </object>
				  </td>
				</tr>
			</table>

			<table width="953" height="550" border="0" align="left"
				cellpadding="0" cellspacing="5">
				<tr>
					<td width="863" height="350">
						<div id="apDiv1" height="100%" width="100%">
							<center>
								<form action="saveusedticket.action" method="post">
									<table width="500" border="0" align="center" cellspacing="1"
										bgcolor="#333333">
										<tr>
											<td height="22" colspan="2" bgcolor="white">&nbsp;
												

										  </td>
										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													主题
												</div>
											</td>
											<td bgcolor="white">
												<input value="" name="title" type="text" />
											</td>
										</tr>
										<tr>
											<td width="13%" bgcolor="white">
												<div align="right">
													用户号
												</div>
											</td>
											<td width="87%" bgcolor="white">
												<input value="1" name="userid" type="text" />
												<span class="STYLE4">*</span><span class="STYLE3">必填</span>
											</td>
										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													QQ：
												</div>
											</td>
											<td bgcolor="white">
												<input value="" name="qq" type="text" />
											</td>
										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													城市:
												</div>
											</td>
											<td bgcolor="white">
												<label>
													<input value="" name="city" type="text" />
												</label>
											</td>
										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													价格:
												</div>
											</td>
											<td bgcolor="white">
												<label>
													<input value="" name="price" type="text" />
												</label>
											</td>
										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													时间:
												</div>
											</td>
											<td bgcolor="white">
												<label>
													<input value="" name="deadline" type="text" />
												</label>
											</td>
										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													电话:
												</div>
											</td>
											<td bgcolor="white">
												<label>
													<input value="" name="telephone" type="text" />
												</label>
											</td>
										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													类别：
												</div>
											</td>
											<td bgcolor="white">
												<input type="radio" name="cate" value="电影" align="middle"
													checked="checked">
												电影
												<input type="radio" name="cate" value="演唱会" align="middle" />
												演唱会
											</td>
										</tr>
										<tr>
											<td bgcolor="white" align="right">
												图片
											</td>
											<td bgcolor="white">

												<p>
													<input type="radio" name="ico" value="1.jpg" align="middle"
														checked="checked" />
													<img src="../ico/1.jpg" width="70" height="70" />
													<input type="radio" name="ico" value="2.jpg" align="middle" />
													<img src="../ico/2.jpg" width="70" height="70" />
													<input type="radio" name="ico" value="3.jpg" align="middle" />
													<img src="../ico/3.jpg" width="70" height="70" />
												</p>
												<p>
													<input type="radio" name="ico" value="4.jpg" align="middle" />
													<img src="../ico/4.jpg" width="70" height="70" />
													<input type="radio" name="ico" value="5.gif" align="middle" />
													<img src="../ico/5.gif" width="70" height="70" />
													<input type="radio" name="ico" value="6.gif" align="middle" />
													<img src="../ico/6.gif" width="70" height="70" />
												</p>
											</td>

										</tr>
										<tr>
											<td bgcolor="white">
												<div align="right">
													内容
												</div>
											</td>
											<td bgcolor="white">
												<textarea name="description" cols="50" rows="5"></textarea>
												<br />
												<span class="STYLE4">*<span class="STYLE3">必填
														最多255字符 </span> </span>
											</td>
										</tr>
										<tr>
											<td bgcolor="white">&nbsp;
												

										  </td>
											<td bgcolor="white">
												<input name="submit" type="submit" value=提交 onclick= "return(confirm( 'are   your   sure ')) "/>
												<input name="submit2" type="reset" value="重置" />
											</td>
										</tr>
										
									</table>
							  </form>
							</center>
					  </div>
					</td>
				</tr>
			</table>

			<p>&nbsp;
				
			</p>
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