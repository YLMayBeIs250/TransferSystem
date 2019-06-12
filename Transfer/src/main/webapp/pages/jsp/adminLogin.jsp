<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta content="中集速运、中集速运" name="keywords">
    <meta content="中集速运、中集速运" name="description">
    <meta content="Li Zhen Ya Team" name="author">
    <title>明德速运-管理员登录</title>
    <link type="text/css" rel="stylesheet" href="theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="theme/css/home.css">
</head>
<body>

<header id="lzy-header">
    <div class="lzy-container clearfix">
        <div class="lzy-he-logo">
            <h1>
                <a href="${pageContext.request.contextPath}/index.action"><img src="theme/img/logo.png" title="" about="" name=""></a>
            </h1>
        </div>
    </div>
</header>
<section>
    <div class="lzy-content" id="lzy-adaption">
        <div class="lzy-boxes">
            <div class="lzy-shadow">
                <h2><i></i>管理员登录</h2>
            </div>

            <div class="login_m">
                <div class="login_boder">
                    <div class="login_padding">
                    <form action="${pageContext.request.contextPath}/Admin_login.action" method="post" novalidate="novalidate">
                        <h2>用户名</h2>
                        <label>
                            <input type="text" id="admim" name="admin" class="txt_input txt_input2" value="" placeholder="">
                        </label>
                       
                        <h2>密码</h2>
                        <label>
                            <input type="password" name="adminpassword" id="password" class="txt_input" >
                        </label>
                        <div class="rem_sub">
                            <div class="clearfix">
                                <div class="rem_sub_l fl"><input type="checkbox" name="checkbox" id="save_me" placeholder=""><label for="checkbox">记住我的登录状态</label></div>
                            </div>
                             <label>
                           <font color="red"> <s:actionerror /></font>
                        	</label>
                            <div class="clearfix"><input type="submit" class="sub_button" name="button" id="submit" value="登录"></div>
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