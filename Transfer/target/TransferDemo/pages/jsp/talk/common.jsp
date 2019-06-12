<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理系统</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet">

<script src="<%=basePath%>js/jquery-1.11.3.js"></script>
<script src="<%=basePath%>js/jquery.timers.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>


<%-- <style type="text/css">
body{
    position:relative;
    background:url("<%=basePath %>images/1.jpg") no-repeat;
}
</style> --%>

</head>
<body>

</body>
</html>