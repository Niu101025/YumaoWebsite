<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/jsp/admin/";
    String basePath1 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="<%=basePath %>css/pintuer.css">
    <link rel="stylesheet" href="<%=basePath %>css/admin.css">
    <script src="<%=basePath %>js/jquery.js"></script>
    <script src="<%=basePath %>js/pintuer.js"></script>
    <script src="<%=basePath1 %>ckeditor/ckeditor.js"></script>

</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong><span class="icon-pencil-square-o"></span>增加内容</strong>
    </div>
    <div class="body-content">
        <s:form method="post" class="form-x" action="product_add" enctype="multipart/form-data" theme="simple">
            <s:hidden name="pid" value=""/>
            <s:hidden name="pimg" value=""/>
            <s:hidden name="ptime" value=""/>
            <div class="form-group">
                <div class="label">
                    <label>标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="pname"
                    />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>图片：</label>
                </div>
                <div class="field">
                    <input type="file" name="myFile">
                </div>
            </div>

            <if condition="$iscid eq 1">
                <div class="form-group">
                    <div class="label">
                        <label>请选择分类：</label>
                    </div>
                    <div class="field">
                        <s:select name="category.cid" list="list" listKey="cid" listValue="cname" headerKey=""
                                  headerValue="--请选择--"/>
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>其他属性：</label>
                    </div>
                    <div class="field" style="padding-top: 8px;">
                        是否首页展示 <s:radio name="ishome" list="%{#{'true':'展示','false':'不展示'}}" value="false"/>

                    </div>
                </div>
            </if>
            <div class="form-group">
                <div class="label">
                    <label>描述：</label>
                </div>
                <div class="field">
                    <textarea class="input" name="pdesc" style="height: 90px;"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>内容：</label>
                </div>
                <div class="field">
						<textarea name="pcontent" class="ckeditor"
                                  style="height: 800px; border: 1px solid #ddd;"></textarea>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>点击次数：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pclicknum" value=""/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">
                        提交
                    </button>
                </div>
            </div>
        </s:form>
    </div>
</div>

</body>
</html>