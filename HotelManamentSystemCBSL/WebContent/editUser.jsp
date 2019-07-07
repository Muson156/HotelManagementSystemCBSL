<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@page import="com.gem.pojo.User"%>
<%@page import="java.util.List"%>
<%@page import="com.gem.dao.UserDao"%>
<!DOCTYPE html>
<html>
<head>
	<head>
		<meta charset="UTF-8">
		<title>信息修改</title>
	    <link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
		<style>
			.admin-main{
				padding-top: 0px;
			}
		</style>
	</head>

	<body>
	
		<!-- **********************************头部****************************************************** -->
			
			
		 <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">信息修改</strong> 
        </div>
      </div>

      <hr>
		<!-- **********************************头部end****************************************************** -->
		
		
		     <%
        UserDao dao=new UserDao();
  int userId = Integer.parseInt(request.getParameter("userId"));  

      User user=dao.getUSer(userId);
     %>
		
	
		<!-- content start -->
		<div style="overflow: hidden;" class="admin-content">  <!-- 此处ouverflow隐藏了页面滚动条 -->
			<div style="" class="admin-content-body">
				<div style="" class="am-g">
					<form id="hfrom" class="am-form am-form-horizontal"
						 method="post"
						style="padding-top:30px;" data-am-validator action="updateUserServlet">
						
						<div style="" class="am-form-group">
							<label for="hotel-Name" class="am-u-sm-3 am-form-label">
							ID编号 </label>
							<div style="" class="am-u-sm-9">
								<input readonly="readonly" type="text" id="doc-vld-pwd-1" required placeholder="" 
									name="userId" value="<%=user.getUid()%>"> <small>ID</small>
							</div>
						</div>
						
						
						<div style="" class="am-form-group">
							<label for="hotel-Name" class="am-u-sm-3 am-form-label">
							姓名 </label>
							<div style="" class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-1" required placeholder="请输入姓名" 
									name="uName" value="<%=user.getuName()%>"> <small>Name</small>
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-hAddress" class="am-u-sm-3 am-form-label">
								用户名</label>
							<div style="" class="am-u-sm-9">
								<input value="<%=user.getUsername()%>" type="text" id="doc-vld-pwd-2" required placeholder="请输入用户名" 
									name="userName"  data-equal-to="#doc-vld-pwd-1"  required> <small>输入用户名</small>
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-hprincipal" class="am-u-sm-3 am-form-label">
								密码</label>
							<div style="" class="am-u-sm-9">
								<input  value="<%=user.getPassword()%> "type="text" id="doc-vld-pwd-2" required placeholder="请输入密码" 
									name="password"  data-equal-to="#doc-vld-pwd-1"  required> <small>password</small>
							</div>
						</div>
						
						
						<div style="" class="am-form-group">
							<label for="hotel-hPhoneNumber" class="am-u-sm-3 am-form-label">
								邮箱</label>
							<div style="" class="am-u-sm-9">
								<input value="<%=user.getEmail()%>" type="text" id="doc-vld-pwd-2" required placeholder="请输入邮箱" 
									name="email"  data-equal-to="#doc-vld-pwd-1"  required> <small>输入负责人联系方式</small>
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-img" class="am-u-sm-3 am-form-label">
								手机号</label>
							<div style="" class="am-u-sm-9">
								<input value="<%=user.getuPhoneNumber()%> " type="text" id="doc-vld-pwd-2" required placeholder="请输入手机号" 
									name="userPhoneNumber"  data-equal-to="#doc-vld-pwd-1"  required> <small>phone number</small>
							</div>
						</div>
						
						
						<div style="" class="am-form-group">
							<div style="  width: 120px;" class="am-u-sm-9 am-u-sm-push-3">
								<input  style="width: 120px" type="submit" class="am-btn am-btn-success" value="更新" />
							</div>
							<div style=" "  class="am-u-sm-9 am-u-sm-push-3">
								<input  style="width: 120px"  type="reset" class="am-btn am-btn-success" value="重置" />
							</div>
						</div>
					</form>
					
				</div>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript"
		src="assets/js/libs/jquery-1.10.2.min.js">
	</script>
	
	<script type="text/javascript" src="myplugs/js/plugs.js">	</script>

	
	<script src="js/jquery-3.4.1.js" type="text/javascript"></script>
	<script type="text/javascript">
		
	</script>	
	
	</body>
</html>