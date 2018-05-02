<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
<title>古建筑保护系统</title>  
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/jquery.fileupload.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/jquery.fileupload-ui.css" rel="stylesheet">

<script src="<%=request.getContextPath()%>/js/jquery-2.0.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/pms.min.js"></script>
<link href="<%=request.getContextPath()%>/css/pms.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/buttons.css" rel="stylesheet" />


<link href="<%=request.getContextPath()%>/javascripts/plupload-2.2.1/js/jquery.ui.plupload/css/jquery.ui.plupload.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/javascripts/jquery-ui-1.11.4.custom/jquery-ui.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/javascripts/toast/toastr.min.css" rel="stylesheet" type="text/css" />


<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascripts/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.zh-CN.js"></script>





<script src="<%=request.getContextPath()%>/javascripts/JavaScript-Load-Image/js/load-image.all.min.js"></script>

<script src="<%=request.getContextPath()%>/javascripts/jQuery-File-Upload-9.14.0/js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="<%=request.getContextPath()%>/javascripts/jQuery-File-Upload-9.14.0/js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="<%=request.getContextPath()%>/javascripts/jQuery-File-Upload-9.14.0/js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="<%=request.getContextPath()%>/javascripts/jQuery-File-Upload-9.14.0/js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="<%=request.getContextPath()%>/javascripts/jQuery-File-Upload-9.14.0/js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="<%=request.getContextPath()%>/javascripts/jQuery-File-Upload-9.14.0/js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="<%=request.getContextPath()%>/javascripts/jQuery-File-Upload-9.14.0/js/jquery.fileupload-validate.js"></script>



<script src="<%=request.getContextPath()%>/javascripts/toast/toastr.min.js" ></script>

<script type="text/javascript">

function initDatepicker(controlId){
	$(controlId).datetimepicker({
		autoclose: true,
		format: 'yyyy-mm-dd',
        pickDate: true,
        pickTime: false,
        startView: 2,
		minView: 2,
		language: 'zh-CN'
	});
}

