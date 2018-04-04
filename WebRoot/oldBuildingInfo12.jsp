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
    	<h3 class="text-center">那良村那蒙坡</h3>
    	<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>村落历史</p>
      			</blockquote>
			</dt>
			<dd class="text-left">
			
			<p>
			相传，500年前，一个年轻人从刘圩游历到此，看到这里山清水秀，具有风水中“一龙二虎，四鹤归潭，五水归元”之势，很是高兴，于是决定定居下来，并改姓为“黄”（取谐音“旺”之意）。之后，有一个陆姓老板做生意途经此地，被这里的美丽风光所吸引，遂有迁居于此的念头，于是与黄姓青年商量。黄姓青年把陆老板带到山顶，对他说：你站在这里向前看，能看到的地方就是你的田地（你的田地用壮话来说就是“那蒙”）。不久，孙姓人家又从与那蒙相距1.5公里的新江街搬迁过来，同样也采用了这样的方法确定居住地。数百年过去，定居下来的黄、陆、孙三姓人家亲如兄弟，和睦相处，谱写了民族团结和谐篇章。
			</p>
			<p>那蒙坡历史悠久，形成了比较独特的壮族文化，嘹罗山歌和还球歌圩习俗，传唱百年，远近闻名。在邕宁区各乡镇歌圩中，新江镇那蒙坡、那团村一带盛行的以“抛绣球”为原型、“嘹啰”山歌为主调的“还球歌圩”最具特色，被称为“千年古调”的壮族三声部民歌“嘹啰山歌”，早在2008年便列入了自治区非物质文化遗产名录。</p>
			<p>
			在那蒙坡的历史中，曾经留下深刻印记的，是上世纪60年代，先后有三批知识青年响应党中央和毛主席号召，参加上山下乡运动来到这里插队，接受贫下中农再教育。这三批热血青年共37人，他们把那蒙坡当作自己的家，把满腔热血和火热的青春贡献给那蒙坡，在广阔天地里历经磨炼，不断成长，一部份人后来进入政界、商界、学术界、文艺界等等，成为社会精英。
			</p>
			<p>
			那蒙坡内分布有大小不一的七个水塘，四周青山环绕，宛如绿色屏障，得天独厚的自然环境令人赞叹不已。为此，有关部门在对那蒙坡进行规划建设时，严格遵循“因地制宜、合理布局、保护环境、延续特色”的原则，充分利用丘陵、缓坡和其它非耕地，做到既保护整体景观，又可以挖掘文化内涵，他们在“山容水意、竹乡壮韵”这一设计理念指导下，以良好的山水格局和自然环境为基底，突出壮族特色韵味，将自然景观和人文景观有机结合，形成自然朴素、清幽闲适、景观优雅、有文脉传承的可持续发展的新农村风貌。
			</p>
			<p>
			为遵从那蒙坡原有自然空间布局，在对村内七个水塘的水质进行改造的同时，严格按照“二湖、五片、五组团”的整体规划，利用水塘连成的水域空间，建造知青湖和那陆湖，并在周边广设景观带，使之成为那蒙美丽的明信片。与此同时，用心经营好那蒙坡自然形成的五片绿化空间，精雕细琢，打造成具有悠闲功能的公共绿地；并在原有五个居住组团基础上，科学规划，合理布局，相应增加宅基地，以满足今后村庄居住发展。此外，在道路、空间、建筑、绿化及其他综合技术指标等方面，均作了细致而详尽的设计，努力展示好那蒙坡最动人的风光、风情和风貌。
			</p>
			<p>
			 今天的那蒙坡，一幢幢楼房掩映在绿树翠竹丛中，新旧相衬，错落有致；美丽的庭院和各处景观正形成各自园林特色；远望那蒙，青山碧水，老村新貌，生机盎然，一派安宁和谐景象，把人带入心旷神怡的境地，一座“山容水意”、寓情于景的综合示范村正走出深闺，大方向世人展现其亮丽容颜。
			</p>
			</dd>
		</dl>
		
		
		
		
		<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>村落图片</p>
      			</blockquote>
			</dt>
			<dd>
				<div class="col-sm-10">
			      <div class="row">
					  <div class="col-sm-2">
					    <a  href="<%=request.getContextPath()%>/images/namengpo1.jpg" class="thumbnail">
					      <img src="<%=request.getContextPath()%>/images/namengpo1.jpg" >
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a  href="<%=request.getContextPath()%>/images/namengpo2.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/namengpo2.jpg" >
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/namengpo3.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/namengpo3.jpg" >
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/namengpo4.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/namengpo4.jpg" >
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/namengpo5.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/namengpo5.jpg" >
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/namengpo6.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/namengpo6.jpg">
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/namengpo7.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/namengpo7.jpg" >
					    </a>
					  </div>
					  <!--
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo8.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo8.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo9.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo9.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo10.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo10.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					   
					  <div class="col-sm-4">
					    <a  href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="data:image/png;base64,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" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					   -->
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