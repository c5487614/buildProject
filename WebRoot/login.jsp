<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<script src="jquery/jquery.min.js" ></script>
<script src="bootstrap2/js/bootstrap.js"></script>
<link href="bootstrap2/css/bootstrap.min.css" rel="stylesheet">
<link href="css/buttons.css" rel="stylesheet">
<title>古建筑数字保护系统</title>
<script>
function login(){
	$.ajax({
		method : 'POST',
		url : '<%=request.getContextPath()%>/login/login.do',
		data : $('#login_form').serialize(),
		success : function(data, textStatus, jqXHR){
			if(data.result == 'success'){
				window.location.href = '<%=request.getContextPath()%>/index.jsp';
			}else{
				alert('登录失败');
			}
		},
		error : function(){
			alert('系统错误');
		}
	});
}
</script>
</head>

<body style="background-color:#f8f6f2;background:url(images/login.png)" >
	<div class="container">  	
	</div> 
	<div class="modal" style="margin-top:200px">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	    <h3>系统登录</h3>
	  </div>
	  <div class="modal-body">
	    <form id="login_form" class="form-horizontal">
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">账号</label>
		    <div class="controls">
		      <input type="text" id="userId" name="userId" placeholder="Email">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">密码</label>
		    <div class="controls">
		      <input type="password" id="userPassword" name="userPassword" placeholder="Password">
		    </div>
		  </div>
		</form>
	  </div>
	  <div class="modal-footer">
	    <button type="submit" class="btn" onclick="login();">登录</button>
	  </div>
	</div> 
</body>
</html>
