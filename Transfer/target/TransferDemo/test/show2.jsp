<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>注册</title>
</head>

<body>

    <ul>
        <li>id号<span class="userInfo">${requestScope.admin.id}</span></li>
        <li>姓名<span class="userInfo">${requestScope.admin.username}</span></li>
        <li>密码<span class="userInfo">${requestScope.admin.password}</span></li>
    </ul>



</body>
</html>