<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta content="国际转运" name="keywords">
    <meta content="海外华侨，学子都在用的国际转运代购平台" name="description">
    <meta content="MSS Team" name="author">
    <title>用户登录</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/home.css">
</head>
<body>

<header id="lzy-header">
    <div class="lzy-container clearfix">
        <div class="lzy-he-logo">
            <h1>
                <a href="${pageContext.request.contextPath}/pages/jsp/index.jsp"><img src="${pageContext.request.contextPath}/theme/img/logo.png" title="" about="" name=""></a>
            </h1>
        </div>
    </div>
</header>
<section>
    <div class="lzy-content" id="lzy-adaption">
        <div class="lzy-boxes">
            <div class="lzy-shadow">
                <h2><i></i>登录</h2>
            </div>

            <div class="login_m">
                <div class="login_boder">
                    <div class="login_padding">
                    <form action="UserController/selectUser.do" method="post" novalidate="novalidate">
                        <h2>用户邮箱</h2>
                        <label>
                            <input type="text" id="useremail" name="useremail" class="txt_input txt_input2" value="" placeholder="">
                        </label>
                       
                        <h2>密码</h2>
                        <label>
                            <input type="password" name="password" id="password" class="txt_input" >
                        </label>

                        <div class="rem_sub">
                            <div class="clearfix">
                                <div class="rem_sub_l fl"><input type="checkbox" name="checkbox" id="checkbox" placeholder=""><label for="checkbox">记住我的登录状态</label></div>
                                <div class="forgot fr"><a href="javascript:void(0);">忘记密码?</a></div><%--记住我的密码js代码没写，以及此处的忘记密码代码没写！--%>
                            </div>
                            <div class="clearfix"><input type="submit" class="sub_button" name="button" id="submit" value="登录"></div>
                            <div class="reg"><a href="${pageContext.request.contextPath}/pages/jsp/register.jsp">立即注册</a></div>
                        </div>
                     </form>
                    </div>
                </div>
            </div>
        </div>
        <div style="height:100px;"></div>
    </div>

</section>

<footer>
    <div class="lzy-adaption">
        <div class="lzy-copyright">
            <p>Copyright © 2012 xLobo.com, YMT GLOBAL. All Rights Reserved. 沪ICP备16004361号</p>
        </div>
    </div>
</footer>

</body>
</html>