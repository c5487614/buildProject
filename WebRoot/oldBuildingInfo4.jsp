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
	$('#menu_oldbuidingInfo').addClass('active');
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
    	<h3 class="text-center">杨美古镇</h3>
    	<dl class="paragraph">
			<dt>遗址说明</dt>
			<dd>
			<p>扬美古镇，位于广西壮族自治区首府南宁市的西南部，距离南宁市区仅36公里，公路、水路、铁路俱通过这里。扬美古镇始建于宋代，繁荣于明末清初，至今已有上千年的历史。自建镇到民国年间，一直是近百公里范围的商品集散地，繁荣一时，素有“小南宁”之称。扬美是南宁市明清古建筑保留得最为完整的地方，保留下来的文化遗产遍布全镇，现有二百多处，大多分布在古镇内的各街巷里，特色鲜明的明清民居有的还完好无损，因此今天又得名“扬美古镇”。以古镇、老街、碧水、金滩、奇石、怪树著称，也是辛亥革命党人黄兴、梁烈亚进行革命活动的根据地。现有700余栋明清建筑。保留较为完整的景点有：清代一条街、明代民居、魁星楼、黄氏庄园、古埠码头等，扬美江滩以及周围的左江亦风景如画，其青坡怀古、剑插清泉、滩松相呼、雷峰积翠、亭对江流、金沙月夜、龙潭夕影、阁望云霞等八景尤负盛名。</p>
			
			</dd>
		</dl>
		<dl class="paragraph">
			<dt>古镇风情</dt>
			<dd>
			<p>扬美至今依然保持着明清时期的古街、古巷、古祠、古庙、古宅、古树、古闸门、古码头、文武塔、烽火台，古色古香，韵味无穷。入得镇来，只见清代临江古闸如同威武的将军，镇守着古镇的大门。其侧的芙蓉古树，枝蔓参天，历经风雨沧桑，见证着古镇的古今。沿着光洁如洗的青石板路，两旁300多米尽是青砖黑瓦、砖木结构的清代店铺，这就是建于1832年的“临江街”。这里曾是一条繁华的街道，那些承载着厚重历史的飞檐屋脊、陈砖旧瓦、柱础石雕，向世人诉说着往日的荣耀。这里虽早已归于宁静，但古朴中却蕴含着生机，陈旧中正孕育着希望，行走在这条清明古街上，融进这韵味悠远的环境里，绵长的思绪不仅会追寻逝去的年代，也会飞向往后的岁月，思考古镇的重光、文明的延续。</p>
			<p>走进古镇，明清古宅鳞次栉比，名胜古迹星罗棋布，七柱屋、举人屋、进士第、慕义门、禁约碑、黄氏庄园……无不造工精美，细腻秀丽，古色古香，典雅宜人。更有扬美古乐，源远流长，丰富多彩，弹奏的乐器有扬琴、秦琴、大弦琴、胡琴、笛子、锁呐、喉管等。座座古宅如同泊在岸边的船只，依偎在古镇。夜幕低垂，丝竹之声从古镇深处悠悠地传出，经柔柔的晚风吹送到江上，更使扬美古镇声名远播。古老的街巷，陈旧的宅院，古旧的窗棂，幽深的庭院，刻龙雕花的飞檐，布满青苔的墙脚，弥漫着平淡与安宁。这就是古镇居民祖祖辈辈恋恋不舍的家园，也是人们涤去心头浮尘、消除精神疲惫的好去处。每到节假日，便有成百上千的城里人来这里游览、休闲，远离开城市的喧嚣，享受平和与宁静。</p>
			</dd>
		</dl>
		<dl class="paragraph">
			<dt>古镇人文</dt>
			<dd>
			<p>扬美古镇居民大多是从山东迁居于此，少部分来自广东，经商到这里后定居下来，所以，它的民居建筑风格深受齐鲁文化的影响，四平八稳，庄重典雅，同时也保留有部分岭南的传统特色，细腻秀丽。扬美人生活的地方周边都是壮族的，可以说是壮乡广西的一个汉族聚居地，但扬美却保持了汉族的生活传统，她的语言——平话，民俗如师公戏、升花等却与南宁市其他地方的汉族居民的大体一样，不过，扬美人也吸收了壮族的部分优良传统，体现了汉壮融合的特点，扬美古镇今天有人口5300多人，但却拥有三十四个姓氏，这体现了古镇人民大杂居的特点，也从另一个侧面反映了扬美古镇的繁荣，正因为扬美古镇繁荣了，所以才不断有不同姓氏的商人迁居到这里。扬美古镇虽无崇山峻岭，但岭坡俊俏秀丽，左江环流于此，江水清澈透底，岸边古树参天，翠竹成林，红棉花似火，水流石怪，奇、险、秀、怪、幽融为一体。前人曾以两首七言绝句诗，描绘了古镇的八大景，一首是“环绕青坡异草花，清泉剑影夕阳斜。滩松相呼渔歌晚，文阁登临望紫霞。”另一首是“亭对江流一曲流，金沙夜月泛轻舟，雷峰积翠无边景，龙潭夕影静在秋。”正因为扬美风景秀丽，所以明朝旅行家徐霞客当年乘船自南宁到扬美时说：“至扬美江，石始露奇……余谓阳朔山峭临江，无沿岸之石，建溪激石，无此石奇”。今天也有人说：“桂北阳朔桂南扬美”。电影、电视《杜鹃声声》、《邓小平在广西》、《石达开》、《三相亲》、《血城鸳鸯镯》、《我的父亲》、《响亮》等就是慕名到这里拍摄的。</p>
			<p>扬美古镇地灵人杰，自古人才辈出。过去豪贾巨商云集，今天艺人富商旅居海内外。其实更令人叹服的是明清两代科举考试中出现的众多科举人才。据统计，扬美一个小小的镇内在明清两代就出了6个进士、4个举人、30多个贡生。即使在文化发达的中原也是少见的，其中有一位举人连续两年考中广西第一名，在科举考试中，省试第一名称为解元，这名两届解元后来自费上京参加会试，在那黑暗的年代里，他没有考中，于是觉得无颜面对江东父老，就辗转各地，最后流落到何处，也无人知晓。扬美古镇出现的这么多科举人才使扬美有着良好的文化氛围，给扬美增添了浓厚的文化底蕴这也是扬美的一道靓丽文化风景线。当地有碑文为证。</p>
			</dd>
		</dl>
		
		<dl class="paragraph">
			<dt>遗址地形地貌</dt>
			<dd>
				<div class="col-sm-5">
			      <div class="row">
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/ymgz1.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/ymgz2.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/ymgz3.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/ymgz4.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/ymgz5.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/ymgz6.jpg" style="width: 180px; height: 180px;">
					    </a>
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