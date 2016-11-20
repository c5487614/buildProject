<%@ page language="java" pageEncoding="UTF-8"%>
<ul data-spy="affix" data-offset-top="60" data-offset-bottom="200" class="nav nav-pills nav-stacked" role="tablist">
  <li class="nav-header">我的工作台</li>
  <li class="menu_class active"><a href="<%=request.getContextPath()%>/index.jsp">首页</a></li>
  <li id="menu_monitor" class="menu_class"><a href="<%=request.getContextPath()%>/info/monitorInfoPage.do">实时信息监控</a></li>
  <li id="menu_manageAddInfo" class="menu_class"><a href="<%=request.getContextPath()%>/info/addInfoPage.do">实时信息维护</a></li>
  
  <li class="nav-header">GIS</li>
  
  <li id="menu_oldbuidingInfo" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="javascript:void(0)">
  	遗址地形地貌展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu "  role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showInfoPage.do">遗址一</a></li>
		  <li><a tabindex="-1" href="#">遗址二</a></li>
		  <li><a tabindex="-1" href="#">遗址三</a></li>
		  <li class="divider"></li>
	  </ul>
  </li>
  <li id="menu_GIS" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
  	古建筑空间信息展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showGISInfoPage.do">遗址一</a></li>
		  <li><a tabindex="-1" href="#">遗址二</a></li>
		  <li><a tabindex="-1" href="#">遗址三</a></li>
		  <li class="divider"></li>
	  </ul>
  </li>
  <li id="menu_satallite" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
  	卫星定位地图展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do">遗址一</a></li>
		  <li><a tabindex="-1" href="#">遗址二</a></li>
		  <li><a tabindex="-1" href="#">遗址三</a></li>
		  <li class="divider"></li>
	  </ul>
  </li>
</ul>
