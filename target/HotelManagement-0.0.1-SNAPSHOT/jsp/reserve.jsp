<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" src="/HotelManagement/js/jquery-3.3.1.js"></script>
<title>My JSP 'reserve.jsp' starting page</title>

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
<form action="/HotelManagement/managerAddReserve.action" method="post">
	<table>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="name" id="people_name"></td>
		</tr>
		<tr>
			<td>手机号：</td>
			<td><input type="text" name="tel" id="people_tel"></td>
		</tr>
		<tr>
			<td>预订的房间类型1：</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>该种房间数量</td>
			<td><input type="text" name="count"></td>
		</tr>
		<tr>
			<td>入住人姓名1</td>
			<td><input type="text" name="personone" id="person_one"></td>
		</tr>
		<tr>
			<td>入住人姓名2</td>
			<td><input type="text" name="persontwo" id="person_two"></td>
		</tr>
		<tr>
			<td>客户留言</td>
			<td><input type="text" name="message" id="people_context"></td>
		</tr>
		<tr>
			<td>入住</td>
			<td><input type="text" name="checkIn"></td>
		</tr>
		<tr>
			<td>退房</td>
			<td><input type="text" name="checkOut"></td>
		</tr>
		<tr>
			<td>取消</td>
			<td><input type="text" name="cancel"></td>
		</tr>
		<tr>
			<td>抵达</td>
			<td><input type="text" name="arrive"></td>
		</tr>
		<tr>
			<td><button type="submit">表单提交</button></td>
		</tr>
		
	</table>
	</form>
	<button type="submit" onclick="addReserve()">JSON提交</button>
</body>
	<script type="text/javascript">
		function addReserve() {
			var list = new Array();
			var checkInOne={};
			checkInOne.name=$("#person_one").val();
			var checkInTwo={};
			checkInTwo.name=$("#person_two").val();
			var people={};
			people.name=$("#people_name").val();
			people.tel=$("#people_tel").val();
			people.message=$("#people_context").val();
			list.push({checkInPersonBean1:checkInOne})
			list.push({checkIn2:checkInTwo})
			list.push({reservePeople:people})
			$.ajax({
				url : "/HotelManagement/managerAddReserveMsg.action",
				type : "post",
				dataType : "json",
				data : JSON.stringify(list),
				contentType : "application/json;charset=utf-8",
				success : function(date) {
					alert(data);
				}
			});
		}
	</script>
</html>
