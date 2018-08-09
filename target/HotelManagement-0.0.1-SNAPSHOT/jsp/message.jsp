<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="/HotelManagement/js/jquery-3.3.1.js"></script>
    <title>My JSP 'message.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  请输入手机号码：<input type="text" id="phone" placeholder="手机号码">
  <input type="text" id="code" placeholder="请输入验证码"><button onclick="toSend()">发送验证码</button>
  </body>
  <script type="text/javascript">
  	function toSend(){
  	alert("发送验证码");
  		var telephone=$("#phone").val();
  		$.ajax({
  			url: "/HotelManagement/register.action",
  			type: "post",
  			data: "phoneNumber="+telephone,
  			dataTypes: "json",
  			async:true,
  			success: function(data){
  				
  			}
  		});
  	}
  </script>
</html>
