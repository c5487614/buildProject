<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%-- <script src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script> --%>
<title>传统村落保护版权所有</title>
<script>
	window.onload=function(){  
		changeheight();  
	}  
	//当浏览器窗口大小改变时，设置显示内容的高度  
	window.onresize=function(){  
		changeheight();  
	}
	function changeheight() {
		var indexmenu = document.getElementById("index_menu");
		var windowheight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
		windowheight = windowheight - 60;
		indexmenu.style.height = windowheight + "px";
		indexmenu.style.padding = "0";
		indexmenu.style.background = "#e9e9e9";
		indexmenu.style.position = "fixed";
		<!--alert(indexmenu.style.height);-->
	}
</script>

</head>
<body>
<div id="index_menu" class="col-lg-2 visible-lg-block" >
  <div class="panel-group" id="indexmenu">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <div class="panel-title">
          <span class="glyphicon glyphicon-tags"></span>&nbsp;&nbsp;<a href="#menu1" data-toggle="collapse" data-parent="#indexmenu">我的工作台</a>
          <a  href="#menu1" data-toggle="collapse" data-parent="#indexmenu" class="pull-right"><span class="glyphicon glyphicon-menu-down"></span></a>
        </div>
      </div>
      <!-- <div class="collapse panel-collapse" id="menu1"> -->
      <div class="collapse panel-collapse" id="menu1">
        <div class="list-group text-center">
          <a href="<%=request.getContextPath()%>/index2.jsp" class="list-group-item"><span class="glyphicon glyphicon-search icon-info"></span>&nbsp;&nbsp;我的工作台</a>
          <a href="<%=request.getContextPath()%>/info/monitorInfoPage.do" class="list-group-item"><span class="glyphicon glyphicon-search icon-warning"></span>&nbsp;&nbsp;实时信息监控</a>
          <a href="<%=request.getContextPath()%>/info/addInfoPage.do" class="list-group-item"><span class="glyphicon glyphicon-plus-sign icon-warning"></span>&nbsp;&nbsp;实时信息维护</a>
        </div>
      </div>
    </div>
    <div class="panel panel-danger">
      <div class="panel-heading">
        <div class="panel-title">
          <span class="glyphicon glyphicon-object-align-left"></span>&nbsp;&nbsp;<a href="#menu2" data-toggle="collapse" data-parent="#indexmenu">传统村落展示</a>
          <a href="#menu2" data-toggle="collapse" data-parent="#indexmenu" class="pull-right"><span class="glyphicon glyphicon-menu-down"></span></a>
        </div>
      </div>
      <div class="collapse panel-collapse" id="menu2">
        <div class="list-group text-center">
          <a href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=1" class="list-group-item"><span class="glyphicon glyphicon-picture icon-info"></span>&nbsp;&nbsp;老口村那告坡</a>
          <a id="addProject" href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=2" class="list-group-item"><span class="glyphicon glyphicon-picture icon-info"></span>&nbsp;&nbsp;那良村那蒙坡</a>
          
          <a href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=4" class="list-group-item"><span class="glyphicon glyphicon-picture icon-info"></span>&nbsp;&nbsp;杨美古镇</a>
          <a href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=5" class="list-group-item"><span class="glyphicon glyphicon-picture icon-info"></span>&nbsp;&nbsp;蔡氏古宅</a>
          <a href="<%=request.getContextPath()%>/info/showInfoPage.do?buildId=6" class="list-group-item"><span class="glyphicon glyphicon-picture icon-info"></span>&nbsp;&nbsp;黄姚古镇</a>
          
        </div><%-- <%=request.getContextPath()%> --%>
      </div>
    </div>
    <!-- 
    <div class="panel panel-success">
      <div class="panel-heading">
        <div class="panel-title">
          <span class="glyphicon glyphicon-tasks"></span>&nbsp;&nbsp;<a href="#menu3" data-toggle="collapse" data-parent="#indexmenu">古建筑空间信息展示</a>
          <a href="#menu3" data-toggle="collapse" data-parent="#indexmenu" class="pull-right"><span class="glyphicon glyphicon-menu-down"></span></a>
        </div>
      </div>
      <div class="collapse panel-collapse" id="menu3">
        <div class="list-group text-center">
          <a href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=1" class="list-group-item"><span class="glyphicon glyphicon glyphicon-screenshot icon-info"></span>&nbsp;&nbsp;龙象塔</a>
          <a href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=2" class="list-group-item"><span class="glyphicon glyphicon glyphicon-screenshot icon-info"></span>&nbsp;&nbsp;真武阁</a>
          <a href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=3" class="list-group-item"><span class="glyphicon glyphicon glyphicon glyphicon-screenshot icon-info"></span>&nbsp;&nbsp;归龙斜塔</a>
          <a href="<%=request.getContextPath()%>/info/showGISInfoPage.do?buildId=4" class="list-group-item"><span class="glyphicon glyphicon glyphicon-screenshot icon-info"></span>&nbsp;&nbsp;杨美古镇</a>          
        </div>
      </div>
    </div>
     -->
    <div class="panel panel-warning">
      <div class="panel-heading">
        <div class="panel-title">
          <span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;<a href="#menu4" data-toggle="collapse" data-parent="#indexmenu">卫星定位地图展示</a>
          <a href="#menu4" data-toggle="collapse" data-parent="#indexmenu" class="pull-right"><span class="glyphicon glyphicon-menu-down"></span></a>         
        </div>
      </div>
      <div class="collapse panel-collapse" id="menu4">
        <div class="list-group text-center">
          <a href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=1" class="list-group-item"><span class="glyphicon glyphicon glyphicon glyphicon-pushpin icon-info"></span>&nbsp;&nbsp;老口村那告坡</a>
          <a href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=2" class="list-group-item"><span class="glyphicon glyphicon glyphicon glyphicon-pushpin icon-info"></span>&nbsp;&nbsp;那良村那蒙坡</a>
          <a href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=4" class="list-group-item"><span class="glyphicon glyphicon glyphicon glyphicon-pushpin icon-info"></span>&nbsp;&nbsp;杨美古镇</a>
          <a href="<%=request.getContextPath()%>/info/showSatelliteInfoPage.do?buildId=3" class="list-group-item"><span class="glyphicon glyphicon glyphicon glyphicon glyphicon-pushpin icon-info"></span>&nbsp;&nbsp;蔡氏古宅</a>
          
        </div>
      </div>
    </div>
    <!-- 
    <div class="panel panel-info" id="managerLog">
      <div class="panel-heading">
        <div class="panel-title">
          <span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;<a href="#menu5" data-toggle="collapse" data-parent="#indexmenu">日志管理</a>
          <a href="#menu5" data-toggle="collapse" data-parent="#indexmenu" class="pull-right"><span class="glyphicon glyphicon-menu-down"></span></a>
        </div>
      </div>
      <div class="collapse panel-collapse" id="menu5">
        <div class="list-group text-center">
          <a href="<%=request.getContextPath()%>/showAllUpdateLog.do" class="list-group-item"><span class="glyphicon glyphicon-search icon-info" ></span>&nbsp;&nbsp;日志查询</a>
        </div>
      </div>
    </div>
     -->
  </div>
  <p style=" position:absolute; bottom:0; margin:0; width:100%; height:42px; line-height:42px; color:#666; background:#CCC; text-align:center;">
  	<span class="glyphicon glyphicon-th-large"></span>传统村落保护版权所有
  </p>
  
</div>

</div>
</body>
</html>