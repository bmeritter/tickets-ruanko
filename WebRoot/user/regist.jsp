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
		<link type="text/css" rel="stylesheet" href="css/login.css">
		<script language="JavaScript" type="text/javascript"
			src="js/jquery-1.4.2.js">
</script>
		<script language="JavaScript" type="text/javascript" src="js/in.js">
</script>
		<title>��ӭע���Ʊ��</title>
		<style>
</style>
	</head>
	<body>
		<table id="__01" width="1000" height="467" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td colspan="3">
					<img src="Registimages/index.png" width="758" alt="">
				</td>
			</tr>
			<tr>
				<td rowspan="2">
					<img src="Registimages/hello_wold_02.gif" width="15" height="399"
						alt="">
				</td>
				<td width="502">
					<form action="userRegist.action" method="post">
						<table>
							<tr>
								<td>
									<table>
										<tr>
											<td>
												�û���
											</td>
											<td>

												<input class="two" type="text" name="username">
												<span class="a"></span>
											</td>
										</tr>
										<tr>
											<td>
												����
											</td>
											<td>

												<input class="two" type="password" name="password">
												<span class="b"></span>
											</td>
										</tr>
										<tr>
											<td>
												������������
											</td>
											<td>

												<input class="two" type="password" name="">
												<span class="c"></span>
											</td>
										</tr>
										<tr>
											<td>
												��ϵ��ʽ
											</td>
											<td>

												<input class="two" type="text" name="telephone">
											</td>
										</tr>

										<tr>
											<td>
												����
											</td>
											<td>

												<input class="two" type="text" name="age">
											</td>
										</tr>
										<tr>
											<td>
												e-mail
											</td>
											<td>

												<input class="two" type="text" name="email">
											</td>
										</tr>
										<tr>
											<td>
												סַ
											</td>
											<td>

												<input class="two" type="text" name="address">
											</td>
										</tr>
										<tr>
											<td>
												����
											</td>
											<td>

												<input class="two" type="text" name="birth">
											</td>
										</tr>
										<tr>
											<td>
												<input type="submit" name="res" id="one" value="">
											</td>
											<td>
												<input class="one" type="image" src="Registimages/but1.png">
											</td>

										</tr>
									</table>
								</td>
								<td>
									<s:fielderror></s:fielderror>
								</td>
							</tr>




						</table>
					</form>




				</td>

			</tr>
			<tr>
				<td height="38">
				</td>
			</tr>
		</table>
	</body>
</html>
