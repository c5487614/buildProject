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
    	<h3 class="text-center">蔡氏古宅</h3>
    	<dl class="paragraph">
    	
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址说明</p>
      			</blockquote>
      		</dt>
			<dd class="text-left">蔡氏古宅位于柳南高速公路边上的广西宾阳县古辣镇境内，是保存较为完好的古建筑群，堪称中国岭南古建筑的瑰宝。</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>蔡氏古宅的由来</p>
      			</blockquote>
			</dt>
			<dd class="text-left">
			<p>
			据蔡氏后人介绍，占地70多亩的蔡家大院始建于明代，后历经数百年的不断修缮，逐渐形成规模。只可惜最古老的建筑毁于清代咸丰初年的一次兵燹。现存的大多建筑是清代举人蔡凌霄及蔡氏家族于咸丰九年后重修的，虽历经风风雨雨，许多建筑至今仍保护完好。
			</p>
			<p>
			走进蔡家大院，人们禁不住被这座古色古香的深宅大院的气派所吸引，更为大院的建筑风格和建筑艺术所惊叹。
			</p>
			<p>
			大院建筑群分为"老屋"和"新屋"两部分共三处，均为三进式青砖瓦房。正厅最高，二厅、三厅渐次递减。古建筑群中的"新屋"部分更显特色，对称艺术突出，更加体现出古屋的庄严与威势。
			</p>
			<p>
			院内地面用大青石或青砖铺就，主道和非主道的铺设也有等级差别。房屋雕梁画栋、飞檐走檩，门窗饰以"福禄寿"等篆文图案，前门亦有山水画及篆文书法。
			</p>
			<p>
			大院还保存着具有典型西方建筑特点的洋楼，虽然破坏较为严重，但是风貌依旧。
			</p>
			</dd>
		</dl>
		
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>图文说明</p>
      			</blockquote>
			</dt>
			<div class="jumbotron step" style="width:800px;height:600px" id="title2" data-x="-1000" data-y="2000" data-scale="1" data-rotate="0">
			<div class="row">
				<img style="width:710px;height:430px" src="<%=request.getContextPath()%>/viewImage/3_1.png" alt="" >
				<div class="panel panel-default">
				  <div class="panel-body text-left">
				    蔡氏古宅位于柳南高速公路边上的广西宾阳县古辣镇境内，是保存较为完好的古建筑群，堪称中国岭南古建筑的瑰宝。占地7 0多亩的蔡家大院始建于明代，后历经数百年的不断修缮，逐渐形成规模。走进蔡家大院，人们禁不住被这座古色古香的深宅大院的气派所吸引，更为大院的建筑风格和建筑艺术所惊叹。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="step" style="width:800px;height:700px" id="title3">
			<div class="row">
				<div class="row">
					<div class="col-md-5">
						<img style="width:220px;height:500px" src="<%=request.getContextPath()%>/viewImage/3_2.png" alt=""  >
					</div>
					<div class="col-md-5">
						<div class="row">
							<img style="width:344px;height:244px" src="<%=request.getContextPath()%>/viewImage/3_3.png" alt="" class="img-circle" >
						</div>
						<div class="row">
							<img style="width:344px;height:244px" src="<%=request.getContextPath()%>/viewImage/3_4.png" alt="" class="img-circle" >
						</div>
					</div>
				</div>
				
				
				<div class="panel panel-default">
				  <div class="panel-body text-left">
				    院内地面用大青石或青砖铺就，主道和非主道的铺设也有等级差别。房屋雕梁画栋、飞檐走檩，门窗饰以"福禄寿"等篆文图案，前门亦有山水画及篆文书法。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="step" style="width:900px;height:600px" id="title4">
			<div class="row">
				<div class="row">
					<div class="col-md-5">
						<img style="width:394px;height:268px" src="<%=request.getContextPath()%>/viewImage/3_5.png" alt="" >
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-5">
						<img style="width:394px;height:268px" src="<%=request.getContextPath()%>/viewImage/3_6.png" alt="" >
					</div>
					
				</div>
				<div class="row">
					
				</div>
				<div class="panel panel-default" style="margin-top:50px">
				  <div class="panel-body text-left">
				    大院建筑群分为"老屋"和"新屋"两部分共三处，均为三进式青砖瓦房。正厅最高，二厅、三厅渐次递减。古建筑群中的"新屋"部分更显特色，对称艺术突出，更加体现出古屋的庄严与威势。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="step" style="width:900px;height:600px" id="title5">
			<div class="row">
				<div class="row">
					<div class="col-md-3">
						<img style="width:300px;height:300px" src="<%=request.getContextPath()%>/viewImage/3_7.png" alt="" class="img-circle">
					</div>
					<div class="col-md-3">
						<img style="width:300px;height:300px" src="<%=request.getContextPath()%>/viewImage/3_8.png" alt="" class="img-circle">
					</div>
					<div class="col-md-3">
						<img style="width:300px;height:300px" src="<%=request.getContextPath()%>/viewImage/3_9.png" alt="" class="img-circle">
					</div>
					
				</div>
				<div class="row">
					
				</div>
				<div class="panel panel-default" style="margin-top:50px">
				  <div class="panel-body text-left">
				    大院还保存着具有典型西方建筑特点的洋楼，虽然破坏较为严重，但是风貌依旧。蔡家大院整座建筑富有艺术性，体现出深厚的文化底蕴，是明清时期岭南民居的典型代表，具有较高的旅游开发和文物保护价值。
				  </div>
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
					    <a  href="<%=request.getContextPath()%>/viewImage/3_1.png" class="thumbnail">
					      <img src="<%=request.getContextPath()%>/viewImage/3_1.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a id="imageBoxTest"  href="<%=request.getContextPath()%>/viewImage/3_2.png" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/3_2.png" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/3_3.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/3_3.png" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/3_4.png" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/3_4.png" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/3_5.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/3_5.png" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/3_6.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/3_6.png" style="width: 180px; height: 180px;">
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