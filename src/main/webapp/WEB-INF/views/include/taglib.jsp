<%@ page import="cn.forward.common.system.SystemCommon" %><%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2017/12/23
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // properties 配置文件名称
    request.setAttribute("res",SystemCommon.getProperties("forwardweb"));
%>
<%-- 用这种方式就可以获取到项目访问的上下文路径 --%>
<c:set var="ctx" value = "${pageContext.request.contextPath}${res.getString('adminPath')}" />
<c:set var="ctxFront" value = "${pageContext.request.contextPath}${res.getString('frontPath')}" />
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<!-- jQuery -->
<script src="${ctxStatic}/sbadmin/vendor/jquery/jquery.min.js"></script>
