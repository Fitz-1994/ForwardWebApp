<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2017/12/22
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<h1>
    <c:if test="${loginStatus eq true}">
        登录成功
    </c:if>
    <c:if test="${loginStatus eq false}">
        登录失败
    </c:if>
</h1>
<c:if test="${loginStatus eq true}">
    <a href="${ctx}/UserForm">新增用户</a>
</c:if>
</body>
</html>
