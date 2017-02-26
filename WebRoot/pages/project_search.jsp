<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/pms.min.js"></script>
<link href="${pageContext.request.contextPath}/css/pms.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/buttons.css" rel="stylesheet" />
<title>项目管理系统</title>
<script type="text/javascript">
$(function(){
	 //管理左侧菜单栏的显示
	 $("#menu2").addClass("collapse panel-collapse in");
})
</script>
</head>

<body class="fixedbody">
<!--#include file="include_navbar.asp"-->
<jsp:include page="include_navbar.jsp" />
<div class="container-fluid">
	<div class="row">
    <!--#include file="include_menu.asp"-->
    <jsp:include page="include_menu.jsp" />
    <div class="col-lg-10 col-lg-offset-2 text-center">
    	<blockquote class="text-left bg-muted">
      	<p>项目查询</p>
        <a href="#project-search" class="pull-right" data-toggle="collapse"><span class="glyphicon glyphicon-triangle-bottom text-muted"></span></a>
      </blockquote>
      <div class="collapse in" id="project-search">
      	<div class="table-responsive">
      	<form action="${pageContext.request.contextPath}/selectProject.do" method="post">
          <table class="table table-bordered">
            <tbody>
              <tr>
                <td style="width:10%;"><span class=" icon-circle-blue"></span>&nbsp;&nbsp;项目经理</td>
                <td>
                  <div class="form-group form-group-sm" style="margin:0;">
                    <input type="text" name="manager" class="form-control"/>
                  </div>      
                </td>
                <td style="width:10%;"><span class="icon-circle-orange"></span>&nbsp;&nbsp;项目名称</td>
                <td>
                  <div class="form-group form-group-sm" style="margin:0;">
                    <input type="text" name="projectName" class="form-control"/>
                  </div>
                </td>
                <td style="width:10%;"><span class="icon-circle-orange"></span>&nbsp;&nbsp;商务负责人</td>
                <td>
                  <div class="form-group form-group-sm" style="margin:0;">
                    <input type="text" name="businessCharger" class="form-control"/>
                  </div>
                </td>
                <td style="width:10%;" class="text-center"><button type="submit" class="btn btn-success btn-block">查询</button></td>
              </tr>
            </tbody>
          </table>
          </form>
        </div>
      </div>
      <blockquote class="text-left bg-muted">
      	<p>项目信息列表</p>
        <a data-toggle="collapse" href="#project-list" class="pull-right"><span class="glyphicon glyphicon-triangle-bottom text-muted"></span></a>
      </blockquote>
      <div class="collapse in" id="project-list">
        <div class="table-responsive">
          <table class="table table-bordered table-striped table-hover">
            <tbody>
              <tr class="info">
                <td>项目名称</td>
                <td>项目经理</td>
                <td>商务负责人</td>
                <td>立项时间</td>
                <td>审核状态</td>
              </tr>
              <c:forEach var="projectOneOfList" items="${projectList}">
              <tr>
                <td><a href="${pageContext.request.contextPath}/showProjectAllInfo.do?projectId=${projectOneOfList.projectId}">${projectOneOfList.projectName}</a></td>
                <td>${projectOneOfList.manager}</td>
                <td>${projectOneOfList.businessCharger}</td>
                <td>${projectOneOfList.setTime}</td>
                <td>${projectOneOfList.verifyStatus}</td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
