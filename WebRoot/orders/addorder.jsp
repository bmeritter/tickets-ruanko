<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<base href="<%=basePath%>">
		<%@ page language="java" contentType="text/html; charset=gbk"
			pageEncoding="gbk"%>
		<link href="css/addorder.css" rel="stylesheet" type="text/css">
		<title>��������</title>
	</head>
	<body>
		<%
			if (session.getAttribute("login") == null) {
				response.sendRedirect("user/login.jsp");
			} else {
		%>
		<form action="addorder.action" method="post">
			<br>
			<table width="500" border="0" align="center" cellspacing="1"
				bgcolor="#333333">
				<tr>
					<td height="22" colspan="2" bgcolor="#FFFFFF">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							�û���:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input value="" name="username" type="text" />
					</td>
				</tr>
				<tr>
					<td width="13%" bgcolor="#FFFFFF">
						<div align="right">
							��ʵ����:
						</div>
					</td>
					<td width="87%" bgcolor="#FFFFFF">
						<input value="" name="realname" type="text" />
						<span class="STYLE4">*</span><span class="STYLE3">����</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							סַ:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input value="" name="address" type="text" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							�ֻ�:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<label>
							<input value="" name="telephone" type="text" />
						</label>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							֧�����
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input type="radio" name="paytype" value="��������" align="middle"
							checked="checked">
						��������
						<input type="radio" name="paytype" value="����֧��" align="middle" />
						����֧��
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							����
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<textarea name="description" cols="50" rows="5"></textarea>
						<br />
						<span class="STYLE4">*<span class="STYLE3">����
								���255�ַ� </span>
						</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						&nbsp;
					</td>
					<td bgcolor="#FFFFFF">
						<input name="submit" type="submit" value=�ύ />
						<input name="submit2" type="reset" value="����" />
					</td>
				</tr>
			</table>
		</form>
		<%
			}
		%>
	</body>
</html>