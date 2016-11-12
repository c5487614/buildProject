function createPopWindow(name,weather){
	var sContent = "<div style='height:auto'>"+
	"<h4>"+name+"</h4>"+
	"<div style='position:relative;'><img style='float:left;margin:4px' id='"+name+"_imgDemo' src='images/weather/"+weather.code+".png' width='60' height='60'/></div>"+
	"<div style='position:absolute;top:35px;height:30px;line-height:30px;'>" +weather.text+"，温度："+weather.temperature+ "</div>"
	//"<p style='float:left;text-align:center;margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+weather.text+"，温度："+weather.temperature+"</p>"+
	"</div>";
	return sContent;
}
function createPointLayer(point,map){
	var sContent = createPopWindow(point.weather.name,point.weather.weatherInfo);
	var mapPoint = new BMap.Point(point.latitude,point.longitude);
	var marker = new BMap.Marker(mapPoint);
	var infoWindow = new BMap.InfoWindow(sContent);
	map.addOverlay(marker);
	marker.openInfoWindow(infoWindow);
	marker.addEventListener("click", function(){          
	   this.openInfoWindow(infoWindow);
	   //图片加载完毕重绘infowindow
	   //document.getElementById('imgDemo').onload = function (){
	   		//infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
	   //}
	});
}