<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
<title>古建筑保护系统</title>  
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="css/index.css" rel="stylesheet" />
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="index.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E29eb2a730be973ef432d733b85d61ab"></script> 
<script type="text/javascript"> 
$(document).ready(function(){
	//var map = new BMap.Map("baidu_map",{mapType:BMAP_SATELLITE_MAP});          // 创建地图实例  
	var map = new BMap.Map("baidu_map");
	var point = new BMap.Point(116.404, 39.915);  // 创建点坐标  
	map.centerAndZoom("南宁", 12);                 // 初始化地图，设置中心点坐标和地图级别 
	//map.setCurrentCity("南宁");
	map.enableScrollWheelZoom(true);
	
	var point = {latitude:108.074,longitude:22.84592,weather:{name:'杨美古镇',weatherInfo:{code:'4',text:'多云',temperature:'12'}}};
	createPointLayer(point,map);
	var point1 = {latitude:108.396671,longitude:22.786823,weather:{name:'龙象塔',weatherInfo:{code:'4',text:'多云',temperature:'12'}}};
	createPointLayer(point1,map);
	var geoc = new BMap.Geocoder();
	/*
	map.addEventListener("click",function(e){
        var pt = e.point;
        console.log(pt)
		geoc.getLocation(pt, function(rs){
			var addComp = rs.addressComponents;
			//alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
		});
    });
    */
	
});
</script>
<body>
<jsp:include page="nav_bar.jsp" />
    
<div class="container-fluid">

  
  <div class="row-fluid">
    <div class="span2 well" id="menu">
      <!--Sidebar content-->
      <jsp:include page="nav_menu.jsp" />
    </div>
    <div class="span10 well" id="baidu_map">
      
    </div>
  </div>
</div>
</body>  
</html>