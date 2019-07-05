<%--
  Created by IntelliJ IDEA.
  User: fenzx
  Date: 2019/4/11
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<form action="update" method="post">
    <div>
        <label>ID：</label>
        <input type="text" name="id" value="${student.id}" readonly>
    </div>
    <div>
        <label>姓名：</label>
        <input type="text" name="name" value="${student.name}">
    </div>
    <div>
        <label>年龄：</label>
        <input type="text" name="age" value="${student.age}">
    </div>
    <div>
        <label>性别：</label>
        <input type="text" name="sex" value="${student.sex}">
    </div>
    <div>
        <label>密码：</label>
        <input type="password" name="password" value="${student.password}">
    </div>
    <div>
        <input type="submit" value="提交">
    </div>

</form>

</body>
</html>
