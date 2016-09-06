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
			<s:iterator id="ticket" value="ticket">
				<tr>
					<td width="150" rowspan="2">
					
					<a
							href="<s:property value="link" />"> 
							<img src="showimage/<s:property value="id"/>.jpg"/>
						</a>
					
					</td>
					<td>

						<form action="addordertmp.action" method="post">
							<input type="text" name="tickettitle" size="30"
								value="<s:property value="title"  />" readOnly="readonly">
							<input type="text" name="price" size="30"
								value="<s:property value="price" />" readOnly="readonly">
							RMB
							<input type="submit" value="Á¢¼´¶©¹º">
						</form>
  					<font color="#FF0000"> <a
							href="<s:property value="link" />"> <s:property value="link" />
						</a> </font>

					</td>
				</tr>
				<tr>
					<td>
						<font color="#999999"><s:property value="description" /> </font>
					</td>
				</tr>
			</s:iterator>
		</table>
	</body>
</html>
