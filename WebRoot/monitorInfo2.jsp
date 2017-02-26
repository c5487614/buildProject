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
<link href="<%=request.getContextPath()%>/javascripts/toast/toastr.min.css" rel="stylesheet" type="text/css" />

<script src="<%=request.getContextPath()%>/js/jquery-2.0.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/pms.min.js"></script>
<link href="<%=request.getContextPath()%>/css/pms.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/buttons.css" rel="stylesheet" />

<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/toast/toastr.min.js" ></script>
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
	$('#menu1').removeClass();
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_monitor').addClass('active');
	toastr.options = {
		"closeButton": false,
		"debug": false,
		"newestOnTop": false,
		"progressBar": false,
		"positionClass": "toast-top-center",
		"preventDuplicates": false,
		"onclick": null,
		"showDuration": "500",
		"hideDuration": "500",
		"timeOut": "800",
		"extendedTimeOut": "300",
		"showEasing": "swing",
		"hideEasing": "linear",
		"showMethod": "fadeIn",
		"hideMethod": "fadeOut"
	};
	
	setInterval(function(){
		$.ajax({
			method : 'POST',
			url : '<%=request.getContextPath()%>/info/getMonitorData.do',
			success : function(data, textStatus, jqXHR){
				/**/
				var toastList = new Array();
				var j = 0;
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
					var toastMsg = {};
					if(item.level=='警告'){
						tr = '<tr class="warning">';
						toastMsg.level = 'warning';
						toastMsg.msg = '请注意，建筑[' + item.name + ']的情况';
						toastList[j++] = toastMsg;
					}else if(item.level=='危险'){
						tr = '<tr class="danger">';
						toastMsg.level = 'danger';
						toastMsg.msg = '请注意，建筑[' + item.name + ']的情况';
						toastList[j++] = toastMsg;
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
				//console.log(toastList);
				//console.log(toastList.length);
				/**/
				for(var i=0;i<toastList.length;i++){
					var model = toastList[i];
					if(model.level=='danger'){
						toastr["error"](model.msg);
						document.getElementById("sound").play();
					}else if(model.level=='warning'){
						toastr["info"](model.msg);
					}
				}
				
			},
			error : function(){
				toastr["error"]('保存失败!');
			}
		})
	},2000);
});

</script>
<body class="fixedbody">
<!--#include file="include_navbar.asp"-->
<jsp:include page="pages/include_navbar.jsp" />

<jsp:useBean id="now" class="java.util.Date" />
<audio loop="0" id="sound" src="<%=request.getContextPath()%>/images/7815.wav" ></audio>
<div class="container-fluid">
  <div class="row">
  	<jsp:include page="pages/include_menu.jsp" />
    
    <div class="col-lg-12 col-lg-offset-2 text-center" >
    
    <div class="col-md-9">
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
</div>

</body>  
</html>