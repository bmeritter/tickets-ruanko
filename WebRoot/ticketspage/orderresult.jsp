<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>欢迎光临[聚票网]</title>
		<meta name="keywords" content="商城,聚票,电影,演唱会,体育赛事" />
		<meta name="description" content="流行票务专卖，各种演唱会、体育赛事、电影等票。" />

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
						<a href="../ticketspage/index.jsp"><span>引页</span> </a>
					</li>
					<li>
						<a href="../userspage/userlogin.jsp"><span>首页</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchtickets.jsp"><span>购票</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchusedtickets.jsp"><span>二手票</span>
						</a>
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
				<table border="1" >

					<tr>


							订单查询：
					</tr>
					<tr>
					<td>
							订单描述

						</td>
						<td>
							用户名
						</td>
						<td>
							真实姓名
						</td>
						<td>
							地址
						</td>
						<td>
							电话号码
						</td>
						<td>
							描述
						</td>
						<td>
							支付类型
						</td>
						<td>
							价格
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
									<font color="red"><s:property value="price" />元 </font>
								</td>
								
							</tr>

						</s:iterator>
					</tr>
					<tr>
						<td width="150" rowspan="2">

							

						</td>
					</tr>
				</table>

							<a href="../userspage/userlogin.jsp" />返回
							</a>
				<br />
			</div>

			<div id="footer">
				聚票网 www.ployticket.edu.cn
			</div>
			<!-- #footer -->
		</div>


	</body>
</html>
