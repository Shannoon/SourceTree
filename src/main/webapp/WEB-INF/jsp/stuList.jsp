<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息列表</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/js/jquery-3.3.1.js"></script>
    <script src="/js/jqPaginator.js"></script>
</head>
<style>
    table,th,td{
        border: 1px solid black;
    }
</style>
<body>
<%--<form action="getAllStus" method="post">--%>
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${PageInfo.list}" var="stu">
            <tr>
                <td>${stu.id}</td>
                <td>${stu.name}</td>
                <td>${stu.age}</td>
                <td>${stu.sex}</td>
                <td>${stu.password}</td>
                <td>
                    <a href="Toupdate?id=${stu.id}">修改</a>
                    <a href="delete?id=${stu.id}">删除</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>

    </table>

    <div> <a href="GoAdd">新增</a></div>



<%--</form>--%>
<!-- 分页的导航栏 -->
<div class="pagination-layout">

    <div class="pagination">
        <ul class="pagination">

        </ul>


    </div>
</div>


</div>




<script>

    window.onload = function() {
        var if_fistime = true;
        $(".pagination")
            .jqPaginator(
                {
                    totalPages : ${PageInfo.pages},
                    visiblePages : 3,
                    currentPage : ${PageInfo.pageNum},
                    first : '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
                    prev : '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
                    next : '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
                    last : '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
                    page : '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',

                    onPageChange : function(num) {

                        /* alert(num); */
                        if (if_fistime) {
                            if_fistime = false;
                        } else {
                            changePage(num);
                        }

                    }

                })

    }

    function changePage(num) {

        window.location.href = "getAllStus?pageNum=" + num;
    }



</script>


</body>
</html>
