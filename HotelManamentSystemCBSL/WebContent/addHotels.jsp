<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<head>
		<meta charset="UTF-8">
		<title>酒店添加</title>
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
          <strong class="am-text-primary am-text-lg">添加酒店</strong> 
        </div>
      </div>

      <hr>
		<!-- **********************************头部end****************************************************** -->
		
		
		<!-- content start -->
		<div style="overflow: hidden;" class="admin-content">  <!-- 此处ouverflow隐藏了页面滚动条 -->
			<div style="" class="admin-content-body">
				<div style="" class="am-g">
					<form id="hfrom" action="addHotelServlet" class="am-form am-form-horizontal"
						 method="post"
						style="padding-top:30px;" data-am-validator>
						
						<div style="" class="am-form-group">
							<label for="hotel-Name" class="am-u-sm-3 am-form-label">
							酒店名称 </label>
							<div style="" class="am-u-sm-9">
								<input  type="text" id="doc-vld-pwd-1" required placeholder="请输入酒店名称" 
									name="hName"> <small>输入酒店名称</small>
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-hAddress" class="am-u-sm-3 am-form-label">
								酒店地址</label>
							<div style="" class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-2" required placeholder="请输入酒店地址" 
									name="hAddress"  data-equal-to="#doc-vld-pwd-1"  required> <small>输入酒店地址</small>
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-hprincipal" class="am-u-sm-3 am-form-label">
								负责人</label>
							<div style="" class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-2" required placeholder="输入负责人姓名" 
									name="hprincipal"  data-equal-to="#doc-vld-pwd-1"  required> <small>输入
								负责人姓名</small>
							</div>
						</div>
						
						
						<div style="" class="am-form-group">
							<label for="hotel-hPhoneNumber" class="am-u-sm-3 am-form-label">
								手机号</label>
							<div style="" class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-2" required placeholder="请输入负责人联系方式" 
									name="hPhoneNumber"  data-equal-to="#doc-vld-pwd-1"  required> <small>输入负责人联系方式</small>
							</div>
						</div>
						
						<div style="" class="am-form-group">
							<label for="hotel-img" class="am-u-sm-3 am-form-label">
								门店照片</label>
							<div style="" class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-2" required placeholder="上传门店照片" 
									name="hImg"  data-equal-to="#doc-vld-pwd-1"  required> <small>上传门店照片</small>
							</div>
						</div>
						
						
						<div style="" class="am-form-group">
							<div style="  width: 120px;" class="am-u-sm-9 am-u-sm-push-3">
								<input onclick="close1()" style="width: 120px" type="submit" class="am-btn am-btn-success" value="添加" />
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
	<script type="text/javascript" src="myplugs/js/plugs.js">
	</script>
	
	  <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
	<script type="text/javascript">
	
	var formData = $('form[id="hfrom"]').serialize();
	var formDataArr = $('form[id="hfrom"]').serializeArray();

	console.dir(formData);      //通过$("#form").serialize()可以获取到序列化的表单值字符串。


	
	</script>	
	

	
	
	
	
	
	

	</body>
</html>