<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2017/12/19
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
首页
<%--<form action="/User" method="post">
    &lt;%&ndash;<form:input path="name" htmlEscape="false" maxlength="64"/>&ndash;%&gt;
    <input name="username" value="${mappings.user.name}">
    &lt;%&ndash;<button type="submit" value="提交"/>&ndash;%&gt;
    <input type="submit" value="提交">
</form>--%>

<form:form action="/User" method="post" modelAttribute="user">
    <form:input path="name" htmlEscape="false" maxlength="64"/>
    <form:input path="age" htmlEscape="false" maxlength="64"/>

    <input id="btnSubmit" type="submit" value="保 存"/>
</form:form>
</body>
</html>
