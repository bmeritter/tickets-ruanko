<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>��ӭ����[��Ʊ��]</title>
		<meta name="keywords" content="�̳�,��Ʊ,��Ӱ,�ݳ���,��������" />
		<meta name="description" content="����Ʊ��ר���������ݳ��ᡢ�������¡���Ӱ��Ʊ��" />
		<link href="style/basic.css" rel="stylesheet" type="text/css" />

	</head>

	<body>


		<div id="box">
			<div id="logo">
				<object data="media/logo.swf" type="application/x-shockwave-flash"
					width="766" height="148">
					<param name="movie" value="media/logo.swf" />
					<param name="SCALE" value="exactfit" />
					<param name="quality" value="high" />
					<param name="wmode" value="transparent" />
				</object>
			</div>
			<!-- #logo -->

			<div id="nav">
				<ul>
					<li>
						<a href="../ticketspage/index.jsp"><span>��ҳ</span> </a>
					</li>
					<li>
						<a href="../userspage/userlogin.jsp"><span>��ҳ</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchtickets.jsp"><span>��Ʊ</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchusedtickets.jsp"><span>����Ʊ</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>ע��</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>�û�����</span> </a>
					</li>
					<li>
						<a href="#"><span>Ʒ��ר��</span> </a>
					</li>
					<li>
						<a href="#"><span>��л</span> </a>
					</li>
					<li>
						<a href="#"><span class="last">�Ż�ȯ</span> </a>
					</li>
				</ul>
			</div>
			<!-- #nav -->
			<div>
				<table>
					<tr>
						<td>
							<br />
						</td>
					</tr>
				</table>
			</div>
			<div align="right">
				<%
					if (session.getAttribute("login") == null) {
						out
								.print("<a href='../userspage/userlogin.jsp'>��¼</a>&nbsp;&nbsp;");
						out.print("<a href='../userspage/adduser.jsp'>ע��</a>");
					} else {
				%>
				<form action="userLogout.action" method="post">
					<table>
						<tr>
							<td>
								��ӭ:<%=session.getAttribute("login").toString()%>
								<%
									out
												.print("&nbsp;<a href='../ticketspage/addusedticket.jsp'>��������Ʊ</a>|&nbsp;");
										out
												.print("&nbsp;<a href='../ticketspage/searchorder.jsp'>��ѯ����</a>|&nbsp;");
								%>
								<input type="submit" value="�˳�" />
							</td>
						</tr>
					</table>

				</form>
				<%
					}
				%>
			</div>

			<div align="center">
				<form action="addorder.action" method="post">
					<font color="black">
						<table align="center">
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
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input value="" name="telephone" type="text" />
									</label>
								</td>
							</tr>
							<tr>
								<div align="left">
								<td bgcolor="#FFFFFF">
									<div align="right">
										֧�����
									</div>
								</td>
								<td bgcolor="#FFFFFF">

									<input type="radio" name="paytype" value="��������"
										checked="checked" />
									��������

									<input type="radio" name="paytype" value="����֧��" />
									����֧��

								</td>
								</div>
							</tr>

							<tr>
								<td bgcolor="#FFFFFF">
									<div align="right">
										����
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									<textarea name="description" cols="40" rows="5" style="background: #BBFFEE"></textarea>
									<br />
									<span class="STYLE4">*<span class="STYLE3">����
											���255�ַ� </span> </span>
								</td>
							</tr>
							<tr>
								<td height="22" colspan="2" bgcolor="#FFFFFF">
									&nbsp;



								</td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF">
									&nbsp;



								</td>
								<td bgcolor="#FFFFFF">
									<input name="submit" type="submit" value=�ύ
										onclick="return(confirm( 'are   your   sure ?')) " />
									<input name="submit2" type="reset" value="����" />
								</td>
							</tr>
							<tr>
								<td height="22" colspan="2" bgcolor="#FFFFFF">
									&nbsp;


								</td>
							</tr>
						</table> </font>
				</form>

			</div>

			<div id="footer">
				��Ʊ�� www.ployticket.edu.cn
			</div>
			<!-- #footer -->
		</div>
	</body>
</html>
