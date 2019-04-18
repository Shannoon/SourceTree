<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增</title>
</head>
<body>
    <form action="addstu" method="post">
        <div>
            <label>姓名：</label>
            <input type="text" name="name">
        </div>
        <div>
            <label>年龄：</label>
            <input type="text" name="age">
        </div>
        <div>
            <label>性别：</label>
            <input type="text" name="sex">
        </div>
        <div>
            <label>密码：</label>
            <input type="password" name="password">
        </div>
        <div>
            <input type="submit" value="提交">
        </div>

    </form>

</body>
</html>
