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
				<center>
					<form action="searchtickets.action" method="post">
						<font color="black">

							<table>
								<tr>


									<td width="863" align="center">
										������ؼ���
										<input name="title" type="text" size="15"
											style="font-size: 20px" />
									</td>

								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td width="863" align="center" style="font-size: 20px">
										��ѡ�����
										<select name="cateid" id="cateid" style="font-size: 17px">

											<option value='3'>
												ȫ��
											</option>
											<option value='0'>
												��Ӱ
											</option>
											<option value='1'>
												�ݳ���
											</option>
											<option value='2'>
												��������
											</option>

										</select>
									</td>

								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td width="863" align="center" style="font-size: 20px">
										��ѡ����У�
										<select name="city" id="city" style="font-size: 17px">
											<option value='quanguo'>
												ȫ��
											</option>
											<option value='shanghai'>
												�Ϻ�
											</option>
											<option value='beijing'>
												����
											</option>
											<option value='xian'>
												����
											</option>
											<option value='chengdu'>
												�ɶ�
											</option>
										</select>
									</td>

								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;
									</td>
								</tr>
								<tr width="863" align="center">
									<td>
										<input type="submit" value="����" style="font-size: 20px">
									</td>

								</tr>
							</table> </font>
					</form>


					<br/>
			</div>

			<div id="footer">
				��Ʊ�� www.ployticket.edu.cn
			</div>
			<!-- #footer -->
		</div>


	</body>
</html>
