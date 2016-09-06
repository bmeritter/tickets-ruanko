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
		<title>订单发布</title>
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
							用户名:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input value="" name="username" type="text" />
					</td>
				</tr>
				<tr>
					<td width="13%" bgcolor="#FFFFFF">
						<div align="right">
							真实姓名:
						</div>
					</td>
					<td width="87%" bgcolor="#FFFFFF">
						<input value="" name="realname" type="text" />
						<span class="STYLE4">*</span><span class="STYLE3">必填</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							住址:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input value="" name="address" type="text" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							手机:
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
							支付类别：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input type="radio" name="paytype" value="货到付款" align="middle"
							checked="checked">
						货到付款
						<input type="radio" name="paytype" value="在线支付" align="middle" />
						在线支付
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							内容
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<textarea name="description" cols="50" rows="5"></textarea>
						<br />
						<span class="STYLE4">*<span class="STYLE3">必填
								最多255字符 </span>
						</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						&nbsp;
					</td>
					<td bgcolor="#FFFFFF">
						<input name="submit" type="submit" value=提交 />
						<input name="submit2" type="reset" value="重置" />
					</td>
				</tr>
			</table>
		</form>
		<%
			}
		%>
	</body>
</html>