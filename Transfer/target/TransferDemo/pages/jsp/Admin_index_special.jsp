<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>明德速运</title>
	<link rel="stylesheet" type="text/css" href="theme/index_special/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="theme/index_special/css/demo.css">
	<link rel="stylesheet" href="theme/index_special/dist/jquery.vidbacking.css" type="text/css">
	<link rel="stylesheet" href="theme/index_special/css/style2.css" type="text/css">
</head>
<body>

	<div class="htmleaf-container">
		<video poster="theme/index_special/assets/screenshot1.jpg" autoplay muted loop class="vidbacking">
		        <source src="theme/index_special/assets/Rallye.mp4" type="video/mp4">
		</video>
		<div class="video-back">
		    <h1>尊敬的管理员，欢迎您！</h1>
		    <p>感谢您对工作的支持与热爱！</p>
		    <div class="htmleaf-demo center">
			  <a href="Admin_manage.action" class="current">进入管理页面</a>
			</div>
		    <div class="clearfix"></div>
		</div>
		
	</div>
	
	<script src="theme/index_special/js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="theme/index_special/dist/jquery.vidbacking.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
            $('body').vidbacking({
                'masked': true
            });
        });
    </script>
	
</body>
</html>
