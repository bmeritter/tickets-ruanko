<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>��ӭ����[��Ʊ��]</title>
		<meta name="keywords" content="�̳�,��Ʊ,��Ӱ,�ݳ���,��������" />
		<meta name="description" content="����Ʊ��ר���������ݳ��ᡢ�������¡���Ӱ��Ʊ��" />

		<link href="style/basic4.css" rel="stylesheet" type="text/css" />

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
						<a href="../ticketspage/searchusedtickets.jsp"><span>����Ʊ</span>
						</a>
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
				<table border="1" >

					<tr>


							������ѯ��
					</tr>
					<tr>
					<td>
							��������

						</td>
						<td>
							�û���
						</td>
						<td>
							��ʵ����
						</td>
						<td>
							��ַ
						</td>
						<td>
							�绰����
						</td>
						<td>
							����
						</td>
						<td>
							֧������
						</td>
						<td>
							�۸�
						</td>
						

					</tr>
					<tr>
						<s:iterator id="order" value="order">


							<tr>
							<td>

									<s:property value="tickettitle" />

								</td>
								<td>
									<s:property value="username" />
								</td>
								<td>
									<s:property value="realname" />
								</td>
								<td>
									<s:property value="address" />
								</td>
								<td>
									<s:property value="telephone" />
								</td>
								<td>
									<s:property value="description" />
								</td>
								<td>
									<s:property value="paytype" />
								</td>
								<td>
									<font color="red"><s:property value="price" />Ԫ </font>
								</td>
								
							</tr>

						</s:iterator>
					</tr>
					<tr>
						<td width="150" rowspan="2">

							

						</td>
					</tr>
				</table>

							<a href="../userspage/userlogin.jsp" />����
							</a>
				<br />
			</div>

			<div id="footer">
				��Ʊ�� www.ployticket.edu.cn
			</div>
			<!-- #footer -->
		</div>


	</body>
</html>
