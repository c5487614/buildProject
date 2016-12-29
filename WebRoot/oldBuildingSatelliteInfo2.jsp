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
    	<dl class="paragraph">
			<dt>真武阁卫星地图说明</dt>
			<dd></dd>
		</dl>
		<dl class="paragraph">
			<dt>真武阁卫星地图展示</dt>
			<dd>
				<div class="col-sm-12">
			      <div class="row">
					  <div class="col-sm-7">
					  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						  <!-- Indicators -->
						  <ol class="carousel-indicators">
						    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
						  </ol>
						
						  <!-- Wrapper for slides -->
						  <div class="carousel-inner" role="listbox">
						    <div class="item active">
						      <img src="<%=request.getContextPath()%>/images/gis_zwg.jpg" alt="" style="width:800px; height:450px;">
						      <div class="carousel-caption">
						      </div>
						    </div>
						    <div class="item">
						      <img src="<%=request.getContextPath()%>/images/gis_zwg1.jpg" alt="" style="width:800px; height:450px;">
						      <div class="carousel-caption">
						      </div>
						    </div>
						    <div class="item">
						      <img src="<%=request.getContextPath()%>/images/gis_zwg2.jpg" alt="" style="width:800px; height:450px;">
						      <div class="carousel-caption">
						      </div>
						    </div>
						    <div class="item">
						      <img src="<%=request.getContextPath()%>/images/gis_zwg3.jpg" alt="" style="width:800px; height:450px;">
						      <div class="carousel-caption">
						      </div>
						    </div>
						  </div>
						
						  <!-- Controls -->
						  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right"></span>
						    <span class="sr-only">Next</span>
						  </a>
						</div>
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