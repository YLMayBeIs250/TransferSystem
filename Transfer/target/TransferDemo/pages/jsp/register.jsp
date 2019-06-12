<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta content="国际转运" name="keywords">
    <meta content="海外华侨，学子都在用的国际转运代购平台" name="description">
    <meta content="MSS Team" name="author">
    <title>用户注册</title>
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
        <div class="lzy-boxes lzy-boxes-cpa clearfix">
            <div class="lzy-boxes-fl fl">
                <div class="lzy-reg-title"><h2>个人用户</h2></div>
                <div class="lzy-reg-image"><img src="${pageContext.request.contextPath}/theme/img/icon/ic-reg-in.png"></div>
                <div class="lzy-reg-lists">
                    <h3>您是：</h3>
                    <ul>
                        <li>长期居住在 的居民，留学生...... </li>
                        <li>从事代购海淘等C2C跨境电商的业务</li>
                    </ul>
                </div>
                <div class="lzy-reg-lists lzy-reg-lists-bj">
                    <h3>您只需提供以下信息：</h3>
                    <ul>
                        <li>个人海外身份ID、驾照或护照中的一种扫描件</li>
                        <li>水、电、煤气或信用卡账单的一种扫描件</li>

                    </ul>
                </div>
                <div class="lzy-reg-button" style="padding-top:20px;"><a href="${pageContext.request.contextPath}/pages/jsp/personal_reg.jsp">个人注册</a></div>
            </div>
            <div class="lzy-boxes-fl lzy-boxes-fr fr">
                <div class="lzy-reg-title"><h2>企业用户</h2></div>
                <div class="lzy-reg-image"><img src="${pageContext.request.contextPath}/theme/img/icon/ic-reg-fo.png"></div>
                <div class="lzy-reg-lists">
                    <h3>您是：</h3>
                    <ul>
                        <li>注册于 的企业</li>
                        <li>从事跨境电商B2C业务</li>
                    </ul>
                </div>
                <div class="lzy-reg-lists lzy-reg-lists-b">
                    <h3>您只需提供以下信息：</h3>
                    <ul>
                        <li>公司营业执照扫描件及编号</li>
                        <li>水、电、煤气或信用卡账单的一种扫描件</li>
                        <li>企业税号、增值税号等（因不同发件国而异）</li>
                    </ul>
                </div>
                <div class="lzy-reg-button lzy-reg-button-b"><a href="${pageContext.request.contextPath}/pages/jsp/enterprise_reg.jsp">企业注册</a></div>
            </div>

        </div>
        <div style="height:80px;"></div>
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