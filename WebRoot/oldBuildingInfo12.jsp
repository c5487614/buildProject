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
    	<h3 class="text-center">真武阁</h3>
    	<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址说明</p>
      			</blockquote>
			</dt>
			<dd>
			<p>真武阁在容县城东绣江北岸一座石台上，建于明万历元年（1573）。登阁远望，隔着南岸广阔的平原，东南山岭巍然矗立，气势雄壮。阁本身高13米，加上台高近20米，也是周围区域观赏的对象。1982年被国务院定为全国重点文物保护单位。</p>
			<p>经略台始建于唐乾元二年（759年）。著名诗人元结到容县都督府任容管经略使，在容州城东筑经略台，用以操练兵士，游观风光。明朝初年在经略台上建真武庙，明万历元年（1573年）将真武阁庙增建成三层楼阁，这就是现在的真武阁。</p>
			<p>真武阁，阁三层，三檐，呈方塔形，通高13.2米，面宽13.8米，进深11.2米，全阁用3000条大小不一的格木构件，巧妙地串联吻合，曾经受多次地震和狂风的袭击依然安然无恙，被兴誉为“天南杰构”。</p>
			</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>建筑特色</p>
      			</blockquote>
			</dt>
			<dd>
			<p>真武阁有三大特色：一是地基既没有坚硬的石头，也没有牢固的钢筋水泥，而全是在砖墙内填上夯实的河砂，经略台、真武阁建在砂堆上，历千年而不倒；二是全楼阁不用一颗钉子，全部是木隼结构，以杠杆原理串联吻合，数百年里却稳如泰山；三是二楼中有四根大柱子承受上层楼板、梁、柱和屋瓦的千钧重量，柱脚却悬空不落地。</p>
			<p>真武阁是一座完全木质结构的建筑物，整个楼阁共有三层，本身高13米，加上台高近20米。全阁为杠杆式纯木结构，通高13.2米，面宽13.8米，进深11.2米，全阁不用一件铁器，用近3000条格木构件，凿榫卯眼，斜穿直套，以杠杆结构原理，串联吻合，彼此扶持，互相制约，合理协调组成一个优美稳固的统一整体。</p>
			<p>真武阁二十根笔直挺立的巨柱中，八根直通顶楼，是三层楼阁全部荷载的支柱。柱之间用梁枋相互连接，柱上各施有四朵斗拱，上面承托四根棱木，有力地把楼阁托住。二层楼的四根大内柱，虽承受上层楼板、梁架、配柱和阁瓦、脊饰的沉重荷载，柱脚却悬空离地3厘米，是全阁结构中最精巧、最奇特的部分。这是“杠杆原理”所造成的悬柱奇观，就是将从底层通到二层的八根通柱，变成二、三层的支点，在通柱上分上下两层横贯七十二根（每柱九根，共七十二根）挑枋,这些挑枋象天平上的横杆一样，外面长的一端挑起宽阔的瓦檐,里面短的一端跳起二层的内柱，使它头顶千斤,脚不落地。这种方法在我国的古建筑中应用较多，而真武阁则用得特别巧妙奇绝。四百多年来，真武阁象一架精确的的天平，经历了5次地震、3次特大台风，仍安然无恙，其结构之奇巧，举世无双，被誉为“天南杰构”、“天南奇观”、“古建明珠”、“天下一绝”，在当地的民间故事中更是鲁班建造的“神仙楼”。</p>
			<p></p>
			<p></p>
			</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>历史文化</p>
      			</blockquote>
			</dt>
			<dd>
			<p>真武阁二层以上比底层收小很多，三重屋檐出挑深远而楼层很低，比一般楼阁的出檐节奏更快，有强烈的韵律感和动势，使得它不象是一座三层建筑，倒更象一座单层建筑而有三层重檐。但它又较一般重檐建筑更为从容和层次鲜明。屋坡舒缓流畅，角翘简洁，增加了舒展大度的气魄，非常清新飘逸，是充分表现中国建筑屋顶美的佳作。真武阁不以浓丽华贵取胜，而以轻灵素雅见长，灰黑色的铁黎木不加油饰，屋面为小青瓦镶绿脊，色调极清雅柔和。</p>
			<p>古代容州，道教盛行。都峤山被道家封为天下第36洞天中的第20洞天（中国的五岳：泰山为第二洞天，衡山为第三洞天，华山为第四洞天，恒山为第五洞天，嵩山为第六洞天。另峨眉山为第七洞天，庐山为第八洞天。洞天指有灵气的风景）。真武阁的修建与命名，是根据道家五行相生相克的理论得来的——都峤山在真武阁之南，又名南山。道家认为：南方属丙丁火，克得容城的茅房常常发生火灾，“南山耸峙。实为火宿”（见《容县志》）。因此，明代的容县人在古经略台上建起了真武阁，内敬踏龟蛇的玄武大帝（真武大帝，水神北帝）像，“祀北帝以镇离火也”。</p>
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
					    <a href="<%=request.getContextPath()%>/images/zwg1.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg1.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/zwg2.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg2.jpg" style="width: 270px; height: 180px;">
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
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/zwg4.jpg" style="width: 270px; height: 180px;">
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