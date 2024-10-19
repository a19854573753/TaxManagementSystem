<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="uri" value="${pageContext.request.contextPath}" />

<script type="text/javascript">
var uri='${uri}';
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>税务管理系统</title>
<meta name="keywords" content="税务管理系统" /> 
<meta name="description" content="税务管理系统。" /> 
<meta name="Copyright" content="税务管理系统." />
<link href="${pageContext.request.contextPath}/static/admin/css/public.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/js/global.js"></script>
</head>

<body>
<div id="dcWrap">
 <div id="dcHead">
 <div id="head">
  <div class="logo"><a  href="#" style="color:white;position:relative;top:5px;left:30px;font-size:24px;">税务管理系统</a></div>
  <div class="nav">
 
   <ul class="navRight">
   
    
   
   
   
    <li class="M noLeft"><a href="JavaScript:void(0);">您好，${login.name}</a></li>
  <li class="M noLeft"><a href="JavaScript:void(0);"  onclick="alterPassword()">修改密码</a></li>
	
    <li class="noRight"><a href="${pageContext.request.contextPath}/commonapi/sys_logout">退出</a></li>
   </ul>
  </div>
 </div>
</div>
<!-- dcHead 结束 --> <div id="dcLeft"><div id="menu">

 <ul>
  <li style="background-color:#dddddd"><a href="javascript:void(0)"><em>角色管理 </em></a></li>
 </ul>
 <ul>
  
  <li>
  
   <a  data-name="办税人员管理"    data-href="${pageContext.request.contextPath}/admin/staff_info" href="javascript:void(0)" onclick="goPage(this)" style="text-align:center"><em>办税人员管理  </em></a>
   
  </li>
  
  <li>
  
   <a  data-name="用户管理"    data-href="${pageContext.request.contextPath}/admin/user_info" href="javascript:void(0)" onclick="goPage(this)" style="text-align:center"><em>用户管理  </em></a>
   
  </li>
  
 </ul><ul>
  <li style="background-color:#dddddd"><a href="javascript:void(0)"><em>城市管理 </em></a></li>
 </ul>
 <ul>
  
  <li>
  
   <a  data-name="城市管理"    data-href="${pageContext.request.contextPath}/admin/city_info" href="javascript:void(0)" onclick="goPage(this)" style="text-align:center"><em>城市管理  </em></a>
   
  </li>
  
 </ul><ul>
  <li style="background-color:#dddddd"><a href="javascript:void(0)"><em>税务类型 </em></a></li>
 </ul>
 <ul>
  
  <li>
  
   <a  data-name="税务类型管理"    data-href="${pageContext.request.contextPath}/admin/tax_type" href="javascript:void(0)" onclick="goPage(this)" style="text-align:center"><em>税务类型管理  </em></a>
   
  </li>
  
 </ul><ul>
  <li style="background-color:#dddddd"><a href="javascript:void(0)"><em>公示信息 </em></a></li>
 </ul>
 <ul>
  
  <li>
  
   <a  data-name="公告"    data-href="${pageContext.request.contextPath}/admin/notice_info" href="javascript:void(0)" onclick="goPage(this)" style="text-align:center"><em>公告  </em></a>
   
  </li>
  
  <li>
  
   <a  data-name="法规政策"    data-href="${pageContext.request.contextPath}/admin/zc_info" href="javascript:void(0)" onclick="goPage(this)" style="text-align:center"><em>法规政策  </em></a>
   
  </li>
  
  <li>
  
   <a  data-name="违规公示"    data-href="${pageContext.request.contextPath}/admin/wg_info" href="javascript:void(0)" onclick="goPage(this)" style="text-align:center"><em>违规公示  </em></a>
   
  </li>
  
 </ul>


   
  
</div></div>
 <div id="dcMain"> 
    <iframe src="${pageContext.request.contextPath}/admin/staff_info" frameborder="0" id="iframDiv" style="padding: 15px;min-height:850px;width:100%"></iframe>
 </div>
 

 </div>

<script type="text/javascript">

	$(function(){
		
	});




	


function goPage(e){
	var url = $(e).attr("data-href");
	$('#iframDiv').attr('src', url);
}

function alterPassword(){
	 $('#iframDiv').attr('src', "${pageContext.request.contextPath}/commonapi/alterPassword");
}




</script>


</body>
</html>