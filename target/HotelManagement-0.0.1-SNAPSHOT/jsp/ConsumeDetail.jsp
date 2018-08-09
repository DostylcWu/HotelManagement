<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2018/8/9
  Time: 上午9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${checkInBeans}" var="check">
    ${check.id}
    ${check.room.id}
    ${check.arriveTime}
    ${check.leaveTime}
    ${check.stayDays}
    ${check.pledgeMoney}
    ${check.paidMoney}
    <br>
</c:forEach>
</body>
</html>
