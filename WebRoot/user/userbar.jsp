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
		<title>��Ʊ����ӭ��</title>
	</head>
	<body>
		<%
			if (session.getAttribute("login") == null) {
				out.print("<a href='http://www.baidu.com/'>��Ʊ����ҳ</a>&nbsp;|&nbsp;");
				out.print("<a href='user/login.jsp'>��¼</a>&nbsp;&nbsp;");
				out.print("<a href='user/regist.jsp'>ע��</a>");
			} else {
		%>
		<form action="userLogout.action" method="post">
			<table>
				<tr>
					<td>
						��ӭ:<%=session.getAttribute("login").toString()%>
						<%
						out.print("&nbsp;<a href='usedtickets/addusedticket.jsp'>��������Ʊ</a>|&nbsp;");
						%>
						<input type="submit" value="�˳�" />
					</td>
				</tr>
			</table>

		</form>
		<%
			}
		%>
	</body>
</html>