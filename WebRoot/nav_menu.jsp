<%@ page language="java" pageEncoding="UTF-8"%>
<ul class="nav nav-list">
  <li class="nav-header">我的工作台</li>
  <li class="menu_class active"><a href="index.jsp">首页</a></li>
  <li id="menu_manageAddInfo" class="menu_class"><a href="manageAddInfo.jsp">实时信息维护</a></li>
  
  <li class="nav-header">GIS</li>
  <div id="menu_oldbuidingInfo" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="oldBuildingInfo.jsp">
  	遗址地形地貌展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="oldBuildingInfo.jsp">遗址一</a></li>
		  <li><a tabindex="-1" href="#">遗址二</a></li>
		  <li><a tabindex="-1" href="#">遗址三</a></li>
		  <li class="divider"></li>
	  </ul>
  </div>
  <div id="menu_GIS" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
  	古建筑空间信息展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="oldBuildingGISInfo.jsp">遗址一</a></li>
		  <li><a tabindex="-1" href="#">遗址二</a></li>
		  <li><a tabindex="-1" href="#">遗址三</a></li>
		  <li class="divider"></li>
	  </ul>
  </div>
  <div id="menu_satallite" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
  	卫星定位地图展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="oldBuildingSatelliteInfo.jsp">遗址一</a></li>
		  <li><a tabindex="-1" href="#">遗址二</a></li>
		  <li><a tabindex="-1" href="#">遗址三</a></li>
		  <li class="divider"></li>
	  </ul>
  </div>
</ul>