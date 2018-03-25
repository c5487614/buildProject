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
<script type="text/javascript" src="<%=request.getContextPath()%>/javascripts/imgbox/jquery.imgbox.js"></script>

<script type="text/javascript"> 
$(document).ready(function(){
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_oldbuidingInfo').addClass('active');
	
	$('a').imgbox();
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
    	<h3 class="text-center">老口村那告坡</h3>
    	<dl class="paragraph">
			<dt>村落历史</dt>
			<dd>
			
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
			<dt>建筑资料</dt>
			<dd>又名青山塔，是青秀山的标志。位于青秀山之巅，始建于明代万历年间，为时任吏部左侍郎的南宁籍进士肖云举所建。取佛经“水行龙力大，陆行象力大”之意，故命名为“龙象塔”。海拔204米，高十多丈，八角九层，重檐砖结构。
原塔高挺耸立，有十余丈高，塔为八角形，九级重檐。明代天启四年（1624），龙象塔被雷击塌顶端两层，一直未能修复。直至1937年，邕宁县政府恐塔成为日机轰炸南宁导航目标，而被拆除，从此在青秀山凤翅岭上屹立了数百年的龙象塔彻底地从人们的视线中消失了……解放后，南宁政府为了恢复青秀山风景区，参照明代风格的宝塔，在原塔的基础上，重建了龙象塔。重建后的龙象塔外形仍为八角形，九层，只是结构改为砖混结构。塔高52.35米，宽12米，绿色琉璃瓦，内设旋梯207级直达塔顶，每层檐角下均悬挂铜铃（共72只）。站在塔顶，鸟瞰邕江两岸，抚今追昔，不胜感慨。</dd>
		</dl>
		<dl class="paragraph">
			<dt>龙象塔的由来</dt>
			<dd>
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
			<dt>遗址地形地貌</dt>
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
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/180x180" alt="180x180" src="<%=request.getContextPath()%>/images/longxiangta3.jpg" style="width: 180px; height: 180px;">
					    </a>
					  </div>
					</div>
					<div class="row">
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
					      <img data-src="holder.js/270x180" alt="180x180" src="<%=request.getContextPath()%>/images/longxiangta4.jpg" style="width: 270px; height: 180px;">
					    </a>
					  </div>
					  <div class="col-sm-4">
					    <a href="#" class="thumbnail">
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
  
  </div>
</div>
</body>  
</html>