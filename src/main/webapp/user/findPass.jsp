<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>

    
    <title>My JSP 'findPass.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="assets/js/jQuery-2.2.2.js"></script>
	
	<link rel="shortcut icon" type="text/css" href="/HotelManagement/user/assets/images/favicon/favicon.png">
    <link rel="stylesheet" type="text/css" href="/HotelManagement/user/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="/HotelManagement/user/assets/css/responsive.css">
	<style>
	#main{
		position: fixed;
		left:25%;
		top:20%;
		width: 50%;
		height:60%;
		border:1px solid black
	}
	.update{
		float:left;
	}
	.f_para{
		line-height:50px;
		margin-top:30px;
		width:99%;
		height:50px;
	}	
	</style>
  </head>
  <body>
   <header class="header">
  <div class="header-bottom">
        <nav class="navbar navbar-universal navbar-custom">
          <div class="container">
            <div class="row">
              <div class="col-lg-3">
                <div class="logo"><a href="/HotelManagement/roomtype.action" class="navbar-brand page-scroll"><img src="/HotelManagement/user/assets/images/logo/logo.png" alt="logo"/></a></div>
              </div>
              <div class="col-lg-9">
                <div class="navbar-header">
                  <button type="button" data-toggle="collapse" data-target=".navbar-main-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse navbar-main-collapse">
                  <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="/HotelManagement/roomtype.action">Home</a></li>
                    <li><a href="/HotelManagement/comment.action">About Us</a></li>
                    <li><a href="/HotelManagement/user/contacts.jsp">Contacts</a></li>
                    <li><a href="/HotelManagement/ReserveInfo.action?page=1">Orders</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </nav>
      </div>
       </header>
    <div id="main" style="background-image: url('/HotelManagement/user/assets/img/hotel.jpg');">
      <%Object account=session.getAttribute("account");
					if(account==null){%>
    	<div class="f_para">
    		<div style="width: 150px;text-align: center;float: left;margin-left: 5%;font-weight: bold;font-size: 20px">Tel:</div>
    		<div ><input id="tel" style="margin-top: 13px;margin-left:5px;height: 30px" type="text"></div>
    	</div>
    	 <%}%>
    	 <div  class="f_para" >
    		<div style="width: 150px;text-align: center;float: left;margin-left: 5%;font-weight: bold;font-size: 20px">Your Pass:</div>
    		<div><input style="margin-top: 13px;margin-left:5px;height:30px" type="password" id="pass"></div>
    	</div>
		<div  class="f_para">
			<div class="update"><input type="button" style="width: 150px;margin-left:20px;margin-left: 5%;font-weight: bold;" onclick="getCode()" value="获取验证码"></div>
			<div class="update"><input  style="margin-top: 13px;margin-left:40px;height:30px;" id="code"></div>
		</div>
    	<div style="width: 100%;text-align: center;"><input type="submit" onclick="updatePass()" style="width: 150px;height: 50px;margin: 0 auto;" value="update pass"></div>
    	<div id="hint" style="margin-left:100px;font-weight: bolder;font-size: 20px;color: red;"></div>
	</div>
  </body>
<script type="text/javascript" src="assets/js/private/register.js"></script>
<script type="text/javascript" src="assets/js/private/aes.js"></script>
<script type="text/javascript" src="assets/js/private/pad-zeropadding.js"></script>
<script type="text/javascript" src="assets/js/private/secret.js"></script>
  <script type="text/javascript">
  	function getCode(){
  		var account=encr($("#tel").val());
		$.ajax({
			url:"/HotelManagement/changePassCode.action",
			type:"post",
			dataType:"json",
			data:{
				tel:account,
			},
			success:function(data){	
				$("#hint").html(data);
			}
		});
	}
	function updatePass(){
	var account=encr($("#tel").val());
	var pass=encr($("#pass").val());
	var code=encr($("#code").val());
		$.ajax({
			url:"/HotelManagement/changePass.action",
			type:"post",
			dataType:"json",
			data:{
				tel:account,
				pass:pass,
				code:code,
			},
			success:function(data){
			$("#hint").html(data);
				if(data=="Password updated successfully"){
					window.location.href="/HotelManagement/roomtype.action";
				}else{
					
				}
			}
		});
	}
  </script>
  
</html>
