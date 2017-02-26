<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<script src="js/jquery-2.0.3.min.js"></script>
<script src="js/pms.min.js"></script>
<link href="css/pms.css" rel="stylesheet">
<link href="css/buttons.css" rel="stylesheet">
<script type="text/javascript">
function loginEx(){
	$.ajax({
		method : 'POST',
		url : '<%=request.getContextPath()%>/login/login.do',
		data : $('#login_form').serialize(),
		success : function(data, textStatus, jqXHR){
			if(data.result == 'success'){
				window.location.href = '<%=request.getContextPath()%>/index2.jsp';
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
<title>古建筑保护系统</title>
</head>

<body style="background-color:#f8f6f2;">
<form id="login_form" action="">
<div class="container-fluid" style="padding-top:100px;">
	<div class="row">
  	<div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
    	<!-- <form class="form-horizontal" action="login.do" method="post"> -->
      	<legend class="text-center" style=" color:#555;"><h2><span class="glyphicon glyphicon-th-large"></span>古建筑保护系统</h2></legend>
        <div class="row" style="margin-top:30px; margin-bottom:20px;">
        	<div class="col-xs-8 col-xs-offset-2"> 
            <ul class="nav nav-tabs nav-justified">
              <li class="active"><a href="#tab1" data-toggle="tab" style="border-right:1px solid #ddd;"><span class="glyphicon glyphicon-user"></span>&nbsp;账号登录</a></li>
              <li><a href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-bookmark"></span>&nbsp;证书登录</a></li>
            </ul>
          </div>
        </div>
        <div class="tab-content">
        	<div class="tab-pane active fade in" id="tab1">
            <div class="form-group form-group-lg" id="judgeUserName">
              <div class="col-xs-10 col-xs-offset-1">
              <div class="input-group" >
                <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                <input id="userName" type="text" name="userName" class="form-control" placeholder="请输入用户名">
              </div>
              </div>
            </div>
            <div class="form-group form-group-lg" id="judgeUserPassword">
              <div class="col-xs-10 col-xs-offset-1">
                <div class="input-group">
                  <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                  <input id="userPassword" type="password" name="userPassword" class="form-control" placeholder="请输入密码">
                </div>
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <!--  <button id="login" type="button" onClick="login();" class="btn btn-success btn-block btn-lg">登录</button>-->
                <input value="登录" id="login" type="button" onClick="loginEx();" class="btn btn-success btn-block btn-lg" />
              </div>
            </div>
        	</div>
          <div class="tab-pane" id="tab2">
          	<p class=" text-center text-danger" style="margin-bottom:20px;">检测到你未插入USBkey数字证书,请先插入证书然后登录</p>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <button type="button" class="btn btn-success btn-block btn-lg" onClick="window.location.href='user_search.asp'">登录</button>
              </div>
            </div>
          </div>
        </div>
        <!-- 
        <div>
	        <p class="text-center help-block" style=" margin-top:50px; padding-top:10px; border-top:1px solid #e5e5e5;">
	        	<span class="glyphicon glyphicon-th-large"></span>PMS版权所有&copy;hbca.org.cn
	        </p>
        </div>
         -->
     <!--  </form> -->
    </div>
    
  </div>
</div>
</form>
</body>
</html>
