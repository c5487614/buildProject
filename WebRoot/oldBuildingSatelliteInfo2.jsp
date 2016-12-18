<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
<title>古建筑保护系统</title>  
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/index.js"></script>

<script type="text/javascript"> 
$(document).ready(function(){
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_satallite').addClass('active');
});
</script>
<body>
<jsp:include page="nav_bar.jsp" />

<div class="container-fluid">

  <div class="row">
    <div class="col-md-2 well" style="margin-left:30px;margin-right:30px" id="menu">
      <!--Sidebar content-->
      <jsp:include page="nav_menu.jsp" />
    </div>
    <div class="col-md-9 well">
    	<h3 class="text-center">真武阁卫星地图展示</h3>
    	<dl>
			<dt>真武阁卫星地图说明</dt>
			<dd></dd>
		</dl>
		<dl>
			<dt>真武阁卫星地图展示</dt>
			<dd>
				<div class="col-sm-5">
			      <div class="row">
					  <div class="col-sm-4">
					    <a href="#" class="">
					      <img data-src="" alt="" src="<%=request.getContextPath()%>/images/gis_zwg.jpg" style="width: 800px; height: 450px;">
					    </a>
					  </div>
					  
					</div>
			    </div>
			</dd>
		</dl>
    </div>
  
  </div>
</div>
</body>  
</html>