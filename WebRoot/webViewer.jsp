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
		
		<div class="jumbotron step" style="width:800px;height:500px" id="title1" data-x="-1000" data-y="1000" data-scale="1" data-rotate="0.5">
			<div class="cube">
				
			</div>
		</div>
		<div class="cube">
	        <div class="topFace step future" data-x="0" data-y="-125" data-z="-1005" data-rotate-x="60" data-rotate-y="0" data-rotate-z="45" data-scale="0.5" id="step-3" style="position: absolute; transform: translate(-50%, -50%) translate3d(0px, -125px, -1005px) rotateX(60deg) rotateY(0deg) rotateZ(45deg) scale(0.5); transform-style: preserve-3d;">
	        	<img src="<%=request.getContextPath()%>/viewImage/2_1.png" alt="" class="img-rounded">
				
				
	        </div>
	        <div class="leftFace step future" data-x="-125" data-y="90" data-z="-985" data-rotate-x="-30" data-rotate-y="-45" data-rotate-z="0" data-scale="0.5" id="step-4" style="position: absolute; transform: translate(-50%, -50%) translate3d(-125px, 90px, -985px) rotateX(-30deg) rotateY(-45deg) rotateZ(0deg) scale(0.5); transform-style: preserve-3d;">
	            <img src="<%=request.getContextPath()%>/viewImage/2_2.png" alt="" class="img-rounded">
	        </div>
	        <div class="rightFace step future" data-x="125" data-y="90" data-z="-985" data-rotate-x="-30" data-rotate-y="45" data-rotate-z="0" data-scale="0.5" id="step-5" style="position: absolute; transform: translate(-50%, -50%) translate3d(125px, 90px, -985px) rotateX(-30deg) rotateY(45deg) rotateZ(0deg) scale(0.5); transform-style: preserve-3d;">
	            <img src="<%=request.getContextPath()%>/viewImage/2_3.png" alt="" class="img-rounded">
	        </div>
	        <div class="backRightFace step future" data-x="125" data-y="-35" data-z="-1200" data-rotate-x="-30" data-rotate-y="135" data-rotate-z="0" data-scale="0.5" id="step-6" style="position: absolute; transform: translate(-50%, -50%) translate3d(125px, -35px, -1200px) rotateX(-30deg) rotateY(135deg) rotateZ(0deg) scale(0.5); transform-style: preserve-3d;">
	                <h1>Pros</h1>
	                <ul>
	                    <li>Javascript</li>
	                    <li>Non-blocking</li>
	                    <li>Reuse JS code</li>
	                    <li>Strong community and modules!</li>
	                    <li>People will think you're a l33t hacker</li>
	                </ul>
	        </div>
	        <div class="backLeftFace step future" data-x="-125" data-y="-35" data-z="-1200" data-rotate-x="-30" data-rotate-y="225" data-rotate-z="0" data-scale="0.5" id="step-7" style="position: absolute; transform: translate(-50%, -50%) translate3d(-125px, -35px, -1200px) rotateX(-30deg) rotateY(225deg) rotateZ(0deg) scale(0.5); transform-style: preserve-3d;">
	                <h1>Cons</h1>
	                <ul>
	                    <li>Javascript</li>
	                    <li>CPU intensive tasks</li>
	                    <li>Event-driven learning curve</li>
	                    <li>People will think you're a hipster</li>
	                </ul>
	        </div>
	        <div class="bottomFace step future" data-x="0" data-y="180" data-z="-1180" data-rotate-x="60" data-rotate-y="180" data-rotate-z="45" data-scale="0.5" id="step-8" style="position: absolute; transform: translate(-50%, -50%) translate3d(0px, 180px, -1180px) rotateX(60deg) rotateY(180deg) rotateZ(45deg) scale(0.5); transform-style: preserve-3d;">
	                <h1>Resources</h1>
	                <ul>
	                    <li><a href="http://howtonode.org/introduction-to-npm">Introduction to NPM</a></li>
	                    <li><a href="http://expressjs.com">Express.js web framework</a></li>
	                    <li><a href="https://devcenter.heroku.com/articles/nodejs">Free node hosting on Heroku</a></li>
	                    <li>Slides at introtonode.herokuapp.com</li>
	                    <li>Follow me at @le_isms</li>
	                </ul>
	        </div>
    	</div>
		
		<div class="jumbotron step" id="titlex"  data-x="1000" data-y="1000" data-scale="1" data-rotate="0">
		  <h1>Hello, world!</h1>
		  <p>...</p>
		  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
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
