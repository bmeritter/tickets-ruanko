<%@page contentType="text/html;charset=gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">

		<title>欢迎登录聚票网</title>
		<style>
</style>
	</head>
	<body>
	<a href='user/login.jsp'>用户名或密码错误，请重新登陆</a>
	</body>
</html>
