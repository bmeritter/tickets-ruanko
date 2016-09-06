<%@page contentType="text/html;charset=gb2312"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>聚票网欢迎您</title>
	</head>
	<body>
		<%
			if (session.getAttribute("login") == null) {
				out.print("<a href='http://www.baidu.com/'>聚票网首页</a>&nbsp;|&nbsp;");
				out.print("<a href='user/login.jsp'>登录</a>&nbsp;&nbsp;");
				out.print("<a href='user/regist.jsp'>注册</a>");
			} else {
		%>
		<form action="userLogout.action" method="post">
			<table>
				<tr>
					<td>
						欢迎:<%=session.getAttribute("login").toString()%>
						<%
						out.print("&nbsp;<a href='usedtickets/addusedticket.jsp'>发布二手票</a>|&nbsp;");
						%>
						<input type="submit" value="退出" />
					</td>
				</tr>
			</table>

		</form>
		<%
			}
		%>
	</body>
</html>