$(document).ready(function(){
	$('#menu1').removeClass();
	initDatepicker('#reportDate');
	$('.menu_class').each(function(index,el){
		$(this).removeClass('active');
	});
	$('#menu_manageAddInfo').addClass('active');
    //var uploader = $('#testDom').plupload('getUploader');
    //uploader.start();
	toastr.options = {
		"closeButton": false,
		"debug": false,
		"newestOnTop": false,
		"progressBar": false,
		"positionClass": "toast-top-center",
		"preventDuplicates": false,
		"onclick": null,
		"showDuration": "300",
		"hideDuration": "500",
		"timeOut": "1000",
		"extendedTimeOut": "300",
		"showEasing": "swing",
		"hideEasing": "linear",
		"showMethod": "fadeIn",
		"hideMethod": "fadeOut"
	};
	
	var uploadButton = $('<button/>')
            .addClass('btn btn-primary')
            .prop('disabled', true)
            .text('Processing...')
            .on('click', function () {
                var $this = $(this),
                    data = $this.data();
                $this
                    .off('click')
                    .text('Abort')
                    .on('click', function () {
                        $this.remove();
                        data.abort();
                    });
                data.submit().always(function () {
                    $this.remove();
                });
            });
            
	$('#fileupload').fileupload({
        url: '<%=request.getContextPath()%>/info/addImage.do?infoId=<jsp:getProperty property="contactNum" name="building" />',
        dataType: 'json',
        autoUpload: true,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png|mp3)$/i,
        maxFileSize: 999000,
        // Enable image resizing, except for Android and Opera,
        // which actually support image resizing, but fail to
        // send Blob objects via XHR requests:
        disableImageResize: /Android(?!.*Chrome)|Opera/
            .test(window.navigator.userAgent),
        previewMaxWidth: 100,
        previewMaxHeight: 100,
        previewCrop: true
    }).on('fileuploadadd', function (e, data) {
    	data.context = $('<div class="col-sm-3"><a href="#" class="thumbnail"></a></div>').appendTo('#files');
        /*
        //data.context = $('<div/>').appendTo('#files');
        
        $.each(data.files, function (index, file) {
            var node = $('<p/>').append($('<span/>').text(file.name));
            if (!index) {
                node.append('<br>').append(uploadButton.clone(true).data(data));
            }
            node.appendTo(data.context);
        });
        */
        
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
            file = data.files[index],
            node = $(data.context.children()[index]);
        if (file.preview) {
            node.prepend('<br>').prepend(file.preview);
        }
        if (file.error) {
            node.append('<br>').append($('<span class="text-danger"/>').text(file.error));
        }
        if (index + 1 === data.files.length) {
            data.context.find('button').text('Upload').prop('disabled', !!data.files.error);
        }
    }).on('fileuploadprogressall', function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress .progress-bar').css(
            'width',
            progress + '%'
        );
    }).on('fileuploaddone', function (e, data) {
        if(data.result.success==true){
        	toastr["success"]('上传成功!');
        }else{
        	toastr["error"]('上传失败!');
        }
    }).on('fileuploadfail', function (e, data) {
        $.each(data.files, function (index) {
            var error = $('<span class="text-danger"/>').text('File upload failed.');
            $(data.context.children()[index])
                .append('<br>')
                .append(error);
        });
    }).prop('disabled', !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : 'disabled');
    
    
    $('#fileupload_voice').fileupload({
        url: '<%=request.getContextPath()%>/info/addImage.do?infoId=<jsp:getProperty property="contactNum" name="building" />',
        dataType: 'json',
        autoUpload: true,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png|mp3|flv)$/i,
        maxFileSize: 99900000,
        disableImageResize: /Android(?!.*Chrome)|Opera/
            .test(window.navigator.userAgent),
        previewMaxWidth: 100,
        previewMaxHeight: 100,
        previewCrop: true
    }).on('fileuploadadd', function (e, data) {
    	data.context = $('<div class="col-sm-3"></div>').appendTo('#files_voice');
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
            file = data.files[index],
            node = $(data.context.children()[index]);
        if (file.preview) {
            //node.prepend('<br>').prepend(file.preview);
        }
        if (file.error) {
            node.append('<br>').append($('<span class="text-danger"/>').text(file.error));
        }
        if (index + 1 === data.files.length) {
            data.context.find('button').text('Upload').prop('disabled', !!data.files.error);
        }
    }).on('fileuploadprogressall', function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress_voice .progress-bar').css(
            'width',
            progress + '%'
        );
    }).on('fileuploaddone', function (e, data) {
        if(data.result.success==true){
        	toastr["success"]('上传成功!');
        }else{
        	toastr["error"]('上传失败!');
        }
    }).on('fileuploadfail', function (e, data) {
        $.each(data.files, function (index) {
            var error = $('<span class="text-danger"/>').text('File upload failed.');
            $(data.context.children()[index])
                .append('<br>')
                .append(error);
        });
    }).prop('disabled', !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : 'disabled');
	
	
	$('#fileupload_video').fileupload({
        url: '<%=request.getContextPath()%>/info/addImage.do?infoId=<jsp:getProperty property="contactNum" name="building" />',
        dataType: 'json',
        autoUpload: true,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png|mp3|flv)$/i,
        maxFileSize: 99900000,
        disableImageResize: /Android(?!.*Chrome)|Opera/
            .test(window.navigator.userAgent),
        previewMaxWidth: 100,
        previewMaxHeight: 100,
        previewCrop: true
    }).on('fileuploadadd', function (e, data) {
    	data.context = $('<div class="col-sm-3"></div>').appendTo('#files_video');
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
            file = data.files[index],
            node = $(data.context.children()[index]);
        if (file.preview) {
            //node.prepend('<br>').prepend(file.preview);
        }
        if (file.error) {
            node.append('<br>').append($('<span class="text-danger"/>').text(file.error));
        }
        if (index + 1 === data.files.length) {
            data.context.find('button').text('Upload').prop('disabled', !!data.files.error);
        }
    }).on('fileuploadprogressall', function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress_video .progress-bar').css(
            'width',
            progress + '%'
        );
    }).on('fileuploaddone', function (e, data) {
        if(data.result.success==true){
        	toastr["success"]('上传成功!');
        }else{
        	toastr["error"]('上传失败!');
        }
    }).on('fileuploadfail', function (e, data) {
        $.each(data.files, function (index) {
            var error = $('<span class="text-danger"/>').text('File upload failed.');
            $(data.context.children()[index])
                .append('<br>')
                .append(error);
        });
    }).prop('disabled', !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : 'disabled');
    
    
});
function infoTypeClick(obj){
	//console.log();
	var text = $(obj).html();
	$(obj).parent().parent().children().each(function(){
		$(this).removeClass('active');
	});
	$(obj).parent().addClass('active');
	if('图片'==text){
		$('#textInfo').css('display','none');
		$('#imageInfo').css('display','block');
		$('#voiceInfo').css('display','none');
		$('#videoInfo').css('display','none');
	}else if('文字'==text){
		$('#textInfo').css('display','block');
		$('#imageInfo').css('display','none');
		$('#voiceInfo').css('display','none');
		$('#videoInfo').css('display','none');
	}else if('音频'==text){
		$('#textInfo').css('display','none');
		$('#imageInfo').css('display','none');
		$('#voiceInfo').css('display','block');
		$('#videoInfo').css('display','none');
	}else if('视频'==text){
		$('#textInfo').css('display','none');
		$('#imageInfo').css('display','none');
		$('#voiceInfo').css('display','none');
		$('#videoInfo').css('display','block');
	}
}
function submitForm(){
	$.ajax({
		method : 'POST',
		url : '<%=request.getContextPath()%>/info/addInfo.do',
		data : $('#dataForm').serialize(),
		success : function(){
			toastr["success"]('保存成功!');
		},
		error : function(){
			toastr["error"]('保存失败!');
		}
	});
	return false;
}
function test(){
	$('#file_upload1').click();
}
function setLevel(text){
	$('#warning').val(text);
}
function setWeather(text){
	$('#weather').val(text);
}
</script>
<body class="fixedbody">
<!--#include file="include_navbar.asp"-->
<jsp:include page="pages/include_navbar.jsp" />

