<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
<body>
<form:form action="/UserAdd" method="post" modelAttribute="user">
    <form:input path="name" htmlEscape="false" maxlength="64"/>
    <form:input path="age" htmlEscape="false" maxlength="64"/>
    <form:input path="account" htmlEscape="false" maxlength="64"/>
    <form:input path="password" htmlEscape="false" maxlength="64"/>
    <form:input path="phone" htmlEscape="false" maxlength="64"/>
    <form:input path="email" htmlEscape="false" maxlength="64"/>

    <input id="btnSubmit" type="submit" value="保 存"/>
</form:form>

</body>
</html>
