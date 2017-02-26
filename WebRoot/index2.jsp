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

<script src="<%=request.getContextPath()%>/js/jquery-2.0.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/pms.min.js"></script>
<link href="<%=request.getContextPath()%>/css/pms.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/buttons.css" rel="stylesheet" />


<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E29eb2a730be973ef432d733b85d61ab"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/javascripts/customLayer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/index.js"></script>
<script type="text/javascript"> 
$(document).ready(function(){
	var map = new BMap.Map("baidu_map");
	map.centerAndZoom("南宁", 9);
	map.enableScrollWheelZoom(true);
	
	$.ajax({
		type : 'POST',
		url : 'login/init.do',
		data : {
			userId : '1234'
		},
		success : function(data, textStatus, jqXHR){
			if(textStatus=='success'){
				//var point = new BMap.Point(116.404, 39.915);
				var i = 0;
				console.log(data);
				for(i=0;i<data.pointList.length;i++){
					//var point = new BMap.Point(data.pointList[i].latitude,data.pointList[i].longitude);
					createPointLayer(data.pointList[i],map);
				}
			}else{
				alert('初始化失败');
			}
			
		}
	});
	
	/*
	//var map = new BMap.Map("baidu_map",{mapType:BMAP_SATELLITE_MAP});          // 创建地图实例  
	var map = new BMap.Map("baidu_map");
	var point = new BMap.Point(116.404, 39.915);  // 创建点坐标  
	map.centerAndZoom("南宁", 12);                 // 初始化地图，设置中心点坐标和地图级别 
	//map.setCurrentCity("南宁");
	map.enableScrollWheelZoom(true);
	
	var point = {latitude:108.074,longitude:22.84592,weather:{name:'杨美古镇',weatherInfo:{code:'4',text:'多云',temperature:'12'}}};
	//createPointLayer2(point,map);
	createPointLayer(point,map);
	
	var point1 = {latitude:108.396671,longitude:22.786823,weather:{name:'龙象塔',weatherInfo:{code:'4',text:'多云',temperature:'12'}}};
	createPointLayer(point1,map);
	var geoc = new BMap.Geocoder();
	
	map.addEventListener("click",function(e){
        var pt = e.point;
        console.log(pt)
		geoc.getLocation(pt, function(rs){
			var addComp = rs.addressComponents;
			//alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
		});
    });
     */
     $('#menu1').removeClass();
});
</script>
<body class="fixedbody">
<!--#include file="include_navbar.asp"-->
<jsp:include page="pages/include_navbar.jsp" />
<div class="container-fluid">
	<div class="row">
    <!--#include file="include_menu.asp"-->
    <jsp:include page="pages/include_menu.jsp" />
    <div class="col-lg-10 col-lg-offset-2 text-center" >
    	<div class="col-lg-10 well" id="baidu_map">
    	</div>
    </div>
  </div>
</div>
</body>  
</html>