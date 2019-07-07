<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>	
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>CBSL Hotel Management System</title>
		<link rel="stylesheet" href="css/layui.css">

</head>

<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<!-- *********************************************头部*************************************** -->
			<div class="layui-header">
				<div class="layui-logo">酒店管理系统</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->

				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="images/1.gif" class="layui-nav-img"> <%=session.getAttribute("name") %>
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="updatePwd.jsp" target="rightFrame">密码修改</a>
							</dd>
							<dd>
								<a href="">资料设置</a>
							</dd>
							<dd>
								<a href="">安全设置</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="">退出</a>
					</li>
				</ul>
			</div>
			
			<!-- *********************************************头部end*************************************** -->
			
			<!-- *********************************************左侧*************************************** -->
			<div class="layui-side layui-bg-black">
				<div class="layui-side-scroll">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree" lay-filter="test">
						 <li class="layui-nav-item layui-nav-itemed"> 
							<a class="" href="javascript:;">管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="hotels.jsp" target="rightFrame">酒店总览</a>
								</dd>
								<dd>
									<a href="hotelsInfo.jsp" target="rightFrame">酒店详细</a>
								</dd>
						
								<dd>
									<a href="addHotels.jsp" target="rightFrame">添加酒店</a>
								</dd>
								<dd>

							</dl>
					
						
						
						<li class="layui-nav-item">
							<a href="javascript:;">账户</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="user.jsp" target="rightFrame">用户管理</a>
								</dd>
								<dd>
								<!--  -->
									<a href=javascript:void(0)  onclick="updatePwd('修改密码',1)">修改密码</a>
								</dd>
							</dl>
						</li>
						
					</ul>
				</div>
			</div>


			<!-- *********************************************左侧end*************************************** -->

			<div class="layui-body" style="z-index: 0;">
				<!-- 内容主体区域 -->
				<div style="padding: 15px;">
				<!-- 内联框架 -->
					<iframe src="hotels.jsp" name="rightFrame" frameborder="0" width="100%" height="1200"></iframe>

				</div>
			</div>

			<div class="layui-footer">
				<!-- 底部固定区域 -->
				<p>详情请致电负责人Muson~~Phone Number： 15277086611</p>
			</div>
		</div>
		
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js">
		</script>
		<script type="text/javascript">
			//添加编辑弹出层
			function updatePwd(title, id) {
				$.jq_Panel({
					title: title,
					iframeWidth: 500,
					iframeHeight: 300,
					url: "updatePwd.jsp",
					btn: ['确定','关闭'],
				});
			}
			
			

		</script>
		<script src="js/layui.js"></script>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;

			});
		</script>
	</body>
</html>