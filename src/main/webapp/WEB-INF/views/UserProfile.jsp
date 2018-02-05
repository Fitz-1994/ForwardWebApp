<%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2017/12/19
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
    <!-- Custom CSS -->
    <link href="${ctxStatic}/sbadmin/dist/css/sb-admin-2.css" rel="stylesheet">
</head>
<body class="frameBody">
<div>
name:
${user.name}
<br>
age:
${user.age}

<c:forEach items="${userList}" var="user">
    姓名：${user.name}
</c:forEach>
</div>
</body>
</html>
