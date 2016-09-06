<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>欢迎光临[聚票网]</title>
		<meta name="keywords" content="商城,聚票,电影,演唱会,体育赛事" />
		<meta name="description" content="流行票务专卖，各种演唱会、体育赛事、电影等票。" />
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
						<a href="../ticketspage/index.jsp"><span>引页</span> </a>
					</li>
					<li>
						<a href="../userspage/userlogin.jsp"><span>首页</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchtickets.jsp"><span>购票</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchusedtickets.jsp"><span>二手票</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>注册</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>用户中心</span> </a>
					</li>
					<li>
						<a href="#"><span>品牌专卖</span> </a>
					</li>
					<li>
						<a href="#"><span>致谢</span> </a>
					</li>
					<li>
						<a href="#"><span class="last">优惠券</span> </a>
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
								.print("<a href='../userspage/userlogin.jsp'>登录</a>&nbsp;&nbsp;");
						out.print("<a href='../userspage/adduser.jsp'>注册</a>");
					} else {
				%>
				<form action="userLogout.action" method="post">
					<table>
						<tr>
							<td>
								欢迎:<%=session.getAttribute("login").toString()%>
								<%
									out
												.print("&nbsp;<a href='../ticketspage/addusedticket.jsp'>发布二手票</a>|&nbsp;");
										out
												.print("&nbsp;<a href='../ticketspage/searchorder.jsp'>查询订单</a>|&nbsp;");
								%>
								<input type="submit" value="退出" />
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
										用户名:
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
										真实姓名:
									</div>
								</td>
								<td width="87%" bgcolor="#FFFFFF">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input value="" name="telephone" type="text" />
									</label>
								</td>
							</tr>
							<tr>
								<div align="left">
								<td bgcolor="#FFFFFF">
									<div align="right">
										支付类别：
									</div>
								</td>
								<td bgcolor="#FFFFFF">

									<input type="radio" name="paytype" value="货到付款"
										checked="checked" />
									货到付款

									<input type="radio" name="paytype" value="在线支付" />
									在线支付

								</td>
								</div>
							</tr>

							<tr>
								<td bgcolor="#FFFFFF">
									<div align="right">
										内容
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									<textarea name="description" cols="40" rows="5" style="background: #BBFFEE"></textarea>
									<br />
									<span class="STYLE4">*<span class="STYLE3">必填
											最多255字符 </span> </span>
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
									<input name="submit" type="submit" value=提交
										onclick="return(confirm( 'are   your   sure ?')) " />
									<input name="submit2" type="reset" value="重置" />
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
				聚票网 www.ployticket.edu.cn
			</div>
			<!-- #footer -->
		</div>
	</body>
</html>
