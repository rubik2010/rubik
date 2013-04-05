<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>easyui app</title>
    <link rel="stylesheet" type="text/css" media="screen" href="${ctx }/css/themes/gray/easyui.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="${ctx }/css/themes/windows/app.css?v=0.1" />
	<link rel="stylesheet" type="text/css" media="screen" href="${ctx }/css/themes/windows/icon.css" />
    <script type="text/javascript" src="${ctx }/script/desktop/jquery.app.js?v=0.1" charset="utf-8"></script>
	<script type="text/javascript">
	var root = "/model";
    $(function(){
	     if($.browser.msie && parseInt($.browser.version) < 8){ 
	        $.messager.alert("温馨提示","您当前正在使用的是IE"+$.browser.version+"。该程序支持<a style='color:green' target='_blank' href='http://windows.microsoft.com/zh-CN/internet-explorer/products/ie/home'>IE8.0</a>以上版本及谷歌，火狐..");
		}
	});
  </script>
  <script type="text/javascript" src="${ctx }/script/desktop/initApp.js" charset="utf-8"></script>
</head>
<body>

</body>
</html>