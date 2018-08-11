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
    <script src="../js/jquery-3.3.1.js"></script>
</head>
<body>
<div id="turnpage">
    <ul>
        <li class="firstPage" ></li>
        <li class="prePage" ><a href='javascript:;'onclick="lastPage()">上一页</a></li>
        <li class="down"><span id="currentPage"></span>/ <span
                id="totalPage"></span></li>
        <li class="nextPage" ><a href='javascript:;'onclick="nextPage()"> 下一页</a></li>
        <li class="totalPage" ><a href='javascript:;'onclick="endPage()">末页</a></li>
        一共有<span id="totalNum"></span>条数据
    </ul>
</div>
</body>
<script>
    function showPage(ppage) {
        $.ajax({
            url: "/CheckInList.action",
            method: "post",
            async: true,
            dataType: "json",
            data: "currentPage="+ppage+"",
            success: function (data) {
                var check = data.list;
                var currentPage=data.pageNum;
                var totalPage=data.lastPage;
                var totalNum=data.total;
                var firsts=data.firstPage;
                var firstPage="<a href='javascript:;'onclick='showPage("+firsts+")'>首页</a>";
                for (var i = 0; i < check.length; i++) {
                    var checks = check[i];

                }
                $("#currentPage").html(currentPage);
                $("#totalPage").html(totalPage);
                $("#totalNum").html(totalNum);
                $(".firstPage").html(firstPage)
            }
        })
    }

    showPage(1);
    function nextPage() {
        var scurrentPage=$("#currentPage").html();
        var currentPage=parseInt(scurrentPage);
        var nextPages=currentPage+1;
        var totalPage=parseInt($("#totalPage").html());
        if(nextPages<=totalPage){
            showPage(nextPages);
        }
    }
    function lastPage() {
        var scurrentPage=$("#currentPage").html();
        var currentPage=parseInt(scurrentPage);
        var lastPage=currentPage-1;
        if(lastPage>0){
            showPage(lastPage);
        }
    }
    function endPage() {
        var totalPage=parseInt($("#totalPage").html());
        showPage(totalPage);
    }
    function startPage() {
        showPage(1);
    }
</script>
</html>
