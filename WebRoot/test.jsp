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
<link href="<%=request.getContextPath()%>/javascripts/plupload-2.2.1/js/jquery.ui.plupload/css/jquery.ui.plupload.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/javascripts/jquery-ui-1.11.4.custom/jquery-ui.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/javascripts/toast/toastr.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascripts/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/bootstrap_datepicker/bootstrap-datetimepicker.zh-CN.js"></script>

<script src="<%=request.getContextPath()%>/javascripts/plupload-2.2.1/js/plupload.full.min.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/plupload-2.2.1/js/jquery.ui.plupload/jquery.ui.plupload.min.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/plupload-2.2.1/js/i18n/zh_CN.js"></script>
<script src="<%=request.getContextPath()%>/javascripts/toast/toastr.min.js" ></script>
<body>
<div id="filelist">Your browser doesn't have Flash, Silverlight or HTML5 support.</div>
<br />
 
<div id="container">
    <a id="pickfiles" href="javascript:;">[Select files]</a>
    <a id="uploadfiles" href="javascript:;">[Upload files]</a>
</div>
 
<br />
<pre id="console"></pre>
 
 
<script type="text/javascript">
// Custom example logic
 
var uploader = new plupload.Uploader({
    runtimes : 'html5,flash,silverlight,html4',
     
    browse_button : 'pickfiles', // you can pass in id...
    container: document.getElementById('container'), // ... or DOM Element itself
     
    url : "/examples/upload",
     
    filters : {
        max_file_size : '10mb',
        mime_types: [
            {title : "Image files", extensions : "jpg,gif,png"},
            {title : "Zip files", extensions : "zip"}
        ]
    },
 
    // Flash settings
    flash_swf_url : '/plupload/js/Moxie.swf',
 
    // Silverlight settings
    silverlight_xap_url : '/plupload/js/Moxie.xap',
     
 
    init: {
        PostInit: function() {
            document.getElementById('filelist').innerHTML = '';
 
            document.getElementById('uploadfiles').onclick = function() {
                uploader.start();
                return false;
            };
        },
 
        FilesAdded: function(up, files) {
            plupload.each(files, function(file) {
                document.getElementById('filelist').innerHTML += '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ') <b></b></div>';
            });
        },
 
        UploadProgress: function(up, file) {
            document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
        },
 
        Error: function(up, err) {
            document.getElementById('console').innerHTML += "\nError #" + err.code + ": " + err.message;
        }
    }
});
 
uploader.init();
 
</script>
</body>
</html>