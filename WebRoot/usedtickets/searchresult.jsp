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

		<title>���</title>

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



						<img src="ico/<s:property value="ico"/>" />


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
								<a href="www.qq.com">
									qq������
									<s:property value="title" />
									<s:property value="qq" />
								</a>
								</td>								
							</tr>
						</table>

						<font color="#FF0000"> </font>

					</td>
				</tr>
				<tr>
					<td>
						������
						<font color="#999999"><s:property value="description" /> </font>
					</td>
				</tr>
			</s:iterator>
		</table>
	</body>
</html>
