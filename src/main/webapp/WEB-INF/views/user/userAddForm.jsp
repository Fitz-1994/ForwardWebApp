<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2017/12/21
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增用户</title>
    <!-- Custom CSS -->
    <link href="${ctxStatic}/sbadmin/dist/css/sb-admin-2.css" rel="stylesheet">
</head>
<body>
<div class="page-wrapper">
<form:form action="${ctx}/UserAdd" method="post" modelAttribute="user">

    账号：<form:input path="account" htmlEscape="false" maxlength="64"/><br>
    密码：<form:input path="password" htmlEscape="false" maxlength="64"/><br>
    姓名：<form:input path="name" htmlEscape="false" maxlength="64"/><br>
    年龄：<form:input path="age" htmlEscape="false" maxlength="64"/><br>
    手机号：<form:input path="phone" htmlEscape="false" maxlength="64"/><br>
    邮箱：<form:input path="email" htmlEscape="false" maxlength="64"/><br>

    <input id="btnSubmit" type="submit" value="保 存"/>
</form:form>
</div>
</body>
</html>
