<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	width: 1000px;
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
session:${sessionScope.priceMap}
	 <div id="box" >
		<div id="welcome">欢迎光临</div>
		<div id="info">
			<div id="goodslist">
				<table border=1 cellpadding="10" cellspacing="0">
					<tr>
						<th>等级</th>
						<th>价格</th>
					</tr>
					<tbody>
						<c:forEach items="${sessionScope.priceMap }" var="obj">
							<tr>
								<td>${obj.key }</td>
								<td >${obj.value }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		function appraisalInfo(name){
			
			document.getElementById("pricemap").innerHTML=objid;
		}
	</script>

</body>
</html>
