<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>登录</title>
<link href="css/login.css" type="text/css" rel="stylesheet">

	<%--引入BootStrap核心样式文件--%>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%--<style>
	.alert-danger{
		width: 300px;
		margin-right: 100px;

	}
</style>--%>
<body>

	<div class="login">
		<div class="message">苏格拉底超市管理系统</div>
		<div id="darkbannerwrap"></div>

		<form id="login-form" action="${APP_PATH}/login" method="post" >
			<input id="username" name="loginName" placeholder="用户名" type="text">
			<hr class="hr15">
			<input id="password" name="loginPassword" placeholder="密码" type="password">
			<hr class="hr15">
			<button style="width: 100%;" type="submit">登录</button>
			<hr class="hr20">
			<div class="col-sm-4 col-sm-offset-4" style="width: 65%;alignment: center">
				<c:if test="${ERROR_INFO != null && ERROR_INFO != ''}">
					<div class="alert alert-danger" style="width: 100%;" role="alert">
							${ERROR_INFO}
					</div>
				</c:if>
				<c:if test="${requestScope.LOGIN_MSG != null}">
					<div class="alert alert-danger" role="alert">
							${requestScope.LOGIN_MSG}
					</div>
				</c:if>
			</div>
			<%--<span id="info" style="color: red"></span>--%>
		</form>


	</div>

</body>
<script src="js/libs/jquery-2.1.1.min.js"></script>
<script src="js/common.js"></script>

</html>