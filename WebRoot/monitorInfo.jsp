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
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_monitor').addClass('active');
	setInterval(function(){
		$.ajax({
			method : 'POST',
			url : '<%=request.getContextPath()%>/info/getMonitorData.do',
			success : function(data, textStatus, jqXHR){
				/**/
				$('#monitorTableTBody').empty();
				var html = '<tr>'+
					'<th>建筑名称</th>'+
					'<th>所在地区</th>'+
					'<th>保护等级</th>'+
					'<th>更新时间</th>'+
					'<th>气温情况</th>'+
					'<th>负责人</th>'+
					'<th>联系方式</th>'+
					'<th>操作</th>'+
					'</tr>';
				
				for(var i=0;i<data.length;i++){
					var item = data[i];
					var tr = '';
					if(item.level=='警告'){
						tr = '<tr class="warning">';
					}else if(item.level=='危险'){
						tr = '<tr class="danger">';
					}else{
						tr = '<tr class="success">';
					}
					html = html + tr +
					'<td>'+item.name+'</td>'+
					'<td>'+item.district+'</td>'+
					'<td>'+item.protectLevel+'</td>'+
					'<td>'+item.updateDate+'</td>'+
					'<td>'+item.temprature+'</td>'+
					'<td>'+item.contactor+'</td>'+
					'<td>'+item.phone+'</td>'+
					'<td><a href="<%=request.getContextPath()%>/info/viewInfoPage.do?infoId='+item.infoId+'">查看详情</a></td>'+
					'</tr>';
					//console.log(item);
				}
				$('#monitorTableTBody').empty();
				$('#monitorTableTBody').append(html);

				
			},
			error : function(){
				toastr["error"]('保存失败!');
			}
		})
	},1000);
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
		<table id="monitorTable" class="table table-bordered table-hover table-striped">
			<caption>实时监控列表</caption>
			<tbody id="monitorTableTBody">
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
				<c:choose>
					<c:when test="${model.level == null}">
						<tr class="success">
					</c:when>
					<c:when test="${model.level eq '警告'}">
						<tr class="warning">
					</c:when>
					<c:when test="${model.level eq '危险'}">
						<tr class="danger">
					</c:when>
					<c:otherwise>
						<tr class="success">
					</c:otherwise>
				</c:choose>
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
			</tbody>
		</table>
    </div>
  </div>
</div>

</body>  
</html>