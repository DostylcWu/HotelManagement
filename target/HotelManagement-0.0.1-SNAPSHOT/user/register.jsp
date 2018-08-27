<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" type="text/css" href="/HotelManagement/user/assets/images/favicon/favicon.png">
    <link rel="stylesheet" type="text/css" href="/HotelManagement/user/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="/HotelManagement/user/assets/css/responsive.css">
	<script type="text/javascript" src="assets/js/jQuery-2.2.2.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style>

		a{
			text-decoration: none;
		}
        #back{
            margin-top: 60px;
        }
        #back img{
            width: 100%;
        }
        #registerMain{
            position: fixed;
            left: 100px;
            top: 120px;
            width: 450px;
            height: 575px;
            background-color:rgba(255,255,255,0.9);
            border-radius: 5px;
        }
        #registerHead{
            width: 100%;
            height: 70px;
            line-height: 70px;
            margin: auto;
            font-size: 24px;
            text-align: center;
        }
        #registerBody{
            width: 100%;
            height:370px;
            margin: auto;
        }
        .bodyParameter{
            width: 100%;
            height:60px;
            margin: auto;
        }
        .bodyParameter div{
            float: left;
            line-height: 60px;
        }
        .paraName{
            width: 70px;
            margin-left: 30px;
            font-size: 18px;
        }
        .paraValue{
            width: 210px;
            margin-left: 10px;
            font-size: 18px;
        
        }
        .paraValue input{
            width: 210px;
            height: 22px;
            font-size: 10px;
           	margin-top: 21px;
        }
        .paraHint{
            width: 130px;
            font-size: 11px;
            text-align: center;
        }
        #hint1{
            height: 25px;
            background-color:rgba(20,255,255,0.5);
            margin-top: 20px;
            margin-left:10px;
            line-height: 25px;
            border-radius: 4px;
        }
        #hint2{
            height: 25px;
            background-color:rgba(20,255,255,0.5);
            margin-top: 20px;
            margin-left:10px;
            line-height: 25px;
            border-radius: 4px;
        }
        #hint3{
            height: 25px;
            background-color:rgba(20,255,255,0.5);
            margin-top: 20px;
            margin-left:10px;
            line-height: 25px;
            border-radius: 4px;
        }
        #hint4{
            height: 25px;
            background-color:rgba(20,255,255,0.5);
            margin-top: 20px;
            margin-left:10px;
            line-height: 25px;
            border-radius: 4px;
        }
        #hint5{
            height: 25px;
            background-color:rgba(20,255,255,0.5);
            margin-top: 20px;
            margin-left:10px;
            line-height: 25px;
            border-radius: 4px;
        }
        #hint6{
            height: 25px;
            background-color:rgba(20,255,255,0.5);
            margin-top: 20px;
            margin-left:10px;
            line-height: 25px;
            border-radius: 4px;
        }
        #registerBottm{
            width: 100%;
            height: 150px;
        }

        #getCode{
            margin-left: 40px;
            float: left;
            width: 180px;
            text-align: center;
        }
        #getCode button{
            width: 80px;
            height: 30px;
            background-color: rgba(122, 255, 214, 0.5);
            border: 0px;
            cursor: pointer;
            font-size: 15px;
            border-radius: 5px;
        }
        #getCode button:hover{
            background-color: rgba(122, 255, 214, 0.59);
            font-size: 16px;
        }
        #registerCode{
            width: 100px;
            height: 26px;
        }
        #register{
            width: 100%;
            height: 50px;
            margin-top:25px;
            line-height: 70px;

        }
        #register button{
            margin-left: 140px;
            width:150px;
            height: 40px;
            border: none;
            border-radius: 5px;
            font-size: 23px;
            background-color: #88cdff;
            cursor: pointer;
        }
        #hint7{
        	width:90%;
        	text-align: center;
        	color: red;
        	font-size: 14px
        }

    </style>
