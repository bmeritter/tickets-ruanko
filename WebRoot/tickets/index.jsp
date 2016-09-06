<%@ page pageEncoding="gbk"%>
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
		<br>
		<form action="searchtickets.action" method="post">
			<table>
				<tr>
					<td>
						<input name="title" type="text" size="15" />
					</td>
					<td>
						<input type="submit" value="搜索">
					</td>
				</tr>
				<tr>
					<td>
						<s:radio list="#{'0':'电影','1':'演唱会','2':'体育赛事','3':'全部'}"
							name="cateid" value="3" />
					</td>
					<td>

					</td>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>
						<select name="city" id="city">
							<option value='quanguo'>
								全国
							</option>
							<option value='shanghai'>
								上海
							</option>
							<option value='beijing'>
								北京
							</option>
							<option value='nanjing'>
								南京
							</option>
							<option value='chengdu'>
								成都
							</option>
						</select>
					</td>

				</tr>
			</table>

		</form>
		<br>
	</body>
</html>
