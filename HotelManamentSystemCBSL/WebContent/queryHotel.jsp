<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@page import="com.gem.pojo.Hotels"%>
<%@page import="java.util.List"%>
<%@page import="com.gem.dao.HotelsDao"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>酒店管理</title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	
		
</head>
<body>
<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">酒店管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" onclick="addHotels(1)"  class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
					<form action="queryHotel.jsp">
				<div class="am-u-sm-12 am-u-md-3" style="float: right;">
					<div class="am-input-group am-input-group-sm">
						<input name="Content_search" type="text" class="am-form-field" placeholder="请输入酒店名称">
						<span class="am-input-group-btn">
                        <a href="queryHotel.jsp">     <button class="am-btn am-btn-default" type="summit">搜索</button> </a>
          				</span>
					</div>
				</div>
				</form>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<th class="table-id">编号</th>
									<th class="table-title">酒店名称</th>
									<th class="table-type">地址</th>
									<th class="table-author am-hide-sm-only">负责人</th>
									 <th class="table-date am-hide-sm-only">电话</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
					
							<%
								String content = request.getParameter("Content_search");
							     HotelsDao hotelsDao=new HotelsDao();
								List<Hotels> hList = hotelsDao.queryHotels(content);
								int records = 0;//记录条数
								 for(int i=0;i<hList.size();i++){ 
									 Hotels hotels=hList.get(i);
									 records++;
									 %> 
								<tr>
									<td><input type="checkbox"></td>
									<td name="Hid" ><%=hotels.getHid() %></td> <!-- 酒店ID -->
									<td>
										<a href="#"><%=hotels.gethName() %></a><!-- 酒店名称 -->
									</td>
									<td><%=hotels.gethAddress() %></td><!-- 酒店地址 -->
									<td class="am-hide-sm-only"><%=hotels.getPrincipal()%></td><!-- 酒店负责人 -->
									 <td class="am-hide-sm-only"><%=hotels.gethPhoneNumber()%></td> <!-- 负责人练习电话 -->
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
											<!-- onclick="editHotels(1)"  -->
										<%-- 	<a href="<%="editHotels.jsp?hid="+hotels.getHid()%>"></a>  --%>
										 <!-- onclick="editHotels()" -->
												<a href="<%="editHotels.jsp?hid="+hotels.getHid()%>"> <button  type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary">
												 <span class="am-icon-pencil-square-o"></span> 编辑</button></a>
												 
												<!-- <a href="<%=basePath+"editHotels.jsp?hid="+hotels.getHid()%>">  -->
												
												<a href="<%= "deleteHotelAction.jsp?h_id="+hotels.getHid()%>"><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="del()"><span class="am-icon-trash-o"> 删除</span></button></a>
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
							共<%=records %>条记录
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
		
			
					<!-- 点击编辑按钮，弹出酒店编辑页面 -->
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>

		<script type="text/javascript">	
		//添加编辑弹出层
			function addHotels(id) {		
				$.jq_Panel({
				   title :"添加", 			
					iframeWidth: 500,
					iframeHeight: 600,
					url:"addHotels.jsp"
				});		
		};
		        
		</script>
		
		<script src="js/layui.js"></script>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;

			});
		</script>
		<script type="text/javascript">
		function del() {
		if(!confirm("确认要删除？")) {
			window.event.returnValue = false;
			}
		}
		</script>
		
		
</body>
</html>