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
    	<h3 class="text-center">龙象塔</h3>
    	<dl class="paragraph">
    	
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>遗址说明</p>
      			</blockquote>
      		</dt>
			<dd class="text-left">龙象塔是在广西首府南宁的邕江江畔，远处连绵青山上的一处宝塔。看到它不由得联想起杭州西湖上矗立的雷峰塔，以及钱塘江畔的六和塔。塔，中国人传奇故事中不可或缺的神秘元素之一，至今在中国人的心里，眼里都是一处神秘的禁地。又名青山塔，是青秀山的标志。位于青秀山之巅，
始建于明代万历年间，为时任吏部左侍郎的南宁籍进士肖云举所建。取佛经“水行龙力大，陆行象力大”之意，故命名为“龙象塔”。海拔204米，高十多丈，八角九层，重檐砖结构。</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>建筑资料</p>
      			</blockquote>
			</dt>
			<dd class="text-left">又名青山塔，是青秀山的标志。位于青秀山之巅，始建于明代万历年间，为时任吏部左侍郎的南宁籍进士肖云举所建。取佛经“水行龙力大，陆行象力大”之意，故命名为“龙象塔”。海拔204米，高十多丈，八角九层，重檐砖结构。
原塔高挺耸立，有十余丈高，塔为八角形，九级重檐。明代天启四年（1624），龙象塔被雷击塌顶端两层，一直未能修复。直至1937年，邕宁县政府恐塔成为日机轰炸南宁导航目标，而被拆除，从此在青秀山凤翅岭上屹立了数百年的龙象塔彻底地从人们的视线中消失了……解放后，南宁政府为了恢复青秀山风景区，参照明代风格的宝塔，在原塔的基础上，重建了龙象塔。重建后的龙象塔外形仍为八角形，九层，只是结构改为砖混结构。塔高52.35米，宽12米，绿色琉璃瓦，内设旋梯207级直达塔顶，每层檐角下均悬挂铜铃（共72只）。站在塔顶，鸟瞰邕江两岸，抚今追昔，不胜感慨。</dd>
		</dl>
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>龙象塔的由来</p>
      			</blockquote>
			</dt>
			<dd class="text-left">
			<p>
			明朝万历四十七年（1619年），南宁市人萧云举高中进士并担任朝廷吏部侍郎后所建。原塔高30多米，后来被雷电击塌了两层。1937年8月，当地政府怕此塔成为日机轰炸南宁的目标，下令将塔拆除。1985年12月到1987年9月，市政府按明代建筑风格重新建龙象塔。新塔的高度为52.35米，塔基直径12米，八角九层，塔顶部为绿色琉璃瓦，每层翘角下均悬挂铜玲，共72只。塔内有207级旋梯，可从一楼登到九楼，在最高层可俯视南宁市全景。
			</p>
			<p>
			龙象塔位于青秀山凤翅岭上。传说肖云举的祖坟葬在凤凰戏牡丹之风水宝地，故肖云举才能鸿运当头做得大官。但风水先生说，凤凰是会飞的，肖家如果想子孙代代做大官，必须设法将凤凰留住，要把凤凰留住就必须将它的翅膀压住才行。肖云举相信风水先生的话，便出资在青秀山凤翅岭顶上建造了龙象塔，企图以宝塔压住凤凰的翅膀。当然也还有另外一种传说，当时为官者和有钱人都迷信风水，不少州县所在地，如有河流都须建宝塔封锁水口，认为这样才能避免财源外流，州县才能兴旺发达。肖云举建塔一是为自己，二是为了南宁，所以当时的南宁郡守也很支持他建造龙象塔。
			</p>
			<p>
1937年8月，当地政府怕此塔成为日机轰炸南宁的目标，下令将塔拆除。1985年12月到1987年9月，市政府按明代建筑风格重新建龙象塔，新塔的高度为52.35米，塔基直径12米，八角九层，塔顶部为绿色琉璃瓦，每层翘角下均悬挂铜玲，共72只。塔内有207级旋梯，可从一楼登到九楼，在最高层可俯视南宁市全景。
			</p>
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
					    <a  href="<%=request.getContextPath()%>/images/longxiangta1.jpg" class="thumbnail">
					      <img src="<%=request.getContextPath()%>/images/longxiangta1.jpg" >
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a id="imageBoxTest"  href="<%=request.getContextPath()%>/images/longxiangta2.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/longxiangta2.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/longxiangta3.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/longxiangta3.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/longxiangta4.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/longxiangta4.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="<%=request.getContextPath()%>/images/longxiangta5.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/longxiangta5.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a  href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="data:image/png;base64,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" style="width: 180px; height: 180px;">
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