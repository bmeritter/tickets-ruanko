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
		<link href="css/addusedticket.css" rel="stylesheet" type="text/css">
		<title>二手票发布</title>
	</head>
	<body>
		<form action="saveusedticket.action" method="post">
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
							主题
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input value="" name="title" type="text" />
					</td>
				</tr>
				<tr>
					<td width="13%" bgcolor="#FFFFFF">
						<div align="right">
							用户号
						</div>
					</td>
					<td width="87%" bgcolor="#FFFFFF">
						<input value="1" name="userid" type="text" />
						<span class="STYLE4">*</span><span class="STYLE3">必填</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							QQ：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input value="" name="qq" type="text" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							城市:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<label>
							<input value="" name="city" type="text" />
						</label>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							价格:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<label>
							<input value="" name="price" type="text" />
						</label>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							时间:
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<label>
							<input value="" name="deadline" type="text" />
						</label>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right">
							电话:
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
							类别：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input type="radio" name="cate" value="电影" align="middle"
							checked="checked">
						电影
						<input type="radio" name="cate" value="演唱会" align="middle" />
						演唱会
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" align="right">
						图片
					</td>
					<td bgcolor="#FFFFFF">

						<p>
							<input type="radio" name="ico" value="1.jpg" align="middle"
								checked="checked" />
							<img src="ico/1.jpg" width="70" height="70" />
							<input type="radio" name="ico" value="2.jpg" align="middle" />
							<img src="ico/2.jpg" width="70" height="70" />
							<input type="radio" name="ico" value="3.jpg" align="middle" />
							<img src="ico/3.jpg" width="70" height="70" />
						</p>
						<p>
							<input type="radio" name="ico" value="4.jpg" align="middle" />
							<img src="ico/4.jpg" width="70" height="70" />
							<input type="radio" name="ico" value="5.gif" align="middle" />
							<img src="ico/5.gif" width="70" height="70" />
							<input type="radio" name="ico" value="6.gif" align="middle" />
							<img src="ico/6.gif" width="70" height="70" />
						</p>
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
	</body>
</html>