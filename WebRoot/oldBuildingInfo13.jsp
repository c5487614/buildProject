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
    	<h3 class="text-center">归龙斜塔</h3>
    	<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址说明</p>
      			</blockquote>
			</dt>
			<dd>
			<p>归龙斜塔又称左江斜塔和水宝塔，位于广西崇左市郊东北二公里处，建在左江中的石头岛——熬头峰上，处于急湾激流之中，地势惊险。该塔是明朝知府李有梅于天启年间（1621年）建造，当时建三层，清康熙三十五年（1692年）知府徐越加建两层，成为五层砖塔，塔底直径5米，塔基身总高23.184米，塔身18.28米，塔身呈八角面体。</p>
			
			</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>历史文化</p>
      			</blockquote>
			</dt>
			<dd>
			<p>归龙斜塔还有很优美的传说。相传，在明朝庆隆年间，左江中间突然冒出了一块巨石，挡住了江流，旋涡浪翻，使许多过往的船只遭到没顶之灾。人们认定这是江中有妖龙在作怪，便修建这座宝塔以镇妖龙，故名为镇海宝塔。但妖龙不服，宝塔屡建屡塌。后来得到仙人的帮助，搬来半座山奠基，才把宝塔建成。可是妖龙仍不时出没为害。有一壮族青年得到仙人传授的整治妖龙之法后，把妖龙杀死，天下才太平，人们遂把镇海宝塔称为归龙塔。</p>
			</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>建筑特色</p>
      			</blockquote>
			</dt>
			<dd>
			<p>塔顶铸了一铣质葫芦盖顶，从不生锈，塔八面正檐，每一檐角悬挂铜铃一个，随风摆动叮当作响，悦耳动听，塔的外观古朴雄健，昂然挺拔，塔底层南和西南各开一拱门，从二层各开一个小窗。塔内螺旋砖梯逆时针绕至顶层，人走在阶梯上，倾斜感很强，据测塔身倾斜度为4度24分64秒，倾斜方向为西南偏西52度16分30秒，据专家考证是工匠在建造时考虑到江心风力和地基等因素而精心设计而成，是唯一人为建造的斜塔，整个宝塔依山顺势，结构稳固，造型和谐，自建成至今，虽已历时300多年，屡遭洪水冲刷，日晒风吹雨打，它仍然屹立不倒，充分体现我国古代人民建筑技术的高明。倾斜的宝塔，世上不多见，而坐落在江河的急流旋涡中间，更属奇观。它与苏州虎丘塔、辽宁绥中塔、上海松江护珠塔、湖北当阳铁塔、意大利比萨斜塔斜塔、德国肯道塔、英国议会大厦方塔共誉为世界八大斜塔</p>
			</dd>
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
					    <a href="<%=request.getContextPath()%>/images/glxt1.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/glxt1.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/glxt2.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/glxt2.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/glxt3.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/glxt3.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/glxt4.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/glxt4.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/glxt5.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/glxt5.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/glxt6.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/glxt6.jpg" style="width: 180px; height: 180px;">
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