<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>个人登陆</title>
		<link rel="icon" type="image/ico" href="images/fav.ico">
		<jsp:include page="admin/header.jsp" />
	</head>
	<body class="bootstrap-admin-with-small-navbar"
		style="background: #ccc">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

					<form method="post" action="userlogin"
						class="bootstrap-admin-login-form">
						<h1>
							登陆
						</h1>
						${nologin}
						<br>
						<div class="form-group">
							<input class="form-control" type="text" name="user.name"
								placeholder="用户名">
						</div>
						<div class="form-group">
							<input class="form-control" type="password" name="user.password"
								placeholder="Password">
						</div>
						<button class="btn btn-lg btn-primary" type="submit">
							登陆
						</button>
					</form>

				</div>
			</div>
		</div>
	</body>
</html>
