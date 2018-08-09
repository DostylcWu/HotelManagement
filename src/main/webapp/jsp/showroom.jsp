<%@ page language="java" import="java.util.*, com.hotelsystem.bean.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'goods_appraisal.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
#box {
	width: 1000px;
	height: 700px;
	border: solid 1px red;
	margin: auto;
}

#welcome {
	width: 950px;
	height: 80px;
	border: solid 1px #ff9e30;
	float: left;
	font-size: 36px;
	padding-top: 20px;
	padding-left: 50px;
}

#info {
	width: 800px;
	height: 500px;
	border: solid 1px #3be2ff;
	float: left;
}

#goodslist {
	width: 800px;
	height: 400px;
	border: solid 1px #43ff38;
	margin: auto;
	margin-top: 50px;
}

#look {
	width: 1000px;
	height: 100px;
	border: solid 1px #ff3dc7;
	float: left;
}

button {
	width: 100px;
	height: 50px;
	margin-left: 450px;
	font-size: 24px;
}


</style>
</head>
<script type="text/javascript" src="js/public/jQuery-2.2.2.js"></script>
<body>
	<div id="box" >
		<div id="welcome">欢迎光临</div>
		<div id="info">
			<div id="goodslist">
				<table border=1 cellpadding="10" cellspacing="0">
					<tr>
						<th>房间图片</th>
						<th>房间类型</th>
						<th>价格</th>
						<th>可入住人数</th>
						<th>床型</th>
						<th>上网方式</th>
						<th>窗户</th>
					</tr>
					<tbody>
						<c:forEach items="${sessionScope.roomTypeList }" var="obj">
							<tr>
								<td>
									<img id ="img" style="cursor:pointer" src="${obj.img }" height="100" width="120" >
								</td>
								<td>${obj.name }</td>
								<td onmouseover="priceMap('${obj.name}','${obj.price }')" onmouseout="disappear('${obj.id } }','${obj.name}','${obj.price }')">
									${obj.price }
								</td>
								<td>${obj.people }</td>
								<td>${obj.bedType }</td>
								<td>${obj.netType }</td>
								<td>${obj.window }</td>
								<td>
									<button ><a href="http://www.baidu.com"  style="text-decoration:none">预订</a></button>
									<button onclick="test()"><a href="http://www.baidu.com"  style="text-decoration:none">评论</a></button>
								</td>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		function priceMap(name, price){		
			var roomType = {"name":name,"price":price}
  			$.ajax({
  				url:"/Springmvc/roomTypeDetail.action",
  				method:"post",
  				async:true,
  				contentType:"application/json;charset=utf-8",
  				dateType:"json",
  				data:JSON.stringify(roomType),
  				success:function(message){
  					document.location = "/Springmvc/jsp/showpricemap.jsp"
  				}
  			});
  		}
		function disappear(name, price){	
			var str = "nodediv"+id
			document.getElementById(str).style.display="none";
		}
	</script>

</body>
</html>
