<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>酒店管理系统</title>
<link rel="stylesheet" href="css/index.css" />
 <script src="js/index.js" type="text/javascript"></script>
</head>
<body onload="init()">
	<div id="top">
		<div id="topl">
			<h1>酒店管理系统</h1>
		</div>
		<div id="topr">
			<a href="#" onclick="openLogin()" id="a1">登录</a>
			<a href="#" onclick="openRegister()" id="a1">注册</a>
		</div>
	</div>
	<div id="body">
		<a id="next" onclick="nextImg()" href="javascript:;" >></a>
        <a id="prev" onclick="preImg()" href="javascript:;"><</a>
		<img alt="" src="images/banner1.jpg" id="myImg">
	</div>
	<div id="login">
		<hr />
		<form name="form1" method="post" action="loginServlet" onsubmit="return checkLogin()">
		<p style="text-align: center;font-size: 30px;">登&nbsp;&nbsp;录</p>
		<hr style="width: 300px;"/>
			<table id="loginTable">
				<tr>
					<td id="td1" colspan="2">
						<input type="text" name="username"  placeholder="用户名" >
					</td>
				</tr>
				<tr>
					<td id="td1" colspan="2">
						<input type="password" name="password"  placeholder="密码" >
					</td>
				</tr>
				<tr>
					<td id="td2">
						<input type="submit" value="登&nbsp;&nbsp;录">
					</td>
					<td id="td2">
						<input type="button" value="关&nbsp;&nbsp;闭" onclick="closeLogin()">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<a href="#" onclick="openRegister()">没有账号？去注册...</a>
					</td>
				</tr>
			</table>
			<hr style="width: 300px;"/>
			<br>
			<br>
			<br>
			<br>
			<hr />
		</form>
	</div>
	<div id="register">
	<form action="registerServlet" onsubmit="return checkRegister()" method="post">
		
		<table id="table2">
			<tr><td colspan="2" align="center" id="td1">注册</td></tr>
			<tr>
				<td align="right">姓名：</td><td align="left" class="td3"><input type="text" id="Rname" name="Rname" placeholder="您的姓名" onblur="checkRname(this)"/></td>
			</tr>
			<tr><td colspan="2" align="center"><font color="red" id="RnameMsg"></font></td></tr>
			<tr>
				<td align="right">账号：</td><td align="left" class="td3"><input type="text" id="Rusername" name="Rusername" placeholder="3-8位" onblur="checkUsername(this)"/></td>
			</tr>
			<tr><td colspan="2" align="center"><font color="red" id="usernameMsg"></font></td></tr>
			<tr>
				<td align="right">邮箱：</td><td align="left" class="td3"><input type="text" id="Remail" name="Remail" placeholder="xxxxx@xx.com/cn" onblur="checkEmail(this)"/></td>
			</tr>
			<tr><td colspan="2" align="center"><font color="red" id="emailMsg"></font></td></tr>
			<tr>
				<td align="right">电话号码：</td><td align="left" class="td3"><input onkeyup="value=value.replace(/[^\d]/g,'')" type="text" id="Rphone" name="Rphone" placeholder="156xxxx2011" onblur="checkPhone(this)"/></td>
			</tr>
			<tr><td colspan="2" align="center"><font color="red" id="RphoneMsg"></font></td></tr>
			<tr>
				<td align="right">密码：</td><td align="left" class="td3"><input type="password" id="Rpassword" name="Rpassword" onkeyup="value=value.replace(/[\W]/g,'')" placeholder="6-10位字母、数字" onblur="checkPassword()"/></td>
			</tr>
			<tr><td colspan="2" align="center"><font color="red" id="passwordMsg"></font></td></tr>
			<tr>
				<td align="right">确认密码：</td><td align="left" class="td3"><input type="password" id="Rrepassword" placeholder="请再输一遍密码" onblur="checkPassword()"/></td>
			</tr>
			<tr>
				<td id="td2" align="center"  colspan="2">
					<input type="submit" name="submit" value="注&nbsp;&nbsp;&nbsp;册"/>
					<input type="button" value="关&nbsp;&nbsp;闭" onclick="closeRegister()">
				</td>
			</tr>
		</table >
	</form>
</div>
</body>
</html>