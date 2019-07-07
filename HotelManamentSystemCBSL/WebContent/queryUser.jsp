<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="com.gem.pojo.User"%>
<%@page import="java.util.List"%>
<%@page import="com.gem.dao.UserDao"%>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户管理</title>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>

	<body>
	
				<!--************************头部**************************  -->
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong><small></small></div>
			</div>

			<hr>
				<!--************************头部end**************************  -->
				
				
			<div class="am-g">			
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
								
				<div class="am-u-sm-12 am-u-md-3">
				</div>
				
			<!-- 搜索功能bymuson -->
				<form action="queryUser.jsp">
				<div class="am-u-sm-12 am-u-md-3" style="float: right;">
					<div class="am-input-group am-input-group-sm">
						<input name="search_user"  type="text" class="am-form-field" placeholder="请输入用户名">
						<span class="am-input-group-btn">
           					<a href="queryUser.jsp"><button class="am-btn am-btn-default" type="summit">搜索</button></a>
                        </span>
					</div>
				</div>
				</form>	
			
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>							
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<th class="table-id">ID</th>
									<th class="table-title">姓名</th>
									<th class="table-type">用户名</th>
									<th class="table-author am-hide-sm-only">密码</th>
									<th class="table-author am-hide-sm-only">邮箱</th>
									<th class="table-author am-hide-sm-only">手机号</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
							
								<%
								
								 String content = request.getParameter("search_user");
								System.out.print(content);
							     UserDao usersDao=new UserDao();
								List<User> uList = usersDao.queryUser(content);
								int records = 0;//记录条数
								 for(int i=0;i<uList.size();i++){ 
									 User users=uList.get(i);
									 records++;
									 %> 
								<tr>
									<td><input type="checkbox"></td>
									<td><%=users.getUid() %></td>
									<td>
										<a href="#"><%=users.getuName() %></a>
									</td>
									<td><%=users.getUsername() %></td>
									<td class="am-hide-sm-only"><%=users.getPassword() %></td>
									<td class="am-hide-sm-only"><%=users.getEmail() %></td>
									<td class="am-hide-sm-only"><%=users.getuPhoneNumber()%></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<a href="<%="editUser.jsp?userId="+users.getUid()%>"><button type="button"  class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o">
												</span> 编辑</button></a>
												<a href="<%= "deleteUserAction.jsp?u_id="+users.getUid()%>"><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="del()"><span class="am-icon-trash-o"></span>删除</button></a>
											</div>
										</div>
									</td>
								</tr>	
								<%
								}
								%>
													
							</tbody>
						</table>
						<div class="am-cf">
							共 <%=records %> 条记录
							<div class="am-fr">
								<ul class="am-pagination">
									<li class="am-disabled">
										<a href="#">«</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">»</a>
									</li>
								</ul>
							</div>
						</div>
						<hr>
					</form>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
		function del() {
		if(!confirm("确认要删除？")) {
			window.event.returnValue = false;
			}
		}
		</script>
		
	</body>
	
</html>