</head>
<body>
<!-- main wrapper -->
<div class="wrapper">
    <!-- header -->
      <header class="header">
        <div class="header-top">
            <div class="container">
                <div class="row">                     
                    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12" style="width: 600px;margin-left: 10px">
                        <div class="header-email"><i class="fa fa-envelope-o"></i> <a href="mailto:support@email.com">support@email.com</a></div>
                        <div class="header-phone"><i class="fa fa-phone"></i> <a href="#">8 (043) 567 - 89 - 30</a></div>
                    </div>

                    <%Object account=session.getAttribute("account");
					if(account==null){%>
					<div id="head-right">
              			<div class="header-social pull-right">  	
	                		<a href="http://localhost:8080/HotelManagement/roomtype.action" onclick="onoff()"><i class="fa fa-twitter"></i>login</a>
	               			<a href="/HotelManagement/user/register.jsp">register</a>
	               			<a href="/HotelManagement/user/findPass.jsp">forget pass</a>
              			</div>
           			 </div>		
					 <%}else{%>
                    <div id="head-right">
                        <div class="head-right">hello:<%=(String)account%></div>
                        <div class="head-right"><a href="information.jsp">information</a></div>
                        <div class="head-right"><a href="/HotelManagement/ReserveInfo.action">my order</a></div>
                        <div class="head-right"><a href="/HotelManagement/logout.action">log out</a></div>
                    </div>
                    <%} %>
                </div>
            </div>
        </div>
        </header>
        </div>
    <div id="back">
        <img src="assets/img/hotel.jpg">
    </div>
    <div id="registerMain">
        <div id="registerHead"> register</div>
        <div  id="registerBody">
            <div class="bodyParameter">
                <div class="paraName">tel:</div>
                <div class="paraValue" ><input type="text" placeholder="tel number" onkeyup="check()" onblur="sendTel()"  id="value1"></div>
                <div class="paraHint"><div id="hint1"></div></div>
            </div>
            <div class="bodyParameter">
                <div class="paraName">pass:</div>
                <div class="paraValue" ><input type="password" onblur="checkPass()" placeholder="6 to 15 alphabet and digit combinations." id="value2"></div>
                <div class="paraHint" ><div id="hint2" class="hintClass"></div></div>
            </div>
            <div class="bodyParameter">
                <div class="paraName">repass:</div>
                <div class="paraValue"><input type="password" onblur="checkRepass()" placeholder="same as pass" id="value3"></div>
                <div class="paraHint"><div id="hint3" class="hintClass"></div></div>
            </div>
            <div class="bodyParameter">
                <div class="paraName">name:</div>
                <div class="paraValue"><input type="text" onblur="checkName()" placeholder="it is necessary" id="value4"></div>
                <div class="paraHint" ><div id="hint4" class="hintClass"></div></div>
            </div>
            <div class="bodyParameter">
                <div class="paraName">email:</div>
                <div class="paraValue" ><input type="text" onblur="checkMail()"  placeholder="it's dispensable" id="value5"></div>
                <div class="paraHint" ><div id="hint5" class="hintClass"></div></div>
            </div>
            <div class="bodyParameter">
                <div class="paraName">iden:</div>
                <div class="paraValue" ><input type="text" onkeyup="checki()"  onblur="checkIden()" placeholder="it is necessary " id="value6"></div>
                <div class="paraHint" ><div id="hint6" class="hintClass"></div></div>
            </div>
        </div>
        <div id="registerBottm" >
            <div id="code">
                 <div id="getCode"><button onclick="registerCode()">get code</button></div>
                <div id="getCode2"><input type="text" id="registerCode"></div>
            </div>
            <div id="register"><button onclick="userRegister()">register</button></div>
            <div id="hint7"></div>
        </div>
    </div>

</body>
<script type="text/javascript" src="assets/js/private/register.js"></script>
<script type="text/javascript" src="assets/js/private/aes.js"></script>
<script type="text/javascript" src="assets/js/private/pad-zeropadding.js"></script>
<script type="text/javascript" src="assets/js/private/secret.js"></script>
<script>
    function check() {
        var totalMinute = document.getElementById("value1").value;
        var temp = "";
        for (var i=0; i<totalMinute.length; i++) {
            var code = totalMinute.charCodeAt(i);
            if (code >= 48 && code <= 57  ) {
                temp += totalMinute.charAt(i);
            }
        }
        if(totalMinute.length>11){
            temp = totalMinute.substring(0, totalMinute.length-1);
        }
        document.getElementById("value1").value = temp;
    }
    function checki() {
    	var totalMinute = document.getElementById("value6").value;
    	var temp = "";
        if(totalMinute.length>18){
            temp = totalMinute.substring(0, 18);
        }
        document.getElementById("value6").value = temp;
    }
    function checkPass() {
        var reg = new RegExp("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$");
        var obj = document.getElementById("value2");
        if(!reg.test(obj.value)){
            document.getElementById("hint2").innerHTML="not ok";
        }else{
            document.getElementById("hint2").innerHTML="ok";
        }
    }
    function checkRepass() {
        if(document.getElementById("hint2").innerHTML=="ok"){
            if(document.getElementById("value2").value==document.getElementById("value3").value){
                document.getElementById("hint3").innerHTML="ok";
            }else{
                document.getElementById("hint3").innerHTML="different with pass";
            }
        }else{
            document.getElementById("hint3").innerHTML="pass first";
        }
    }
    function checkName() {
        
        var obj = document.getElementById("value4");
        if(obj.value==""){
            document.getElementById("hint4").innerHTML="not ok";
        }else{
            document.getElementById("hint4").innerHTML="ok";
        }
    }
    function  checkMail() {
        var reg = new RegExp("^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$");
        var obj = document.getElementById("value5");
        if(!reg.test(obj.value)){
            document.getElementById("hint5").innerHTML="it's not a eamil";
            if(obj.value==""){
                document.getElementById("hint5").innerHTML="";
            }
        }else{
            document.getElementById("hint5").innerHTML="ok";
        }
    }
    function  checkIden() {
        var reg = new RegExp("(^\\d{18}$)|(^\\d{15}$)");
        var obj = document.getElementById("value6");
        if(!reg.test(obj.value)){
            document.getElementById("hint6").innerHTML="It's not iden number";
        }else{
            document.getElementById("hint6").innerHTML="ok";
        }
    }
</script>
</html>
