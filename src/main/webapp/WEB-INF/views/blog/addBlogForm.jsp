<%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2018/1/22
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="${ctxStatic}/ueditor/lang/zh-cn/zh-cn.js"></script>
<head>
    <title>添加博文页面</title>
    <meta charset="UTF-8">
    <!-- Custom CSS -->
    <link href="${ctxStatic}/sbadmin/dist/css/sb-admin-2.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8" src="${ctxStatic}/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${ctxStatic}/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript">

    </script>
</head>
<body>
<div id="page-wrapper">
<!-- 加载编辑器的容器 -->
<form:form id="blogForm" action="${ctx}/blog/saveBlog" method="post" modelAttribute="blog" role="form">
    <table>
        <tr>
            <td>标题：</td>
            <td><form:input path="blogTitle" htmlEscape="false" maxlength="64"/></td>
        </tr>
        <tr>
            <td>副标题：</td>
            <td><form:input path="blogSubTitle" htmlEscape="false" maxlength="64"/></td>
        </tr>
        <tr>
            <td>博客类型：</td>
            <td><form:select path="blogType" class="input-medium">
                <form:option value="" label="" />
                <form:option value="1" label="技术博客" />
                <form:option value="2" label="个人爱好" />
                <form:option value="3" label="生活随笔" />
            </form:select></td>
        </tr>
        <form:input path="blogContent" htmlEscape="false" maxlength="64" hidden="hidden" />
    </table>
</form:form>
<script id="container" name="content" type="text/plain" >
        这里写你的初始化内容
</script>
<button id="submit" onclick="submit()">提交</button>

<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
    function submit() {
        $("#blogContent").attr("value",ue.getContent());
        $("#blogForm").submit();
    }
</script>
</div>
</body>
</html>