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
    	<h3 class="text-center">老口村那告坡</h3>
    	<dl class="paragraph">
			<dt>
				<blockquote class="text-left bg-muted">
      			<p>村落历史</p>
      			</blockquote>
			</dt>
			<dd class="text-left">
			
			<p>
			在距今400多年的明清时期，覃氏三兄弟建造“覃氏大宅”，百间古宅排列有序，布局严谨，厚重凝练，气势恢弘。它是《好一朵茉莉花》电影原景地，隐于世的百年古村落，从大宅门上悬挂的“武魁”红木牌匾，以及部分古宅大门上的“粉署舒翘”、“贡元”等红木牌匾可以看出当年的覃氏家族求学氛围十分浓厚。凡是门上朱红色匾额皆是清皇室所赐或清年间所造，房屋皆保持着百年前的风貌，处处彰显着真正的历史沉淀与安详宁静并存的世外桃源。有《义勇军进行曲》作词者，中国现代戏剧奠基人之一的田汉故居，清嘉庆年间贡生覃献瑜故居，清同治年间国监生覃智和故居，清乾隆帝同寿者族老故居还有村里第一位土豪故居。
			</p>
			<p>座落于邕江河畔的“覃氏老宅群”始建于清乾隆至嘉庆年间（公元1780年），距今已经有200多年的历史，现存39栋庭院，100多间房，大约1000人口。全村人口，除了外嫁入村的妇女外，清一色都是覃姓家族，是南宁市至今为此，人们发现的历史最悠久的、最纯粹的覃氏家族古村落群。</p>
			<p>覃氏老宅群”属典型的明清时期南越壮族民居建筑风格，近年来，备受媒体公众青睐，多家著名媒体给予图文并茂的报道。2008年5月9日，新华网广西频道曾经作了报道《广西南宁市明清“覃氏大宅”》，2016年5月9日，人民网——南宁新闻网、《南宁日报》再次报道《南宁修缮古建筑群，200年“覃氏大宅”焕发新活力》。这里曾经是电影《好一朵茉莉花》的拍摄基地，解放初期，田汉、艾青、徐悲鸿、李可染、陆地、胡绳、安娥、唐明照、赵德清、谢芳春等文人墨客曾经居住于此，并留下千古传唱的艺术瑰宝。</p>
			<p>青砖石板、灰墙黛瓦、木刻门簪、镂雕石柱、神台仙桌、土地庙堂、石基夯墙……古屋老巷、哨楼墙垣、飞檐瓦砾构成的大大小小古建筑，分散在坡上坡下，似乎随意，却错落有致、布局严谨，于古朴中彰显建筑工匠的精湛工艺，在厚重中，突兀古人对建设家园的实诚希望与精神寄托。“西教村齐心禁约碑记”记载着村规民俗、覃氏家风族规，以及浓郁的尊师重教、求学进举的家训传承、价值取向。“贡元”“田汉故居”等等文化标志，赫然沉静地铭刻着，这片土地一代又一代族亲的历史担当；默然虔诚地告诉走进古村落的每一位旅者，这里完整地保存着广西稀缺的壮族古老的图腾和文化；无言真实地告诉我们这片本族古村落隐含的厚重文化历史底蕴。</p>
			<p>“覃氏老宅群”2009年被南宁市文化局列为南宁市文化点，是自治区政府近几年花大力投资修缮的“美丽南方”项目工程之一。我们走进村里时，正遇政府对古村小巷道路的大力度的修缮中，以提高她的旅游文化层次。改造后，这里将成为重要的景点加以推广。我们爬上山顶，从山上远眺，古村落依山傍水，犹如云南的大理古镇，静卧在一片绿油油的稻禾中，被一汪清澈的湖水环绕。登高鸟瞰，便有“深山藏古镇，青峰倾廓门”的情韵。</p>
			<p>“改旧依旧”会让这片深闺家族古村落揭下羞涩的容颜，被世人所目睹，广西覃氏家族源远流长的历史文化，也不必再像过去一样，过分低调，应该让外界所认识！历史与现代，将在这里具有高审美层次地大胆融合，这片古宅院将在挑剔的现代人面前，自信地绽放出她知性美丽的笑靥。</p>
			<p>踏在古老光滑的青石板上，抚摸着斑驳沧桑的老土墙，我们放慢脚步，屏住呼吸，生怕唤醒了埋藏在曲折通幽小巷里的凄婉爱情故事，更担心祖先怪罪我们这些后裔，指责我们丢失了200年传承下来的谦逊矜持包容含蓄、敏于行纳于言的士大夫品格。</p>
			<p>景观可以复制，文化难以克隆。青石板写满故事，灰黛瓦铭记历史。“覃氏大宅”将携带着我们覃氏家族源远流长的文化血脉和深厚生动的传统谜语，从历史走向现代，走向未来。</p>
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
					    <a  href="<%=request.getContextPath()%>/images/nagaopo1.jpg" class="thumbnail">
					      <img src="<%=request.getContextPath()%>/images/nagaopo1.jpg" >
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a  href="<%=request.getContextPath()%>/images/nagaopo2.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo2.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo3.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo3.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo6.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo6.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo7.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo7.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo4.jpg" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo4.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-2">
					    <a href="<%=request.getContextPath()%>/images/nagaopo5.jpg" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/nagaopo5.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
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
					  <!-- 
					  <div class="col-sm-4">
					    <a  href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWgAAAEOCAYAAACkSI2SAAAM8ElEQVR4Xu3cS2sUWxQF4FIRRBEHguhEBJ2IOBH8/z9AcCKiAwcSB4qgID5QRO/lNJxwONarg52sbr8Mk36s+va+K3Ur1Z77+PHjf4MvAgQIEIgTOKeg42YiEAECBDYCCtoiECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2AwQIEAgVUNChgxGLAAECCtoOECBAIFRAQYcORiwCBAgoaDtAgACBUAEFHToYsQgQIKCg7QABAgRCBRR06GDEIkCAgIK2A1sLvH79enj16tUfz7t3795w586d0dd79+7d8OLFi+HXr1/HP79w4cJw//794ebNm38858mTJ8OnT59WPXbbAxjLUl7j8uXLw6NHj4ZLly5tXvLz58/D06dPh58/f06+xdQx7DL/tsfr8fsroKD3d3ZnkrwWz7Vr14bHjx9vMrSF136/BqzPuXjx4qYAr169Ojx//nx4+/bt0BdcW4q1MMvr118Ic78E1oDU922zfP/+fVPE3759G9rv1+M6f/78ce76HvWXVH+8u86/5hg95nAEFPThzHLnR9IWcV+UtbD6wq2F2BdZLe3+8WNlXg5srFi3PeCavzyvP3Nvi/XWrVvDgwcPhnpM/bHWx5bXqb9w5n4Z/a382x6vx++/gILe/xme2hG0JdYX7lj51cf//v178lJGG779BVBLsv58rEC3PfD20szYmXj/fwfll8L79+//yF5/WfQZd51/2+P1+P0XUND7P8OII6jl114iGPveXNipyx7lOe1liP5a8VqAtZdixi7T9L8oxs6ed51/7XF63OEIKOjDmeWZHcnU5Yf6/VKoN27c2FwyaL/aMi/fn7q8MXb54Pbt25vXa//oWM5oy1e5tl2/5v4Q2WZpz9DnrnNPnT1vm7+/NHJmw/PG0QIKOno8ueH6OyHGzmr7Oxnax4xdg14q6LEz1LE/WtYz9/4SxJzm2Ov0j1+6ZHOS/LkTlixBQEEnTGHPM4xde20vSZTDm7u7o/zs4cOHo3dStDRjBd2+TznzvX79+uZ16tl5vWVujnjqD5n9c+YeN3UnyFL+PR+9+DsWUNA7Bv5XXr6/w6Pc2zx261rr0V+jfvny5ebe5/7SR33O1DXe/mx+7WWN8rpry7kt4Kkzc2fQ/8q2n95xKujTsz7odxr7I96zZ89mC7e/Ne/Nmzezj58rwKU7NMbw6+utuRQyd4tefe2lgl76+UEviIM7kYCCPhGbJ80VXj0DPjo6Gv0wSn1uX9AfPnyYfPzSXRxtQa+5y6OW5doPvqy5D9tdHP67+NsCCvpvix7w683d5ztWoEufAOxL7+vXr8cfB9/mPuj6x7vyib/y9ePHj9Fr3v2Z7tS90OWj3e1Hvsvz1pz9ug/6gJf/jA5NQZ8R/D6+bXuWuuZDGktnvWN3Tpzkk4TlOV++fNl8oOTKlSvH/37G3IdRxi5r1KIvZ+D1Y+xlTu1xLF3fPkn+fdwFmU9HQEGfjvNBvMvUJwnbM8f+8sLUz6YuGWz7b1mM3Zc89bHzpdvvpq5Jt5mWCnrb/AexGA5iZwIKeme0h/vCtRT7I5y6ntvfclefN/eJvaV/DW7sX6Qr718uk7QfVCnvVc6W7969e3xXydJk+rPrNbfQ9a+5lH8pg58TKAIK2h4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBVQ0KGDEYsAAQIK2g4QIEAgVEBBhw5GLAIECChoO0CAAIFQAQUdOhixCBAgoKDtAAECBEIFFHToYMQiQICAgrYDBAgQCBX4H0C/RoU1N6ucAAAAAElFTkSuQmCC" style="width: 180px; height: 180px;">
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