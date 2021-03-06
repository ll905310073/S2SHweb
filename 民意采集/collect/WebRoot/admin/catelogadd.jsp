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

		<title>管理</title>
		<jsp:include page="/admin/header.jsp" />

		<div class="templatemo-content-wrapper">
			<div class="templatemo-content">
				<ol class="breadcrumb">
					<li>
						<a href="admin/index.jsp">首页</a>
					</li>
					<li class="active">
						添加分类
					</li>
				</ol>
				<div class="margin-bottom-30">
					<div class="row">
						<div class="col-md-12">
							<form action="catelogadd" method="post" >
								<div class="row">
									<div class="col-md-6 margin-bottom-15">
										<label for="firstName" class="control-label">
											民意信息分类类别名
										</label>
										<input type="text" name="catelog.cname" class="form-control" id="firstName"
											placeholder="类别名">
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 margin-bottom-15">
										<label for="singleSelect">
											类别状态
										</label>
										<select name="catelog.ctype" class="form-control margin-bottom-15"
											id="singleSelect">
											<option>
												启用
											</option>
											<option>
												未启用
											</option>
										</select>
									</div>
								</div>
								<div class="row templatemo-form-buttons">
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary">
											提交
										</button>
										<button type="reset" class="btn btn-default">
											重置
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
		<jsp:include page="/admin/footer.jsp" />
		</body>
</html>
