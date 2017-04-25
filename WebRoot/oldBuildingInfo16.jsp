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
    	<h3 class="text-center">黄姚古镇</h3>
    	<dl class="paragraph">
    	
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址说明</p>
      			</blockquote>
      		</dt>
			<dd class="text-left">
				<p>黄姚古镇位于广西贺州昭平县东北部，距离贺州市区40公里，距桂林200公里。</p>
				<p>黄姚古镇方圆3.6公里，属喀斯特地貌。发祥于宋朝年间，有着近1000年历史。自然景观有八大景二十四小景；保存有寺观庙祠20多座，亭台楼阁10多处，多为明清建筑。著名的景点有广西省工委旧址，古戏台，安乐寺等。</p>
				<p>黄姚古镇2007年被国家文物局列为第三批“中国历史文化名镇”；</p>
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
			黄姚，古时随县居南越地。汉元鼎六年（前111年），汉武帝平定南越，置苍梧郡，辖临贺、猛陵等县，黄姚地属临贺地。南朝梁“普通”元年（520年），梁武帝萧衍析今昭平县地马江以上至平乐县南面置静州，辖梁寿、静慰二郡，并在二郡中设龙平、安乐、宁新、博劳、荡山五县，黄姚地属荡山县辖。隋炀帝大业三年（607年），改州为郡，撤销静州，将安乐、博劳、宁新三县撤并人龙平县，荡山县部分归龙平县，部分归贺川县，黄姚地受龙平县辖。
			</p>
			<p>
			五代十国时期，虽经战乱，但州治如唐代制，黄姚地届龙平不变。宋仁宗时期平定依智高之乱后，静、昭、贺三州的社会趋于安定，宣和六年（1124年）将龙平县改名招平县，意谓招抚平定，后将“招”字改为具有光明、明亮之意的“昭”字，定名为昭平县，黄姚地属昭平县辖。
			</p>
			<p>
			明洪武十八年（1385年）将昭平县划分为里管理，黄姚属宁化里辖。
			</p>
			<p>
			清咸丰十年（1860年），地方多故，县办团务，将全县划为十区，以预、备、财、恒、足、关、防、乐、太、平十个字为区名，黄姚属“关”字区辖。民国十五年（1926年），广西实行区乡保甲制度，全县分明源、黄姚、马江三大行政区和二十三个小乡镇，在黄姚区设立黄姚镇，届黄姚区辖。
			</p>
			<p>
			解放后，1950年4月，昭平全境划分为一、二、三、四区，其余二十三个乡镇仍按解放前区划不变，黄姚镇属二区管辖。1959年9月改称为黄姚人民公社。1984年7月，将原黄姚公社拆为黄姚镇和巩桥乡。2003年黄姚古镇景区正式成立。
			</p>
			</dd>
		</dl>
		
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>图文说明</p>
      			</blockquote>
			</dt>
			<div class="jumbotron step" style="width:800px;height:600px" id="title8" data-x="-5000" data-y="2000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body text-left" >
					    黄姚古镇方圆3 . 6公里，属喀斯特地貌。发祥于宋朝年间，有着近1 0 0 0年历史。自然景观有八大景二十四小景;保存有寺观庙祠2 0多座，亭台楼阁1 0多处，多为明清建筑。著名的景点有广西省工委旧址，古戏台，安乐寺等。
					  </div>
					</div>
				</div>
				<div class="row">
					<img style="width:750px;height:410px" src="<%=request.getContextPath()%>/viewImage/5_1.png" alt="" >
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:800px;height:600px" id="title9" data-x="-5500" data-y="3000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body text-left" >
					    黄姚古镇方圆3 . 6公里，属喀斯特地貌。发祥于宋朝年间，有着近1 0 0 0年历史。自然景观有八大景二十四小景;保存有寺观庙祠2 0多座，亭台楼阁1 0多处，多为明清建筑。著名的景点有广西省工委旧址，古戏台，安乐寺等。
					  </div>
					</div>
				</div>
				<div class="row">
					<img style="width:750px;height:410px" src="<%=request.getContextPath()%>/viewImage/5_2.png" alt="" >
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:850px;height:700px" id="title10" data-x="-5000" data-y="4000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="col-md-5">
					<img style="width:350px;height:630px" src="<%=request.getContextPath()%>/viewImage/5_3.png" alt="" >
				</div>
				<div class="col-md-6 col-md-offset-1">
					<div class="row">
						<img style="width:260px;height:160px" src="<%=request.getContextPath()%>/viewImage/5_4.png" alt="" >
					</div>
					<div class="row">
						<img style="width:260px;height:160px" src="<%=request.getContextPath()%>/viewImage/5_5.png" alt="" >
					</div>
					<div class="row">
						<img style="width:260px;height:160px" src="<%=request.getContextPath()%>/viewImage/5_6.png" alt="" >
					</div>
					<div class="row">
						
						<div class="panel panel-default col-md-9" >
						  <div class="panel-body text-left" >
						    黄姚古镇方圆3 . 6公里，属喀斯特地貌。发祥于宋朝年间，有着近1 0 0 0年历史。自然景观有八大景二十四小景;保存有寺观庙祠2 0多座，亭台楼阁1 0多处，多为明清建筑。著名的景点有广西省工委旧址，古戏台，安乐寺等。
						  </div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		
		<div class="jumbotron step" style="width:850px;height:700px" id="title11" data-x="-5500" data-y="5000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="col-md-5">
					<img style="width:360px;height:260px" src="<%=request.getContextPath()%>/viewImage/5_8.png" alt="" >
				</div>
				<div class="col-md-5 col-md-offset-1">
					<img style="width:360px;height:260px" src="<%=request.getContextPath()%>/viewImage/5_9.png" alt="" >
				</div>
			</div>
			<div class="row" style="margin-top:10px">
				<div class="col-md-5">
					<img style="width:360px;height:260px" src="<%=request.getContextPath()%>/viewImage/5_10.png" alt="" >
				</div>
				<div class="col-md-5 col-md-offset-1">
					<img style="width:350px;height:260px" src="<%=request.getContextPath()%>/viewImage/5_11.png" alt="" >
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
					    <a  href="<%=request.getContextPath()%>/viewImage/5_1.png" class="thumbnail">
					      <img src="<%=request.getContextPath()%>/viewImage/5_1.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a id="imageBoxTest"  href="<%=request.getContextPath()%>/viewImage/5_2.png" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/5_2.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/5_3.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/5_3.png" >
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/5_4.png" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/5_4.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/5_5.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/5_5.png" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/viewImage/5_6.png" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/viewImage/5_6.png">
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