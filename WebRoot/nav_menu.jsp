<%@ page language="java" pageEncoding="UTF-8"%>
<ul data-spy="affix" data-offset-top="60" data-offset-bottom="200" class="nav nav-pills nav-stacked" role="tablist">
  <li class="nav-header glyphicon glyphicon-th-list">我的工作台</li>
  <li class="menu_class active "><a class="glyphicon glyphicon-home" href="<%=request.getContextPath()%>/index.jsp">首页</a></li>
  <li id="menu_monitor" class="menu_class"><a class="glyphicon glyphicon-time" href="<%=request.getContextPath()%>/info/monitorInfoPage.do">实时信息监控</a></li>
  <li id="menu_manageAddInfo" class="menu_class"><a class="glyphicon glyphicon-list-alt" href="<%=request.getContextPath()%>/info/addInfoPage.do">实时信息维护</a></li>
  
  
  
  <li class="glyphicon glyphicon-screenshot" >GIS
  </li>
  
  <li id="menu_oldbuidingInfo" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="javascript:void(0)">
  	遗址地形地貌展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu "  role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=1">那告坡</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=2">真武阁</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=3">归龙斜塔</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=4">杨美古镇</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=5">蔡氏古宅</a></li>
		  <li class="divider"></li>
	  </ul>
  </li>
  <li id="menu_GIS" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
  	古建筑空间信息展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=1">龙象塔</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=2">真武阁</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=3">归龙斜塔</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=4">杨美古镇</a></li>
		  
		  <li class="divider"></li>
	  </ul>
  </li>
  <li id="menu_satallite" class="dropdown">
  	<a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
  	卫星定位地图展示
  	<b class="caret"></b></a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=1">龙象塔</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=2">真武阁</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=3">归龙斜塔</a></li>
		  <li><a tabindex="-1" href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=4">杨美古镇</a></li>
		  <li class="divider"></li>
	  </ul>
  </li>
</ul>
