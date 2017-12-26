<%@ include file="/WEB-INF/views/include/taglib.jsp"%>

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
    <title>ForwardWeb</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="${ctxStatic}/sbadmin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${ctxStatic}/sbadmin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${ctxStatic}/sbadmin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${ctxStatic}/sbadmin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery -->
    <script src="${ctxStatic}/sbadmin/vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){//页面加载完之后，自动执行该方法
            setTimeout(function(){$("#message").hide();},5000);//5秒后执行该方法
        });
    </script>
</head>
<body>
<%--<h5>欢迎进入ForwardWeb系统</h5>--%>
<c:if test="${not empty message}">
    <div id="message">
            ${message}
    </div>
</c:if>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title" align="center">Forward Web</h3>
                </div>
                <div class="panel-body">
                    <form:form action="${ctx}/login" method="post" modelAttribute="user1" role="form">
                        <fieldset>
                            <div class="form-group">
                                <form:input path="account" htmlEscape="false" maxlength="64" class="form-control" placeholder="账号"/>
                            </div>
                            <div class="form-group">
                                <form:input path="password" htmlEscape="false" maxlength="64" type="password" class="form-control" placeholder="密码"/>
                            </div>
                            <input id="btnSubmit" class="btn btn-lg btn-success btn-block" type="submit" value="登录"/>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<a href="${ctx}/UserForm">用户注册</a>

</body>


<!-- Bootstrap Core JavaScript -->
<script src="${ctxStatic}/sbadmin/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${ctxStatic}/sbadmin/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${ctxStatic}/sbadmin/dist/js/sb-admin-2.js"></script>
</html>
