<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!-- 
<%@ include file="/common/contextmenu.jsp" %>
 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>模板</title>
</head>
<body style="overflow: hidden;padding: 0px;background-color: #fafafa">
	<div id="cc" class="easyui-layout" data-options="fit:true">
		<div data-options="region:'north',title:'North Title',split:true" style="height:10px;"></div>
		<div data-options="region:'south',title:'South Title',split:true" style="height:10px;"></div>  
		<div data-options="region:'east',title:'East',split:true" style="width:10px;"></div>
		<div data-options="region:'west',title:'West',split:true" style="width:240px;padding:1px;">
			<div id="aa" class="easyui-accordion"  data-options="fit:true">
				     <div title="表格布局" data-options="iconCls:'icon-ok'" style="overflow:auto;padding: 5px;">  
				        <div>
				    		<a class="easyui-linkbutton" href="javascript:OpenTab('表格布局—示例一','${ctx }/datagrid/datagrid.jsp');" 
				    		data-options="plain:true,iconCls:'icon-ok'">1、示例一</a>
				    	</div>
				    </div>  
				    <div title="Flash绘图" data-options="iconCls:'icon-ok',selected:true" style="padding:5px">
				    	<div>
				    		<a class="easyui-linkbutton" href="javascript:javascript:OpenTab('Flash绘图-线状1','${ctx }/charts/openFlash.jsp')" 
				    		data-options="plain:true,iconCls:'icon-ok'">1、示例一</a>
				    	</div>
				        <div>
				    		<a class="easyui-linkbutton" href="javascript:add()" data-options="plain:true,iconCls:'icon-ok'">1、添加窗口</a>
				    	</div>
				    </div>  
				</div>
		</div>  
		<div data-options="region:'center',title:'center title',split:true" style="padding:1px;background:#eee;">
			<div id="tabs" class="easyui-tabs" data-options="fit:true">
		    	<div title="系统首页" style="padding:20px; background-color: #fafafa; padding: 0px; text-align: center" data-options="fit:true">  
					<table style="width: 100%; height: 100%" border="0" cellpadding="10" cellspacing="10" >
						<tr><td align="center">
							<a class="easyui-linkbutton" href="javascript:void(0)" data-options="plain:true,iconCls:'icon-tip'" style="font-size: 20px; font-weight: bold">
								欢迎使用WEB管理系统模板首页
							</a>
						</td></tr>
					</table>
			    </div> 
		    </div>
		</div>
	</div>
</body>
</html>