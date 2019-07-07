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
		<meta charset="UTF-8">
		<title></title>
		 <link rel="stylesheet" href="css/amazeui.min.css" />
		  <link rel="stylesheet" href="css/admin.css" />
		  <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
    <script>
       	
  /*   $(function () {
        $("img").attr('src',"images/img_hotels/1.jpg");
    });
     */
    </script>
	</head>
	<body>
		
		<div class="admin-content-body" >
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">酒店总览</strong> 
        </div>
      </div>

      <hr>

      <ul class="am-avg-sm-1 am-avg-md-3 am-avg-lg-6 am-margin gallery-list">
      
      <%
							     HotelsDao hotelsDao=new HotelsDao();
								List<Hotels> hList = hotelsDao.getAllHotels();
								 for(int i=0;i<hList.size();i++){ 
									 Hotels hotels=hList.get(i);
									 %> 
      
        <li>
          <a href="#">
         	<div style="height: 130px ;width: 210px; float: left; margin: 0 8px; " >
           <a href="<%= "hotelDetails.jsp?hid="+hotels.getHid()%>"> <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath+"images/"+hotels.getImg() %>"alt="" 
            style="width: 100%;height: 100%;"/></a>
        	</div>
            <div style=" margin: 0 8px; "   class="gallery-title"><%=hotels.gethName() %></div>
          </a>
        </li>
        
        <%
        }
        %>
    
    </div>

</body>
</html>