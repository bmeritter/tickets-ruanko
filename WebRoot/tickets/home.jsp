<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>聚票网 更新2</title>
		<base href="<%=basePath%>">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="css/ticket.css" rel="stylesheet" type="text/css" media="all" />
	</head>

	<body>
		<div id="usrbar">
			<table>
				<tr>
					<jsp:include page="/user/userbar.jsp" flush="true" />
				</tr>	
			</table>
		</div>
		<div id="container">
			<div id="header">
				<div id="menu">
					<ul>
						<li>
							<a href="#">首页</a>
						</li>
						<li class="menuDiv"></li>
						<li>
							<a href="#">购票</a>
						</li>
						<li class="menuDiv"></li>
						<li>
							<a href="#">二手票</a>
						</li>
						<li class="menuDiv"></li>
						<li>
							<a href="#">论坛</a>
						</li>
						<li class="menuDiv"></li>
						<li>
							<a href="#">关于</a>
						</li>
					</ul>
				</div>
				<div id="banner">
				</div>
			</div>

			<div id="pagebody">
				<table>
					<tr>
						<jsp:include page="index.jsp" flush="true" />
					</tr>
					
				</table>
			</div>
		</div>

	</body>
</html>
