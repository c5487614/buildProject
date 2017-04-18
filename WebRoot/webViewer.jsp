<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
<head> 
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">


<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<!-- <script src="<%=request.getContextPath()%>/js/jquery-2.0.3.min.js"></script> -->
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<style type="text/css">
/* Cube */
.cube {

}

.cube h1 {
    font-weight:bold;
    border-bottom:3px solid black;
    font-size:70px;
    margin-bottom:30px;
}
.cube ul li:before {
    content: "⟩ \0020"
}

.rightFace,
.leftFace,
.topFace,
.backRightFace,
.backLeftFace,
.bottomFace {
        width: 700px;
        height: 700px;
        
}

.rightFace,
.leftFace,
.topFace {
}

.leftFace {
}

.rightFace {
}

.topFace {
}

.topFace {
}

</style>
<title>test</title>
</head>
<body>

	<div id="impress" class="container">
		<div class="jumbotron step" style="width:800px;height:500px" id="title" data-x="0" data-y="0" data-scale="1" data-rotate="0">
			<p class="bg-success">
				<div></div>
			</p>
			<blockquote>2017</blockquote>
			<p class="">
			<div style="height:15px;background-color:#FFFFFF" class="bg-success"></div>
			<h1 class="text-right" style="font-family:STXingkai">古镇图集</h1>
			<blockquote>
				<footer>in Nanning</footer>
			</blockquote>
			
			</p>
			<img src="<%=request.getContextPath()%>/viewImage/1_1.png" alt="" class="img-rounded">
		</div>
		
		<div class="step" style="width:800px;height:500px" id="title1" data-x="-1500" data-y="1000" data-scale="1" data-rotate="0.5">
			<div>
				<blockquote>
				  <p>目录</p>
				</blockquote>
				<div class="row">
				  <div class="col-md-2">
				  	<div class="row">
				  		<img style="width:95px;height:195px" src="<%=request.getContextPath()%>/viewImage/2_1.png" alt="" >
				  	</div>
				  	<div class="row">宾<br/>阳<br/>蔡<br/>氏<br/>古<br/>宅<br/></div>
				  </div>
				  <div class="col-md-2">
				  	<div class="row">
				  		<img style="width:95px;height:195px" src="<%=request.getContextPath()%>/viewImage/2_2.png" alt="" >
				  	</div>
				  	<div class="row">桂<br/>林<br/>恭<br/>城<br/>文<br/>庙<br/></div>
				  </div>
				  <div class="col-md-2">
				  	<div class="row">
				  		<img style="width:95px;height:195px" src="<%=request.getContextPath()%>/viewImage/2_3.png" alt="" >
				  	</div>
				  	<div class="row">黄<br/>姚<br/>古<br/>镇</div>
				  </div>
				  <div class="col-md-2">
				  	<div class="row">
				  		<img style="width:95px;height:195px" src="<%=request.getContextPath()%>/viewImage/2_4.png" alt="" >
				  	</div>
				  	<div class="row">马<br/>胖<br/>鼓<br/>楼</div>
				  </div>
				  <div class="col-md-2">
				  	<div class="row">
				  		<img style="width:95px;height:195px" src="<%=request.getContextPath()%>/viewImage/2_5.png" alt="" >
				  	</div>
				  	<div class="row">三<br/>江<br/>风<br/>雨<br/>桥</div>
				  </div>
				  <div class="col-md-2">
				  	<div class="row">
				  		<img style="width:95px;height:195px" src="<%=request.getContextPath()%>/viewImage/2_6.png" alt="" >
				  	</div>
				  	<div class="row">真<br/>武<br/>阁</div>
				  </div>
				</div>
			</div>
		</div>
		<div class="jumbotron step" style="width:800px;height:600px" id="title2" data-x="-1000" data-y="2000" data-scale="1" data-rotate="0">
			<div class="row">
				<img style="width:710px;height:430px" src="<%=request.getContextPath()%>/viewImage/3_1.png" alt="" >
				<div class="panel panel-default">
				  <div class="panel-body">
				    蔡氏古宅位于柳南高速公路边上的广西宾阳县古辣镇境内，是保存较为完好的古建筑群，堪称中国岭南古建筑的瑰宝。占地7 0多亩的蔡家大院始建于明代，后历经数百年的不断修缮，逐渐形成规模。走进蔡家大院，人们禁不住被这座古色古香的深宅大院的气派所吸引，更为大院的建筑风格和建筑艺术所惊叹。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:800px;height:700px" id="title3" data-x="-1500" data-y="3000" data-scale="1" data-rotate="0">
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
				  <div class="panel-body">
				    院内地面用大青石或青砖铺就，主道和非主道的铺设也有等级差别。房屋雕梁画栋、飞檐走檩，门窗饰以"福禄寿"等篆文图案，前门亦有山水画及篆文书法。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:900px;height:600px" id="title4" data-x="-1000" data-y="4000" data-scale="1" data-rotate="0">
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
				  <div class="panel-body">
				    大院建筑群分为"老屋"和"新屋"两部分共三处，均为三进式青砖瓦房。正厅最高，二厅、三厅渐次递减。古建筑群中的"新屋"部分更显特色，对称艺术突出，更加体现出古屋的庄严与威势。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:900px;height:600px" id="title5" data-x="-1500" data-y="5000" data-scale="1" data-rotate="0">
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
				  <div class="panel-body">
				    大院还保存着具有典型西方建筑特点的洋楼，虽然破坏较为严重，但是风貌依旧。蔡家大院整座建筑富有艺术性，体现出深厚的文化底蕴，是明清时期岭南民居的典型代表，具有较高的旅游开发和文物保护价值。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:800px;height:600px" id="title6" data-x="-3000" data-y="2000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body" >
					    文庙即孔庙，又称学宫，是祭祀孔子的祠庙。位于桂林市恭城县西山南麓，是广西保存最完整的孔庙，也是全国四大孔庙之一。
					  </div>
					</div>
				</div>
				<div class="row">
					<img style="width:750px;height:410px" src="<%=request.getContextPath()%>/viewImage/1_1.png" alt="" >
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:800px;height:500px" id="title7" data-x="-3500" data-y="3000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="col-md-8">
						<img style="width:500px;height:300px" src="<%=request.getContextPath()%>/viewImage/4_1.png" alt="" class="img-rounded" >
					</div>
					<div class="col-md-4">
						<div class="row">
							<img style="width:150px;height:150px" src="<%=request.getContextPath()%>/viewImage/4_2.png" alt="" class="img-circle" >
						</div>
						<div class="row">
							<img style="width:150px;height:150px" src="<%=request.getContextPath()%>/viewImage/4_3.png" alt="" class="img-circle" >
						</div>
					</div>
				</div>
				
				
				<div class="panel panel-default" style="margin-top:50px">
				  <div class="panel-body">
				    文庙坐北朝南，南偏东6 度，俯视茶江，背靠印山，依山而建，逐层布置，显得庄严肃穆。全庙占地3 6 0 0平方米，建筑面积1 3 0 0平方米。由两边耳门出入，东向门叫礼门，西向门叫义路，门外立禁碑一块，上刻“文武官员至此下马”，以示孔庙的庄严。
				  </div>
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:800px;height:600px" id="title8" data-x="-5000" data-y="2000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body" >
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
					  <div class="panel-body" >
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
						  <div class="panel-body" >
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
		
		
		<div class="jumbotron step" style="width:800px;height:600px" id="title12" data-x="-6500" data-y="2000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body" >
					   三江风雨桥位于广西柳州三江侗族自治县浔江河上，由钢筋混凝土月牙形单桥拱和集侗族特色木构建筑技艺精华于一体，有7个桥亭，其长度和规模均为世界之最，堪称世界第一风雨桥。
					  </div>
					</div>
				</div>
				<div class="row">
					<img style="width:750px;height:410px" src="<%=request.getContextPath()%>/viewImage/6_1.png" alt="" >
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:800px;height:600px" id="title13" data-x="-7000" data-y="3000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body" >
					   三江风雨桥位于广西柳州三江侗族自治县浔江河上，由钢筋混凝土月牙形单桥拱和集侗族特色木构建筑技艺精华于一体，有7个桥亭，其长度和规模均为世界之最，堪称世界第一风雨桥。
					  </div>
					</div>
				</div>
				<div class="row" >
					<img style="width:750px;height:410px" src="<%=request.getContextPath()%>/viewImage/6_4.png" alt="" >
				</div>
			</div>
		</div>
		
		<div class="jumbotron step" style="width:800px;height:600px" id="title14" data-x="-6500" data-y="4000" data-scale="1" data-rotate="0">
			<div class="row">
				<div class="row">
					<div class="panel panel-default" >
					  <div class="panel-body" >
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
		
		
	</div>
</body>
<script>
$(document).ready(function(){
	impress().init();
	//console.log(document.body.classList);
});
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/impress/impress.js"></script>
</html>
