<%@page import="javafx.scene.control.Alert"%>
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
	<head>
		<meta charset="UTF-8">
		<title>酒店详情</title>
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
          <strong class="am-text-primary am-text-lg">酒店信息</strong> 
        </div>
         <div style="float: right;" class="am-fl am-cf">
         <!-- am-btn am-btn-default  am-btn am-btn-success -->
          <a href="hotels.jsp"><button id="returnbtn" class=" am-btn am-btn-success " type="button" ><img src="" class="layui-nav-img"> <%="<< " %>返回 </button></a>
        </div>
      </div>

      <hr>
		<!-- **********************************头部end****************************************************** -->
		
		
	 <%
        HotelsDao dao=new HotelsDao();
    	int hid = Integer.parseInt(request.getParameter("hid")); 
      	Hotels hotels=dao.getHotel(hid);  	  
     %>
		
	
		<!-- content start -->
		<!-- 酒店图片 -->
		<div style="height: 350px ;width:500px; float:left; margin: 20px 50px; " >
          <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath+"images/"+hotels.getImg() %>"alt="" 
           style="width: 100%;height: 100%;"/>
        </div>
        	
        	
		<div style="overflow: hidden; margin-left: 100px;" class="admin-content" >  <!-- 此处ouverflow隐藏了页面滚动条 -->

					
			<div style="" class="admin-content-body">
				<div style="" class="am-g">
		
					<form id="hfrom" class="am-form am-form-horizontal"
						 method="post"
						style="padding-top:30px;" data-am-validator action="updateHotelServlet">
						
	
						
						<div style="" class="am-form-group">
							<label for="hotel-Name" class="am-u-sm-3 am-form-label">
							酒店编号 </label>
							<div style="" class="am-u-sm-9">
								<input readonly="readonly" type="text" id="doc-vld-pwd-1" required placeholder="" 
									name="hid" value="<%=hotels.getHid()%>">
							</div>
						</div>
						
						
						<div style="" class="am-form-group">
							<label for="hotel-Name" class="am-u-sm-3 am-form-label">
							酒店名称 </label>
							<div style="" class="am-u-sm-9">
								<input  readonly="readonly" type="text" id="doc-vld-pwd-1" required placeholder="请输入酒店名称" 
									name="hname" value="<%=hotels.gethName()%>"> 
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-hAddress" class="am-u-sm-3 am-form-label">
								酒店地址</label>
							<div style="" class="am-u-sm-9">
								<input readonly="readonly" value="<%=hotels.gethAddress()%>" type="text" id="doc-vld-pwd-2" required placeholder="请输入酒店地址" 
									name="hAddress"  data-equal-to="#doc-vld-pwd-1"  required>
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-hprincipal" class="am-u-sm-3 am-form-label">
								负责人</label>
							<div style="" class="am-u-sm-9">
								<input  readonly="readonly" value="<%=hotels.getPrincipal()%> "type="text" id="doc-vld-pwd-2" required placeholder="输入负责人姓名" 
									name="hprincipal"  data-equal-to="#doc-vld-pwd-1"  required> 
							</div>
						</div>
						
						
						<div style="" class="am-form-group">
							<label for="hotel-hPhoneNumber" class="am-u-sm-3 am-form-label">
								手机号</label>
							<div style="" class="am-u-sm-9">
								<input readonly="readonly" value="<%=hotels.gethPhoneNumber()%>" type="text" id="doc-vld-pwd-2" required placeholder="请输入负责人联系方式" 
									name="hPhoneNumber"  data-equal-to="#doc-vld-pwd-1"  required> 
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-img" class="am-u-sm-3 am-form-label">
								照片url</label>
							<div style="" class="am-u-sm-9">
								<input readonly="readonly" value="<%=hotels.getImg()%> " type="text" id="doc-vld-pwd-2" required placeholder="上传门店照片" 
									name="hImg"  data-equal-to="#doc-vld-pwd-1"  required> 
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