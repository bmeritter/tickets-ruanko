<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>��ӭ����[��Ʊ��]</title>
		<meta name="keywords" content="�̳�,��Ʊ,��Ӱ,�ݳ���,��������" />
		<meta name="description" content="����Ʊ��ר���������ݳ��ᡢ�������¡���Ӱ��Ʊ��" />
		<link href="style/basic2.css" rel="stylesheet" type="text/css" />

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
					<form action="saveusedticket.action" method="post">
						<table width="450" border="0" align="center" cellspacing="1"
							bgcolor="#333333">
							<tr>
								<td height="22" colspan="2" bgcolor="white">
									&nbsp;


								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										����
									</div>
								</td>
								<td bgcolor="white">
									<input value="" name="title" type="text" />
								</td>
							</tr>
							<tr>
								<td width="20%" bgcolor="white">
									<div align="right">
										�û���
									</div>
								</td>
								<td width="80%" bgcolor="white">
									<input value="1" name="userid" type="text" />
									<span class="STYLE4">*</span><span class="STYLE3">����</span>
								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										QQ��
									</div>
								</td>
								<td bgcolor="white">
									<input value="" name="qq" type="text" />
								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										����:
									</div>
								</td>
								<td bgcolor="white">
									<label>
										<input value="" name="city" type="text" />
									</label>
								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										�۸�:
									</div>
								</td>
								<td bgcolor="white">
									<label>
										<input value="" name="price" type="text" />
									</label>
								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										ʱ��:
									</div>
								</td>
								<td bgcolor="white">
									<label>
										<input value="" name="deadline" type="text" />
									</label>
								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										�绰:
									</div>
								</td>
								<td bgcolor="white">
									<label>
										<input value="" name="telephone" type="text" />
									</label>
								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										���
									</div>
								</td>
								<td bgcolor="white">
									<input type="radio" name="cate" value="��Ӱ" align="middle"
										checked="checked">
										��Ӱ <input type="radio" name="cate" value="�ݳ���" align="middle" />
										�ݳ��� 
								</td>
							</tr>
							<tr>
								<td bgcolor="white" align="right">
									ͼƬ
								</td>
								<td bgcolor="white">

									<p>
										<input type="radio" name="ico" value="1.jpg" align="middle"
											checked="checked" />
										<img src="../ico/1.jpg" width="70" height="70" />
										<input type="radio" name="ico" value="2.jpg" align="middle" />
										<img src="../ico/2.jpg" width="70" height="70" />
										<input type="radio" name="ico" value="3.jpg" align="middle" />
										<img src="../ico/3.jpg" width="70" height="70" />
									</p>
									<p>
										<input type="radio" name="ico" value="4.jpg" align="middle" />
										<img src="../ico/4.jpg" width="70" height="70" />
										<input type="radio" name="ico" value="5.gif" align="middle" />
										<img src="../ico/5.gif" width="70" height="70" />
										<input type="radio" name="ico" value="6.gif" align="middle" />
										<img src="../ico/6.gif" width="70" height="70" />
									</p>
								</td>

							</tr>
							<tr>
								<td bgcolor="white">
									<div align="right">
										����
									</div>
								</td>
								<td bgcolor="white">
									<textarea name="description" cols="50" rows="5"></textarea>
									<br />
									<span class="STYLE4">*<span class="STYLE3">����
											���255�ַ� </span> </span>
								</td>
							</tr>
							<tr>
								<td bgcolor="white">
									&nbsp;


								</td>
								<td bgcolor="white">
									<input name="submit" type="submit" value=�ύ
										onclick="return(confirm( 'are   your   sure ')) " />
									<input name="submit2" type="reset" value="����" />
								</td>
							</tr>

						</table>
					</form>
				</center>
			</div>

		<br/>
		</div>
	
		<div id="footer">
			��Ʊ�� www.ployticket.edu.cn
		</div>
		<!-- #footer -->
		</div>
		
		
	</body>
</html>
