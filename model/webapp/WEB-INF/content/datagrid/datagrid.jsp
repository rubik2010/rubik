<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!-- 
<%@ include file="/common/contextmenu.jsp" %>
 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表格</title>
</head>
<body style="overflow: hidden;padding: 0px;background-color: #fafafa">
	<table id="userInfo" class="easyui-datagrid" data-options="fit:true,fitColumns:true,singleSelect:true,loadMsg:'加载数据...',
	pagination:true, title:'数据列表', rownumbers:true, iconCls:'icon-grid',scrollbarSize:0" style="display: none">  
		<thead>  
			<tr>  
			    <th field="name1" width="50" rowspan="2">Col 1</th>  
			    <th field="name2" width="50" rowspan="2">Col 2</th>  
			    <th field="name3" width="50" rowspan="2">Col 3</th>  
			    <th colspan="3">Details</th>  
			</tr>
			<tr>
			    <th field="name4" width="50">Col 4</th>  
			    <th field="name5" width="50">Col 5</th>  
			    <th field="name6" width="50">Col 6</th>  
			</tr>
		</thead>
	    <tbody>                              
	        <tr>                             
	            <td>Data 1</td>              
	            <td>Data 2</td>              
	            <td>Data 3</td>              
	            <td>Data 4</td>              
	            <td>Data 5</td>              
	            <td>Data 6</td>              
	        </tr>                            
	        <tr>                             
	            <td>Data 1</td>              
	            <td>Data 2</td>              
	            <td>Data 3</td>              
	            <td>Data 4</td>              
	            <td>Data 5</td>              
	            <td>Data 6</td>              
	        </tr>                            
	        <tr>                             
	            <td>Data 1</td>              
	            <td>Data 2</td>              
	            <td>Data 3</td>              
	            <td>Data 4</td>              
	            <td>Data 5</td>              
	            <td>Data 6</td>              
	        </tr>                            
	        <tr>                             
	            <td>Data 1</td>              
	            <td>Data 2</td>              
	            <td>Data 3</td>              
	            <td>Data 4</td>              
	            <td>Data 5</td>              
	            <td>Data 6</td>              
	        </tr>                            
	    </tbody>                             
	</table>
</body>
</html>