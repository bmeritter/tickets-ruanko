<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head>

	<body>
		<table>
		<tr>
			<td bgcolor="#FFFFFF" align="right">
				ͼƬ
			</td>
			<td bgcolor="#FFFFFF">
				<p>
					<input type="radio" name="ico" value="1.jpg" align="middle"
						checked="checked" />
					<img src="ico/1.jpg" width="70" height="70" />
					<input type="radio" name="ico" value="2.jpg" align="middle" />
					<img src="ico/2.jpg" width="70" height="70" />
					<input type="radio" name="ico" value="3.jpg" align="middle" />
					<img src="ico/3.jpg" width="70" height="70" />
				</p>
				<p>
					<input type="radio" name="ico" value="4.jpg" align="middle" />
					<img src="ico/4.jpg" width="70" height="70" />
					<input type="radio" name="ico" value="5.gif" align="middle" />
					<img src="ico/5.gif" width="70" height="70" />
					<input type="radio" name="ico" value="6.gif" align="middle" />
					<img src="ico/6.gif" width="70" height="70" />
				</p>
		</tr>
		</table>

	</body>
</html>
