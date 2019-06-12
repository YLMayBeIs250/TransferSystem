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
<div id="layout">
    <span>通过id号查找对应管理员的信息</span>
    <form method="post" action="AdminController/selectAdmin.do">
        <input type="text" id="id" name="id"/>
        <input id="btnSubmit"  type="submit" value="提 交"/>
    </form>

</div>

</body>
</html>