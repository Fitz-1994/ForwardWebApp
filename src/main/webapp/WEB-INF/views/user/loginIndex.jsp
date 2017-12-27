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
        <br>
        <table>
            <th>当前登录用户信息</th>
        <tr>
            <td>姓名：</td>
            <td>${user.name}</td>
        </tr>
            <tr>
                <td>年龄：</td>
                <td>${user.age}</td>
            </tr>
            <tr>
                <td>手机号：</td>
                <td>${user.phone}</td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td>${user.email}</td>
            </tr>
        </table>
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
