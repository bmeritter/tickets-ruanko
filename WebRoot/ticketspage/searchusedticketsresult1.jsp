<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<title>��ҳ</title>
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	left: 117px;
	top: 433px;
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
</script>
		</head>

		<body>
			
		<div>
  	<%
			if (session.getAttribute("login") == null) {
				out.print("<a href='../ticketspage/index.jsp'>���վ�Ʊ����ҳ</a>&nbsp;|&nbsp;");
				out.print("<a href='../userspage/userlogin.jsp'>��¼</a>&nbsp;&nbsp;");
				out.print("<a href='../userspage/adduser.jsp'>ע��</a>");
			}else {
		%>
		<form action="userLogout.action" method="post">
			<table>
				<tr>
					<td>
						��ӭ:<%=session.getAttribute("login").toString()%>
				    <%
						out.print("&nbsp;<a href='../ticketspage/addusedticket.jsp'>��������Ʊ</a>|&nbsp;");
						out.print("&nbsp;<a href='../ticketspage/searchorder.jsp'>��ѯ����</a>|&nbsp;");
						%>
						<input type="submit" value="�˳�" />
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
						<img src="src/logo4.png" width="453" height="113" align="absbottom" onclick="MM_goToURL('parent','index.jsp');return document.MM_returnValue" />					</td>
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
							<!-- �� param ��ǩ��ʾʹ�� Flash Player 6.0 r65 �͸��߰汾���û��������°汾�� Flash Player��������������û���������ʾ���뽫��ɾ���� -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- ��һ�������ǩ���ڷ� IE �����������ʹ�� IECC ����� IE ���ء� -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash" data="src/sz .swf"
								width="440" height="100">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="6.0.65.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- ��������������������ʾ��ʹ�� Flash Player 6.0 �͸��Ͱ汾���û��� -->
								<div>
									<h4>
										��ҳ���ϵ�������Ҫ���°汾�� Adobe Flash Player��
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="��ȡ Adobe Flash Player" width="112" height="33" /> </a>
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
							width="191" height="47" id="FlashID2" onmousedown="MM_goToURL('parent','Main.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_101.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- �� param ��ǩ��ʾʹ�� Flash Player 6.0 r65 �͸��߰汾���û��������°汾�� Flash Player��������������û���������ʾ���뽫��ɾ���� -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- ��һ�������ǩ���ڷ� IE �����������ʹ�� IECC ����� IE ���ء� -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_101.swf" width="191" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- ��������������������ʾ��ʹ�� Flash Player 6.0 �͸��Ͱ汾���û��� -->
								<div>
									<h4>
										��ҳ���ϵ�������Ҫ���°汾�� Adobe Flash Player��
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="��ȡ Adobe Flash Player" width="112" height="33" /> </a>
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
							height="47" id="FlashID3" onmousedown="MM_goToURL('parent','searchtickets.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_102.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- �� param ��ǩ��ʾʹ�� Flash Player 6.0 r65 �͸��߰汾���û��������°汾�� Flash Player��������������û���������ʾ���뽫��ɾ���� -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- ��һ�������ǩ���ڷ� IE �����������ʹ�� IECC ����� IE ���ء� -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_102.swf" width="190" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- ��������������������ʾ��ʹ�� Flash Player 6.0 �͸��Ͱ汾���û��� -->
								<div>
									<h4>
										��ҳ���ϵ�������Ҫ���°汾�� Adobe Flash Player��
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="��ȡ Adobe Flash Player" width="112" height="33" /> </a>
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
							height="47" id="FlashID4" onmousedown="MM_goToURL('parent','searchusedtickets.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_103.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- �� param ��ǩ��ʾʹ�� Flash Player 6.0 r65 �͸��߰汾���û��������°汾�� Flash Player��������������û���������ʾ���뽫��ɾ���� -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- ��һ�������ǩ���ڷ� IE �����������ʹ�� IECC ����� IE ���ء� -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_103.swf" width="191" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- ��������������������ʾ��ʹ�� Flash Player 6.0 �͸��Ͱ汾���û��� -->
								<div>
									<h4>
										��ҳ���ϵ�������Ҫ���°汾�� Adobe Flash Player��
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="��ȡ Adobe Flash Player" width="112" height="33" /> </a>
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
							height="47" id="FlashID5" onmousedown="MM_goToURL('parent','../userspage/adduser.jsp');return document.MM_returnValue">
							<param name="movie" value="src/an_104.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							<param name="swfversion" value="8.0.35.0" />
							<!-- �� param ��ǩ��ʾʹ�� Flash Player 6.0 r65 �͸��߰汾���û��������°汾�� Flash Player��������������û���������ʾ���뽫��ɾ���� -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- ��һ�������ǩ���ڷ� IE �����������ʹ�� IECC ����� IE ���ء� -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_104.swf" width="190" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- ��������������������ʾ��ʹ�� Flash Player 6.0 �͸��Ͱ汾���û��� -->
								<div>
									<h4>
										��ҳ���ϵ�������Ҫ���°汾�� Adobe Flash Player��
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="��ȡ Adobe Flash Player" width="112" height="33" /> </a>
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
							<!-- �� param ��ǩ��ʾʹ�� Flash Player 6.0 r65 �͸��߰汾���û��������°汾�� Flash Player��������������û���������ʾ���뽫��ɾ���� -->
							<param name="expressinstall"
								value="../Scripts/expressInstall.swf" />
							<!-- ��һ�������ǩ���ڷ� IE �����������ʹ�� IECC ����� IE ���ء� -->
							<!--[if !IE]>-->
							<object type="application/x-shockwave-flash"
								data="src/an_105.swf" width="195" height="47">
								<!--<![endif]-->
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<param name="swfversion" value="8.0.35.0" />
								<param name="expressinstall"
									value="../Scripts/expressInstall.swf" />
								<!-- ��������������������ʾ��ʹ�� Flash Player 6.0 �͸��Ͱ汾���û��� -->
								<div>
									<h4>
										��ҳ���ϵ�������Ҫ���°汾�� Adobe Flash Player��
									</h4>
									<p>
										<a href="http://www.adobe.com/go/getflashplayer"><img
												src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
												alt="��ȡ Adobe Flash Player" width="112" height="33" /> </a>
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
						<center>
							<font color="black" size= "5">
								<table width="500" align="center">
								
									<s:iterator id="ticket" value="ticket">


										<tr>
											<td width="150" rowspan="2">



												<img src="../ico/<s:property value="ico"/>" width="160" height="200"/>


											</td>
											<td>
												<table>
													<tr>
														<td>
															���⣺
														  <s:property value="title" />
														</td>
													</tr>
													<tr>
														<td>
															�۸�
															<s:property value="price" />
															Ԫ
													  </td>
													</tr>
													<tr>
														<td>
															��ϵ��ʽ��
														  <s:property value="telephone" />
														</td>
													</tr>
													<tr>
														<td>
															<a href="www.qq.com"> qq������ <s:property value="title" />
																<s:property value="qq" /> </a>
														</td>
													</tr>
													
												</table>
										</tr>

										<tr>
											<td>
												<font color="black">������</font>
												<font color="black"><s:property value="description" />
												</font>
										
										</td>
											
										
										</tr>
										<tr><td></br></td><tr><tr><td></br></td><tr>
										<tr><td></br></td><tr>
									</s:iterator>
								</table> </font>

						</center>

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