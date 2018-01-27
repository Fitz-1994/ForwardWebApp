<%--
  Created by IntelliJ IDEA.
  User: forward
  Date: 18-1-27
  Time: 下午5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>博客管理</title>
    <!-- Custom CSS -->
    <link href="${ctxStatic}/sbadmin/dist/css/sb-admin-2.css" rel="stylesheet">
</head>
<body>
<div class="page-wrapper">
    <a href="${ctx}/blog/addBlogForm" target="mainFrame">新增博客</a>
</div>
</body>
</html>