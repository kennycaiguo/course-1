<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC ">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教学视频</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/ng-table.css">
  </head>
  
  <body ng-app="indexApp" ng-controller="courseVideo">
  		<table ng-table="datas.courseVideo" class="table">
  			<thead>
  			 <tr>
  			 	<th>标题</th>
  			 	<th colspan="3">介绍</th>
  			 	<th>发布时间</th>
  			 	<th>详细</th>
  			 </tr>
  			</thead>
  			<tbody style="text-align:center">
  				<tr ng-repeat=" column in $data">
  					<td>{{column.title}}</td>
  					<td colspan="3">{{column.introduce}}</td>
  					<td>{{column.publishedtime}}</td>
  					<td><a href={{column.url}}?id={{column.id}} target="_blank">详情</a></td>
  				</tr>
  			</tbody>
  		</table>
  </body>
  <script type="text/javascript" src="js/angular.js"></script>
  <script type="text/javascript" src="js/ng-table.js"></script>
  <script type="text/javascript" src="js/common.js"></script>
  <script type="text/javascript" src="js/coursevideo.js"></script>
</html>
