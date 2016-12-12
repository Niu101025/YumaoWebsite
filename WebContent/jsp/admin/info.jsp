<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/jsp/admin/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>网站信息</title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-pencil-square-o"></span> 网站信息</strong>
		</div>
		<div class="body-content">
			<s:form method="post" class="form-x" action="info_saveInfo.action"
				enctype="multipart/form-data" theme="simple">
				<s:hidden name="id" value="1" />
				<s:hidden name="logo" value="" />
				<div class="form-group">
					<div class="label">
						<label>网站LOGO：</label>
					</div>
					<div class="field">
						<input type="file" name="myFile">
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>联系人：</label>
					</div>
					<div class="field">
						<s:textfield class="input" name="name" value="%{name}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>手机：</label>
					</div>
					<div class="field">
						<s:textfield class="input" name="phone" value="%{phone}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>电话：</label>
					</div>
					<div class="field">
						<s:textfield class="input" name="tel" value="%{tel}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>传真：</label>
					</div>
					<div class="field">
						<s:textfield class="input" name="fax" value="%{fax}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>QQ：</label>
					</div>
					<div class="field">
						<s:textfield class="input" name="qq" value="%{qq}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>Email：</label>
					</div>
					<div class="field">
						<s:textfield class="input" name="email" value="%{email}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<s:textfield class="input" name="address" value="%{address}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">
							提交</button>
					</div>
				</div>
			</s:form>
		</div>
	</div>
</body>
</html>