<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>绘图</title>
<script type="text/javascript" src="${ctx }/script/jquery.js"></script>
<script type="text/javascript" src="${ctx }/script/swfobject.js"></script>
<script type="text/javascript">
///////////////////////////////绘制气象要素曲线///////////////////////////////////////
function loadFlash(){
	//swfobject.embedSWF("${ctx}/common/open-flash-chart.swf", "my_chart", 900, "350", "10.0.0",
			//null,{"data-file":escape("${ctx }/common/flash-chart.action?type=${type}&stationId=${stationId}")},{wmode:"transparent"});
	swfobject.embedSWF("${ctx}/common/open-flash-chart.swf", "my_chart", "100%", "100%", "10.0.0",
			null,{"data-file":escape("${ctx }/charts/line-on-click.txt")},{wmode:"transparent"});
}
////////////////////////////////////////////////////绘制曲线结束//////////////////////////////////////////////////
$(document).ready(function(){
	swfobject.embedSWF("${ctx}/common/open-flash-chart.swf", "my_chart", "100%", "100%", "10.0.0",
			null,{"data-file":escape("${ctx }/data/line-on-click.txt")},{wmode:"transparent"});
});
</script>
</head>
<body style="margin: 0; overflow: hidden">
	<div id="my_chart"></div>
</body>
</html>