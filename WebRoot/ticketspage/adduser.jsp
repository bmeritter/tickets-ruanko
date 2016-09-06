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
				<form action="userRegist.action" method="post">

					<table>
						<tr>
							<td>
								用户名
							</td>
							<td>

								<input type="text" name="username">
							</td>
						</tr>
						<tr>
							<td>
								密码
							</td>
							<td>

								<input type="password" name="password">
							</td>
						</tr>
						<tr>
							<td>
								重新输入密码
							</td>
							<td>

								<input type="password" name="">
							</td>
						</tr>
						<tr>
							<td>
								联系方式
							</td>
							<td>

								<input type="text" name="telephone">
							</td>
						</tr>

						<tr>
							<td>
								年龄
							</td>
							<td>

								<input type="text" name="age">
							</td>
						</tr>
						<tr>
							<td>
								<s:fielderror>e-mail</s:fielderror>
							</td>
							<td>

								<input type="text" name="email">
							</td>
						</tr>
						<tr>
							<td>
								住址
							</td>
							<td>

								<input type="text" name="address">
							</td>
						</tr>
						<tr>
							<td>
								生日
							</td>
							<td>

								<input type="text" name="birth">
							</td>
						</tr>
						<tr>
							<td>
								<input type="reset" name="res" value="重置" >
							</td>
							<td>
								<input type="submit" name="sub" value="确定">
							</td>

						</tr>
						<tr>
							<s:fielderror></s:fielderror>
						</tr>
					</table>



				</form>
			
</div>

			<div id="footer">
				聚票网 www.ployticket.edu.cn
			</div>
			<!-- #footer -->
		</div>
	</body>
</html>
