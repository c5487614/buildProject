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
<script type="text/javascript">
$(document).ready(function(){
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_manageAddInfo').addClass('active');
});
function infoTypeClick(obj){
	//console.log();
	var text = $(obj).html()
	$(obj).parent().parent().children().each(function(){
		$(this).removeClass('active');
	});
	$(obj).parent().addClass('active');
	if('图片'==text){
		$('#textInfo').css('display','none');
		$('#imageInfo').css('display','block');
	}else if('文字'==text){
		$('#textInfo').css('display','block');
		$('#imageInfo').css('display','none');
	}
}
</script>
<body>
<jsp:include page="nav_bar.jsp" />

<div class="container-fluid">
  
  <div class="row-fluid">
    <div class="span2 well" id="menu">
      <!--Sidebar content-->
      <jsp:include page="nav_menu.jsp" />
    </div>
    <div class="span10 well">
    
      	<form class="form-horizontal">
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">保护对象：</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">天气情况</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">温度</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">操作员</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">时间</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="">
		    </div>
		  </div>
		  <div>
			  <ul class="nav nav-tabs">
			  	<li class="active"><a href="javascript:void(0);" onclick="infoTypeClick(this);">文字</a></li>
			  	<li class=""><a href="javascript:void(0);" onclick="infoTypeClick(this);">图片</a></li>
			  	<li class=""><a href="javascript:void(0);" onclick="infoTypeClick(this);">音频</a></li>
			  	<li class=""><a href="javascript:void(0);" onclick="infoTypeClick(this);">视频</a></li>
			  </ul>
		  </div>
		  <div id="textInfo">
			  <div class="control-group">
			    <label class="control-label" for="inputEmail">实时信息：</label>
			    <div class="controls">
			      <textarea id="inputEmail" placeholder="" ></textarea>
			    </div>
			  </div>
		  </div>
		  <div id="imageInfo" style="display:none">
			  <div class="control-group">
			    <label class="control-label" for="inputEmail">实时信息：</label>
			    <div class="controls">
			      <textarea id="inputEmail" placeholder="" ></textarea>
			    </div>
			  </div>
			  <div>
			  	<ul class="thumbnails">
		            <li class="span4">
		              <a href="#" class="thumbnail">
		                <img data-src="holder.js/360x270" alt="360x270" src="data:image/png;base64,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" style="width: 360px; height: 270px;">
		              </a>
		            </li>
		            <li class="span3">
		              <a href="#" class="thumbnail">
		                <img data-src="holder.js/260x120" alt="260x120" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAB4CAYAAAAUn4wEAAAFeklEQVR4Xu3aPU4jQRAG0CFAQkjcgBxi7n8GYjgCCQkhgl2NpbFmje0p/1Aqbz2i1dJMV7/q+Txu++r9/f3P4IcAAQLDMFwJBPuAAIFJQCDYCwQIrAUEgs1AgIBAsAcIEPgp4AnBriBAwBOCPUCAgCcEe4AAgT0C3jLYHgQIeMtgDxAg4C2DPUCAgLcM9gABAhEBZwgRJWMINBEQCE0abZkEIgICIaJkDIEmAgKhSaMtk0BEQCBElIwh0ERAIDRptGUSiAgIhIiSMQSaCAiEJo22TAIRAYEQUTKGQBMBgdCk0ZZJICIgECJKxhBoIiAQmjTaMglEBARCRMkYAk0EBEKTRlsmgYiAQIgoGUOgiYBAaNJoyyQQERAIESVjCDQREAhNGm2ZBCICAiGiZAyBJgICoUmjLZNAREAgRJSMIdBEQCA0abRlEogICISIkjEEmggIhCaNtkwCEQGBEFEyhkATAYHQpNGWSSAiIBAiSsYQaCIgEJo02jIJRAQEQkTJGAJNBARCk0ZbJoGIgECIKBlDoImAQGjSaMskEBEQCBElYwg0ERAITRptmQQiAgIhomQMgSYCAqFJoy2TQERAIESUjCHQREAgNGm0ZRKICAiEiJIxBJoICIQmjbZMAhEBgRBRMoZAEwGB0KTRlkkgIiAQIkrGEGgiIBCKNvrj42N4fn4ePj8/1xVeX18PT09Pw93d3er/Nsds/n5zzLbfLy1/mmMcN597+rtD6zymhqUa/f58AgLhfJZnu9K2m3Dz/8bJxsAYfx4fH4eXl5fVv7cFxr4xu4o+JGzm8x5T59ngXOhkAYFwMuH5L7AUCA8PD8Pr6+swvdre3Nz8KGLpGtte7betZN8TwtIcU537AmN62jm/oiseIyAQjlH75b+J3mgC4Zcb0fDyAuECmr7vMfz7+3v4+vpaPy1sni/senWeXr3HM4rb29vVWcV0XjF/n790hjDn21fn9ERyyPUuoDX/XYkC4QJauutGG2/g8ebddoaw9JQx3qDTOcQYCOM1pjOJXecQS28zBMIFbKaFEgVC8R5GbuzxqeDYm3F+eLjvU4rNA8tNtmPrdIZQawMKhFr9+KeaXY/XkZtvevVfOtA7RyCcUqdAqLUBBUKtfqyrOeV0f/524LcD4dQ6BUKtDSgQavVjVc2hTwDHfg9hPk/kGptnCOeqs2AL2pYkEAq2ftu3/6Yyt30CMB0uLn2TcNffjte+v78f3t7eVp80jOPmn0LMifZdIzLONxULbrhZSQKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1Bb4C8+Gj/tUZyCfgAAAABJRU5ErkJggg==" style="width: 260px; height: 120px;">
		              </a>
		            </li>
		            <li class="span3">
		              <a href="#" class="thumbnail">
		                <img data-src="holder.js/260x120" alt="260x120" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAB4CAYAAAAUn4wEAAAFeklEQVR4Xu3aPU4jQRAG0CFAQkjcgBxi7n8GYjgCCQkhgl2NpbFmje0p/1Aqbz2i1dJMV7/q+Txu++r9/f3P4IcAAQLDMFwJBPuAAIFJQCDYCwQIrAUEgs1AgIBAsAcIEPgp4AnBriBAwBOCPUCAgCcEe4AAgT0C3jLYHgQIeMtgDxAg4C2DPUCAgLcM9gABAhEBZwgRJWMINBEQCE0abZkEIgICIaJkDIEmAgKhSaMtk0BEQCBElIwh0ERAIDRptGUSiAgIhIiSMQSaCAiEJo22TAIRAYEQUTKGQBMBgdCk0ZZJICIgECJKxhBoIiAQmjTaMglEBARCRMkYAk0EBEKTRlsmgYiAQIgoGUOgiYBAaNJoyyQQERAIESVjCDQREAhNGm2ZBCICAiGiZAyBJgICoUmjLZNAREAgRJSMIdBEQCA0abRlEogICISIkjEEmggIhCaNtkwCEQGBEFEyhkATAYHQpNGWSSAiIBAiSsYQaCIgEJo02jIJRAQEQkTJGAJNBARCk0ZbJoGIgECIKBlDoImAQGjSaMskEBEQCBElYwg0ERAITRptmQQiAgIhomQMgSYCAqFJoy2TQERAIESUjCHQREAgNGm0ZRKICAiEiJIxBJoICIQmjbZMAhEBgRBRMoZAEwGB0KTRlkkgIiAQIkrGEGgiIBCKNvrj42N4fn4ePj8/1xVeX18PT09Pw93d3er/Nsds/n5zzLbfLy1/mmMcN597+rtD6zymhqUa/f58AgLhfJZnu9K2m3Dz/8bJxsAYfx4fH4eXl5fVv7cFxr4xu4o+JGzm8x5T59ngXOhkAYFwMuH5L7AUCA8PD8Pr6+swvdre3Nz8KGLpGtte7betZN8TwtIcU537AmN62jm/oiseIyAQjlH75b+J3mgC4Zcb0fDyAuECmr7vMfz7+3v4+vpaPy1sni/senWeXr3HM4rb29vVWcV0XjF/n790hjDn21fn9ERyyPUuoDX/XYkC4QJauutGG2/g8ebddoaw9JQx3qDTOcQYCOM1pjOJXecQS28zBMIFbKaFEgVC8R5GbuzxqeDYm3F+eLjvU4rNA8tNtmPrdIZQawMKhFr9+KeaXY/XkZtvevVfOtA7RyCcUqdAqLUBBUKtfqyrOeV0f/524LcD4dQ6BUKtDSgQavVjVc2hTwDHfg9hPk/kGptnCOeqs2AL2pYkEAq2ftu3/6Yyt30CMB0uLn2TcNffjte+v78f3t7eVp80jOPmn0LMifZdIzLONxULbrhZSQKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1Bb4C8+Gj/tUZyCfgAAAABJRU5ErkJggg==" style="width: 260px; height: 120px;">
		              </a>
		            </li>
		            <li class="span3">
		              <a href="#" class="thumbnail">
		                <img data-src="holder.js/260x120" alt="260x120" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAB4CAYAAAAUn4wEAAAFeklEQVR4Xu3aPU4jQRAG0CFAQkjcgBxi7n8GYjgCCQkhgl2NpbFmje0p/1Aqbz2i1dJMV7/q+Txu++r9/f3P4IcAAQLDMFwJBPuAAIFJQCDYCwQIrAUEgs1AgIBAsAcIEPgp4AnBriBAwBOCPUCAgCcEe4AAgT0C3jLYHgQIeMtgDxAg4C2DPUCAgLcM9gABAhEBZwgRJWMINBEQCE0abZkEIgICIaJkDIEmAgKhSaMtk0BEQCBElIwh0ERAIDRptGUSiAgIhIiSMQSaCAiEJo22TAIRAYEQUTKGQBMBgdCk0ZZJICIgECJKxhBoIiAQmjTaMglEBARCRMkYAk0EBEKTRlsmgYiAQIgoGUOgiYBAaNJoyyQQERAIESVjCDQREAhNGm2ZBCICAiGiZAyBJgICoUmjLZNAREAgRJSMIdBEQCA0abRlEogICISIkjEEmggIhCaNtkwCEQGBEFEyhkATAYHQpNGWSSAiIBAiSsYQaCIgEJo02jIJRAQEQkTJGAJNBARCk0ZbJoGIgECIKBlDoImAQGjSaMskEBEQCBElYwg0ERAITRptmQQiAgIhomQMgSYCAqFJoy2TQERAIESUjCHQREAgNGm0ZRKICAiEiJIxBJoICIQmjbZMAhEBgRBRMoZAEwGB0KTRlkkgIiAQIkrGEGgiIBCKNvrj42N4fn4ePj8/1xVeX18PT09Pw93d3er/Nsds/n5zzLbfLy1/mmMcN597+rtD6zymhqUa/f58AgLhfJZnu9K2m3Dz/8bJxsAYfx4fH4eXl5fVv7cFxr4xu4o+JGzm8x5T59ngXOhkAYFwMuH5L7AUCA8PD8Pr6+swvdre3Nz8KGLpGtte7betZN8TwtIcU537AmN62jm/oiseIyAQjlH75b+J3mgC4Zcb0fDyAuECmr7vMfz7+3v4+vpaPy1sni/senWeXr3HM4rb29vVWcV0XjF/n790hjDn21fn9ERyyPUuoDX/XYkC4QJauutGG2/g8ebddoaw9JQx3qDTOcQYCOM1pjOJXecQS28zBMIFbKaFEgVC8R5GbuzxqeDYm3F+eLjvU4rNA8tNtmPrdIZQawMKhFr9+KeaXY/XkZtvevVfOtA7RyCcUqdAqLUBBUKtfqyrOeV0f/524LcD4dQ6BUKtDSgQavVjVc2hTwDHfg9hPk/kGptnCOeqs2AL2pYkEAq2ftu3/6Yyt30CMB0uLn2TcNffjte+v78f3t7eVp80jOPmn0LMifZdIzLONxULbrhZSQKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1Bb4C8+Gj/tUZyCfgAAAABJRU5ErkJggg==" style="width: 260px; height: 120px;">
		              </a>
		            </li>
		            <li class="span3">
		              <a href="#" class="thumbnail">
		                <img data-src="holder.js/260x120" alt="260x120" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAB4CAYAAAAUn4wEAAAFeklEQVR4Xu3aPU4jQRAG0CFAQkjcgBxi7n8GYjgCCQkhgl2NpbFmje0p/1Aqbz2i1dJMV7/q+Txu++r9/f3P4IcAAQLDMFwJBPuAAIFJQCDYCwQIrAUEgs1AgIBAsAcIEPgp4AnBriBAwBOCPUCAgCcEe4AAgT0C3jLYHgQIeMtgDxAg4C2DPUCAgLcM9gABAhEBZwgRJWMINBEQCE0abZkEIgICIaJkDIEmAgKhSaMtk0BEQCBElIwh0ERAIDRptGUSiAgIhIiSMQSaCAiEJo22TAIRAYEQUTKGQBMBgdCk0ZZJICIgECJKxhBoIiAQmjTaMglEBARCRMkYAk0EBEKTRlsmgYiAQIgoGUOgiYBAaNJoyyQQERAIESVjCDQREAhNGm2ZBCICAiGiZAyBJgICoUmjLZNAREAgRJSMIdBEQCA0abRlEogICISIkjEEmggIhCaNtkwCEQGBEFEyhkATAYHQpNGWSSAiIBAiSsYQaCIgEJo02jIJRAQEQkTJGAJNBARCk0ZbJoGIgECIKBlDoImAQGjSaMskEBEQCBElYwg0ERAITRptmQQiAgIhomQMgSYCAqFJoy2TQERAIESUjCHQREAgNGm0ZRKICAiEiJIxBJoICIQmjbZMAhEBgRBRMoZAEwGB0KTRlkkgIiAQIkrGEGgiIBCKNvrj42N4fn4ePj8/1xVeX18PT09Pw93d3er/Nsds/n5zzLbfLy1/mmMcN597+rtD6zymhqUa/f58AgLhfJZnu9K2m3Dz/8bJxsAYfx4fH4eXl5fVv7cFxr4xu4o+JGzm8x5T59ngXOhkAYFwMuH5L7AUCA8PD8Pr6+swvdre3Nz8KGLpGtte7betZN8TwtIcU537AmN62jm/oiseIyAQjlH75b+J3mgC4Zcb0fDyAuECmr7vMfz7+3v4+vpaPy1sni/senWeXr3HM4rb29vVWcV0XjF/n790hjDn21fn9ERyyPUuoDX/XYkC4QJauutGG2/g8ebddoaw9JQx3qDTOcQYCOM1pjOJXecQS28zBMIFbKaFEgVC8R5GbuzxqeDYm3F+eLjvU4rNA8tNtmPrdIZQawMKhFr9+KeaXY/XkZtvevVfOtA7RyCcUqdAqLUBBUKtfqyrOeV0f/524LcD4dQ6BUKtDSgQavVjVc2hTwDHfg9hPk/kGptnCOeqs2AL2pYkEAq2ftu3/6Yyt30CMB0uLn2TcNffjte+v78f3t7eVp80jOPmn0LMifZdIzLONxULbrhZSQKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1BbQCDU7o/qCKQKCIRUbpMRqC0gEGr3R3UEUgUEQiq3yQjUFhAItfujOgKpAgIhldtkBGoLCITa/VEdgVQBgZDKbTICtQUEQu3+qI5AqoBASOU2GYHaAgKhdn9URyBVQCCkcpuMQG0BgVC7P6ojkCogEFK5TUagtoBAqN0f1RFIFRAIqdwmI1Bb4C8+Gj/tUZyCfgAAAABJRU5ErkJggg==" style="width: 260px; height: 120px;">
		              </a>
		            </li>
          		</ul>
			  </div>
		  </div>
		  
		  <div class="control-group">
		    <div class="controls">
		      <button type="submit" class="btn">提交</button>
		    </div>
		  </div>
		</form>
    </div>
  </div>
</div>

</body>  
</html>