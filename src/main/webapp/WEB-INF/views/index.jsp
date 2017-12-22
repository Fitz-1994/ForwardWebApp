<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<h5>欢迎进入ForwardWeb系统</h5>
<div>
        ${message}
</div>
<form:form action="/login" method="post" modelAttribute="user">
    用户名：<form:input path="account" htmlEscape="false" maxlength="64"/><br>
    密码：<form:input path="password" htmlEscape="false" maxlength="64"/>

    <input id="btnSubmit" type="submit" value="保 存"/>
</form:form><%--
${user}<br>
${user.account}--%>
<br>
<a href="/UserForm">用户注册</a>

</body>
</html>
