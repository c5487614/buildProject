<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>项目管理系统</title>
<%-- <script src="<%=request.getContextPath()%>/js/jquery-2.0.3.min.js"></script> --%>
<script type="text/javascript">

</script>
</head>
<body>
<jsp:useBean id="user" type="protect.build.model.User" scope="session"></jsp:useBean>
<div class="navbar navbar-inverse navbar-static-top navbar-fixed-top">
	<div class="container-fluid">
  	<div class="navbar-header">
    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#indexnav">
      	<span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="navbar-brand">
      <a href="#" style="color:#fff;float:left" ><span class="glyphicon glyphicon-th-large"></span>&nbsp;古建筑保护系统</a>
      <div style="color:#a3a3a3;font-size:12px;line-height:20px;height:50px; overflow:hidden;text-decoration:none;">（广西高校科研项目YB2015YB531测试版）</div>
      <div style="clear:both""></div>
      </div>
      
      <a href="#"></a>
    </div>
    <!-- 
    <div class="collapse navbar-collapse " id="indexnav">
    	<ul class="nav navbar-nav">
      	<li class="dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle">我的工作台</a>
          <ul class="dropdown-menu">
          	<li><a href="<%=request.getContextPath()%>/selectUserList.do">我的工作台</a></li>
            <li><a id="addUser" href="<%=request.getContextPath()%>/showDepartmentList.do">用户新增</a></li>
          </ul>
        </li>
        <li class="dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle">项目管理</a>
          <ul class="dropdown-menu">
          	<li><a href="<%=request.getContextPath()%>/selectAllProject.do">项目查询</a></li>
            <li><a id="addProject" href="<%=request.getContextPath()%>/pages/add_project.jsp">项目立项</a></li>
          </ul>
        </li>
        <li class="dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle">项目审核</a>
          <ul class="dropdown-menu">
          	<li><a href="<%=request.getContextPath()%>/showNoAuditedProject.do">待审核项目</a></li>
            <li><a href="<%=request.getContextPath()%>/showProjectVerified.do">已通过项目</a></li>
            <li><a href="<%=request.getContextPath()%>/showProjectRefused.do">被驳回项目</a></li>
          </ul>
        </li>
        <li class="dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle">客户与开发商信息</a>
          <ul class="dropdown-menu">
          	<li><a href="<%=request.getContextPath()%>/showAllCustomer.do">客户查询</a></li>
            <li><a href="<%=request.getContextPath()%>/showAllDeveloper.do">开发商查询</a></li>
          </ul>
        </li>
        <li class="dropdown" id="managerLog">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle">日志管理</a>
          <ul class="dropdown-menu">
          	<li><a href="<%=request.getContextPath()%>/showAllUpdateLog.do">日志查询</a></li>
          </ul>
        </li>
      </ul>
    </div>
     -->
    <!--<form class="navbar-form navbar-right">
      <div class="form-group">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Email">
          <div class="input-group-btn">
            <button type="button" class="btn btn-warning">搜索</button>
          </div>
        </div>
      </div>
    </form>-->
   <button type="button" class="navbar-btn btn btn-warning btn-sm navbar-right visible-lg-inline-block" onClick="window.location.href='<%=request.getContextPath()%>/loginOut.do'">注销</button>
    <p class="navbar-text navbar-right">
    	当前用户:&nbsp;<a href="<%=request.getContextPath()%>/pages/user_ID.jsp" style="color:#0CF;"><jsp:getProperty property="userName" name="user" /></a>&nbsp;&nbsp;
      &nbsp;<a href="#" style="color:#0CF;"></a>&nbsp;&nbsp;
      <span class="hidden-lg">|</span>&nbsp;&nbsp;
     <!--  <a href="login.jsp" class="hidden-lg" style="color:#F90;">注销</a> -->
     <%-- <a href="<%=request.getContextPath()%>/loginOut.do" class="hidden-lg" style="color:#F90;">注销</a> --%>
    </p>  
  </div>
</div>
</body>
</html>