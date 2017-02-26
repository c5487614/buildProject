<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
<title>古建筑保护系统</title>  
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/javascripts/imgbox/imgbox.css" rel="stylesheet" />

<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/index.js"></script>

<script src="<%=request.getContextPath()%>/js/jquery-2.0.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/pms.min.js"></script>
<link href="<%=request.getContextPath()%>/css/pms.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/buttons.css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/javascripts/imgbox/jquery.imgbox.js"></script>

<script type="text/javascript"> 
$(document).ready(function(){
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_GIS').addClass('active');
	$('dd a').imgbox();
	$('#menu3').removeClass();
});
</script>
<body class="fixedbody">
<!--#include file="include_navbar.asp"-->
<jsp:include page="pages/include_navbar.jsp" />

<div class="container-fluid">

  <div class="row">
    <jsp:include page="pages/include_menu.jsp" />
    
  	<div class="col-lg-10 col-lg-offset-2 text-center" >
  	
    <div class="col-md-10 well">
    	<h3 class="text-center">真武阁空间信息</h3>
		<dl >
			<dt></dt>
			<dd><embed src="http://dispatcher.video.qiyi.com/disp/shareplayer.swf?vid=318d4be8be63dae4a941b1e95a211a4c&amp;tvId=4446339309&amp;autoPlay=0&amp;autoChainPlay=0&amp;showSearch=0&amp;showSearchBox=0&amp;showControl=1&amp;autoHideControl=0&amp;showRecommend=0&amp;showFocus=0&amp;showShare=0&amp;showLogo=0&amp;isLoop=0&amp;coop=coop_baiduBaike&amp;bd=1&amp;showDock=0&amp;source=&amp;cid=qc_100001_300089" allowfullscreen="true" quality="high" width="550" height="350" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash"></dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址空间信息展示 </p>
      			</blockquote>
			</dt>
			<dd>
				<div class="col-sm-5">
			      <div class="row">
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/zwg1.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg1.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/zwg2.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg2.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/zwg3.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg3.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/zwg4.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg4.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/zwg5.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg5.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/zwg6.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg6.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
			    </div>
			</dd>
		</dl>
    </div>
  
  	</div><!-- <div class="col-lg-12 col-lg-offset-2 text-center" >  -->
  </div>
</div>

</body>  
</html>