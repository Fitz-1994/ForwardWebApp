<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2017/12/19
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
name:
${user.name}
<br>
age:
${user.age}

<c:forEach items="${userList}" var="user">
    姓名：${user.name}
</c:forEach>

</body>
</html>
