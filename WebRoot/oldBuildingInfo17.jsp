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

<script src="<%=request.getContextPath()%>/js/jquery-2.0.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/pms.min.js"></script>
<link href="<%=request.getContextPath()%>/css/pms.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/buttons.css" rel="stylesheet" />

<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/index.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascripts/imgbox/jquery.imgbox.js"></script>

<script type="text/javascript"> 
$(document).ready(function(){
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_oldbuidingInfo').addClass('active');
	
	$('dd a').imgbox();
	$('#menu2').removeClass();
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
    	<h3 class="text-center">三江风雨桥</h3>
    	<dl class="paragraph">
    	
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址说明</p>
      			</blockquote>
      		</dt>
			<dd class="text-left">
				<p>三江风雨桥位于广西柳州三江侗族自治县浔江河上，由钢筋混凝土月牙形单桥拱和集侗族特色木构建筑技艺精华于一体，有7个桥亭，其长度和规模均为世界之最，堪称世界第一风雨桥。</p>
			</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>黄姚古镇的历史</p>
      			</blockquote>
			</dt>
			<dd class="text-left">
			<p>
			这座集侗族木构建筑精华于一体的多功能风雨桥建成后，将和“侗乡第一鼓楼”——三江鼓楼遥相呼应，并通过民族特色旅游商业步行街——月亮街和侗乡大道，与世界最大的单体木构建筑“侗乡鸟巢”东方斗牛场连成一片，构成三江县城最经典的黄金旅游圈，成为三江的标志和名片。
			</p>
			<p>
			工程项目由著名侗族木匠师傅、国家级非物质文化遗产侗族木构建筑营造技艺传承人杨似玉及7个木构建筑工程队共150多人承建。2009年年9月，投资5000多万元兴建的三江风雨桥水泥结构部分竣工并通车。2010年3月，风雨桥木构建设部施工，修桥所需的全部1800多立方米木材。三江风雨桥已于2010年12月底竣工。
			</p>
			</dd>
		</dl>
		
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>图文说明</p>
      			</blockquote>
			</dt>
			<div class="step" style="width:800px;height:600px" id="title12" data-x="-6500" data-y="2000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body text-left" >
					   三江风雨桥位于广西柳州三江侗族自治县浔江河上，由钢筋混凝土月牙形单桥拱和集侗族特色木构建筑技艺精华于一体，有7个桥亭，其长度和规模均为世界之最，堪称世界第一风雨桥。
					  </div>
					</div>
				</div>
				<div class="row">
					<img style="width:750px;height:410px" src="<%=request.getContextPath()%>/viewImage/6_1.png" alt="" >
				</div>
			</div>
		</div>
		
		<div class="step" style="width:800px;height:600px" id="title13" data-x="-7000" data-y="3000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body text-left" >
					   三江风雨桥位于广西柳州三江侗族自治县浔江河上，由钢筋混凝土月牙形单桥拱和集侗族特色木构建筑技艺精华于一体，有7个桥亭，其长度和规模均为世界之最，堪称世界第一风雨桥。
					  </div>
					</div>
				</div>
				<div class="row" >
					<img style="width:750px;height:410px" src="<%=request.getContextPath()%>/viewImage/6_4.png" alt="" >
				</div>
			</div>
		</div>
		
		<div class="step" style="width:800px;height:600px" id="title14" data-x="-6500" data-y="4000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body text-left" >
					   三江风雨桥位于广西柳州三江侗族自治县浔江河上，由钢筋混凝土月牙形单桥拱和集侗族特色木构建筑技艺精华于一体，有7个桥亭，其长度和规模均为世界之最，堪称世界第一风雨桥。
					  </div>
					</div>
				</div>
				<div class="row">
					<img style="width:750px;height:200px" src="<%=request.getContextPath()%>/viewImage/6_5.png" alt="" >
					
				</div>
				<div class="row" style="margin-top:10px">
					
					<img style="width:750px;height:250px" src="<%=request.getContextPath()%>/viewImage/6_6.png" alt="" >
				</div>
			</div>
		</div>
			
			
		</dl>
		
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址地形地貌</p>
      			</blockquote>
			</dt>
			<dd>
				<div class="col-sm-5">
			      <div class="row">
					  <div class="col-sm-4">
					    <a  href="<%=request.getContextPath()%>/viewImage/6_1.png" class="thumbnail">
					      <img src="<%=request.getContextPath()%>/viewImage/6_1.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a id="imageBoxTest"  href="<%=request.getContextPath()%>/viewImage/6_2.png" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/6_2.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/6_3.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/6_3.png" >
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/6_4.png" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/6_4.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/6_5.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/6_5.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/6_6.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/6_6.png" >
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