<jsp:useBean id="now" class="java.util.Date" />
<jsp:useBean id="user" type="protect.build.model.User" scope="request"></jsp:useBean>
<jsp:useBean id="building" type="protect.build.model.OldBuilding" scope="request"></jsp:useBean>

<div class="container-fluid">
  <div class="row">
    <jsp:include page="pages/include_menu.jsp" />
    <div class="col-lg-10 col-lg-offset-2 text-center" >
    
    <div class="col-md-10 well">
    
      	<form class="form-horizontal" role="form" id="dataForm">
      		<input type="hidden" name="buildId" class="form-control" value="<jsp:getProperty property="buildId" name="building" />" />
      		<input type="hidden" name="userId" class="form-control" value="1" />
      		<input type="hidden" name="infoId" value="<jsp:getProperty property="contactNum" name="building" />" class="form-control"/>
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">保护村落：</label>
			    <div class="col-sm-5">
			    	<!-- 
			      <input type="text" class="form-control" value="<jsp:getProperty property="name" name="building" />" id="buildName" name="buildName" placeholder="Email" readonly>
			         -->
			        <select id="buildName" name="buildName" class="form-control">
			        	<c:forEach var="model" items="${listBuild}">
			        		<option value="<c:out value="${model.buildId}"/>"><c:out value="${model.name}"/></option>
			        	</c:forEach>
					</select>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">天气情况：</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" value="晴天" id="weather" name="weather" placeholder="">
			    </div>
			    <div class="col-sm-2">
			      <div class="btn-group btn-group-xs">
					  <button type="button" class="btn btn-default btn-success" onclick="setWeather('晴天')">晴天</button>
					  <button type="button" class="btn btn-default btn-success" onclick="setWeather('多云')">多云</button>
					  <button type="button" class="btn btn-default btn-success" onclick="setWeather('阴天')">阴天</button>
					  <button type="button" class="btn btn-default btn-success" onclick="setWeather('下雨')">下雨</button>
					  <button type="button" class="btn btn-default btn-success" onclick="setWeather('下雪')">下雪</button>
					</div>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="temprature">温度：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" value="2-12" id="temprature" name="temprature" placeholder="Email">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">预警：</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" value="正常" id="warning" name="warning" placeholder="Email">
			    </div>
			    <div class="col-sm-2">
			      <div class="btn-group">
					  <button type="button" class="btn btn-default btn-success" onclick="setLevel('正常')">正常</button>
					  <button type="button" class="btn btn-default btn-warning" onclick="setLevel('警告')">警告</button>
					  <button type="button" class="btn btn-default btn-danger" onclick="setLevel('危险')">危险</button>
					</div>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">操作员：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" value="<jsp:getProperty property="userName" name="user" />" id="contactor" name="contactor" placeholder="Email">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">时间：</label>
			    <div class="col-sm-5">
			      <div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="reportDate" data-link-format="yyyy-mm-dd">
                    <input name="reportDate" id="reportDate" class="form-control" type="text" 
                    value="<fmt:formatDate pattern="yyyy-MM-dd" value="${now}"/>"/>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                  </div>
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
		  <div id="textInfo" style="margin-top:20px">
		  	<div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">实时信息：</label>
			    <div class="col-sm-5">
			      <textarea class="col-sm-12" id="inputEmail" placeholder="" ></textarea>
			    </div>
			  </div>

		  </div>
		  <div id="imageInfo" style="display:none;margin-top:20px">
		  	<div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">实时信息：</label>
			    <div class="col-sm-5">
			      <textarea class="col-sm-12" id="inputEmail" placeholder="" ></textarea>
			    </div>
			  </div>
			  
			    
			   <div id="test" class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3">图片信息：</label>
			    <div class="col-sm-5">
			      <div class="controls fileupload-buttonbar">
				    <span class="btn btn-success fileinput-button">
	                    <i class="glyphicon glyphicon-plus"></i>
	                    <span>添加图片</span>
	                    <input id="fileupload" type="file" name="files[]" multiple>
	                    
	                </span>
				      
				  </div>
			    </div>
			  </div>
			  
			  
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="inputEmail3"></label>
			    <div class="col-sm-5">
			      <div class="row">
				      <!-- The global progress bar -->
					    <div id="progress" class="progress">
					        <div class="progress-bar progress-bar-success"></div>
					    </div>
					    <!-- The container for the uploaded files -->
					    <div id="files" class="files"></div>
				 </div>
				  </div>
			    </div>
			  </div>
			  
			
			  	
			  <div id="voiceInfo" style="display:none;margin-top:20px">
			  	<div class="form-group">
				    <label class="col-sm-2 control-label" for="inputEmail3">实时信息：</label>
				    <div class="col-sm-5">
				      <textarea class="col-sm-12" id="inputEmail" placeholder="" ></textarea>
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label class="col-sm-2 control-label" for="inputEmail3">音频信息：</label>
				    <div class="col-sm-5">
				      <div class="controls fileupload-buttonbar">
					    <span class="btn btn-success fileinput-button">
		                    <i class="glyphicon glyphicon-plus"></i>
		                    <span>添加音频</span>
		                    <input id="fileupload_voice" type="file" name="files[]" multiple>
		                </span>
					      
					  </div>
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label class="col-sm-2 control-label" for="inputEmail3"></label>
				    <div class="col-sm-5">
				      <div class="row">
					      <!-- The global progress bar -->
						    <div id="progress_voice" class="progress">
						        <div class="progress-bar progress-bar-success"></div>
						    </div>
						    <!-- The container for the uploaded files -->
						    <div id="files_voice" class="files"></div>
					 </div>
					  </div>
				    </div>
			    
			  </div>
			  
			  <div id="videoInfo" style="display:none;margin-top:20px">
			  	<div class="form-group">
				    <label class="col-sm-2 control-label" for="inputEmail3">实时信息：</label>
				    <div class="col-sm-5">
				      <textarea class="col-sm-12" id="inputEmail" placeholder="" ></textarea>
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label class="col-sm-2 control-label" for="inputEmail3">视频信息：</label>
				    <div class="col-sm-5">
				      <div class="controls fileupload-buttonbar">
					    <span class="btn btn-success fileinput-button">
		                    <i class="glyphicon glyphicon-plus"></i>
		                    <span>添加视频</span>
		                    <input id="fileupload_video" type="file" name="files[]" multiple>
		                </span>
					      
					  </div>
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label class="col-sm-2 control-label" for="inputEmail3"></label>
				    <div class="col-sm-5">
				      <div class="row">
					      <!-- The global progress bar -->
						    <div id="progress_video" class="progress">
						        <div class="progress-bar progress-bar-success"></div>
						    </div>
						    <!-- The container for the uploaded files -->
						    <div id="files_video" class="files"></div>
					 </div>
					  </div>
				    </div>
				    
			  </div>
			  
			  
			  <div class="form-group">
				    <label class="col-sm-2 control-label" for="inputEmail3"></label>
				    <div class="col-sm-5">
				      <button type="button" class="btn" onclick="submitForm();">提交</button>
				    </div>
				</div>
			  
		  </div>
	</form>	  
	</div>	  
		
		
    </div>
  </div>
</div>

</body>  
</html>