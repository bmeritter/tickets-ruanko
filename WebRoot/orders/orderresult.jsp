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
		<base href="<%=basePath%>">

		<title>My JSP 'result.jsp' starting page</title>

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
		<table width="500" align="center">
			<s:iterator id="order" value="order">
				<tr>
					<td>
						

						<s:property value="tickettile" />

					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="username" /> </font>
					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="realname" /> </font>
					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="address" /> </font>
					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="telephone" /> </font>
					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="description" /> </font>
					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="paytype" /> </font>
					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="price" /> </font>Ôª
					</td>
				</tr>

			</s:iterator>
			<tr>
				<td width="150" rowspan="2">

					<a href="" />·µ»Ø</a>

				</td>
			</tr>
		</table>
	</body>
</html>
