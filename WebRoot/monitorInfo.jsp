<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
<title>古建筑保护系统</title>  
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/jquery.fileupload.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/jquery.fileupload-ui.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">

<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/fileUpload/vendor/jquery.ui.widget.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/fileUpload/jquery.iframe-transport.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/fileUpload/jquery.fileupload.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.zh-CN.js"></script>

<script type="text/javascript">

function initDatepicker(controlId){
	$(controlId).datetimepicker({
		autoclose: true,
		format: 'yyyy-mm-dd',
        pickDate: true,
        pickTime: false,
        startView: 2,
		minView: 2,
		language: 'zh-CN'
	});
}

$(document).ready(function(){
	initDatepicker('#tbox_planDevDate');
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_monitor').addClass('active');
	//setInterval("",1000);
});

</script>
<body>
<jsp:include page="nav_bar.jsp" />
<jsp:useBean id="now" class="java.util.Date" />

<div class="container-fluid">
  <div class="row">
    <div class="col-md-2 well" style="margin-left:30px;margin-right:30px" id="menu">
      <!--Sidebar content-->
      <jsp:include page="nav_menu.jsp" />
    </div>
    
    <div class="col-md-9 well">
		<table class="table table-bordered table-hover table-striped">
			<caption>实时监控列表</caption>
			<tbody>
			<tr>
				<th>建筑名称</th>
				<th>所在地区</th>
				<th>保护等级</th>
				<th>更新时间</th>
				<th>气温情况</th>
				<th>负责人</th>
				<th>联系方式</th>
				<th>操作</th>
			</tr>
			<c:forEach var="model" items="${listMonitor}">
				<tr>
					<td><c:out value="${model.name}"/></td>
					<td><c:out value="${model.district}"/></td>
					<td><c:out value="${model.protectLevel}"/></td>
					<td><c:out value="${model.updateDate}"/></td>
					<td><c:out value="${model.temprature}"/></td>
					<td><c:out value="${model.contactor}"/></td>
					<td><c:out value="${model.phone}"/></td>
					<td>查看详情</td>
				</tr>
			</c:forEach>
			
			<tr>
				<td>建筑一</td>
				<td>南宁</td>
				<td>3级</td>
				<td>2016-11-11 18:50:20</td>
				<td>2-20度</td>
				<td>负责人1</td>
				<td>13925841254</td>
				<td>查看详情</td>
			</tr>
			<tr>
				<td>建筑一</td>
				<td>南宁</td>
				<td>3级</td>
				<td>2016-11-11 18:50:20</td>
				<td>2-20度</td>
				<td>负责人1</td>
				<td>13925841254</td>
				<td>查看详情</td>
			</tr>
			<tr>
				<td>建筑一</td>
				<td>南宁</td>
				<td>3级</td>
				<td>2016-11-11 18:50:20</td>
				<td>2-20度</td>
				<td>负责人1</td>
				<td>13925841254</td>
				<td>查看详情</td>
			</tr>
			<tr>
				<td>建筑一</td>
				<td>南宁</td>
				<td>3级</td>
				<td>2016-11-11 18:50:20</td>
				<td>2-20度</td>
				<td>负责人1</td>
				<td>13925841254</td>
				<td>查看详情</td>
			</tr>
			</tbody>
		</table>
    </div>
  </div>
</div>

</body>  
</html>