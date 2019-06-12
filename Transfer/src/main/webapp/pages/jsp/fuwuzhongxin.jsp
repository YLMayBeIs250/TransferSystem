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
    <title>服务中心</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/home.css">
</head>
<body>

<header id="lzy-header">
    <%@ include file="indexmenu.jsp" %>
</header>

<section>
   <div class="lzy-service"></div>
</section>

<section>
    <div class="lzy-service-box">
        <div class="lzy-container">
            <div class="lzy-query" style="text-align:center;">
                <form>
                    <label>在线查询</label>
                    <input type="text" placeholder="" value="" name="" class="box-input">
                    <input type="submit" placeholder="" value="查询" class="box-submit" name="">
                </form>
            </div>
            <div class="lzy-subst">
                <div class="lzy-box-class"></div>
                <div class="lzy-proper clearfix">
                    <dl>
                        <dt>提交身份证明</dt>
                        <dd></dd>
                        <dd>通过Xlobo系统提交收件人申报资料上传收件人身份证明，完成入境申报委托</dd>
                        <dd><a href="#">开始使用</a></dd>
                    </dl>
                    <dl>
                        <dt>在线缴税</dt>
                        <dd></dd>
                        <dd>在线缴费关税通道<br>在线补税通道</dd>
                        <dd><a href="#">开始使用</a></dd>
                    </dl>
                    <dl>
                        <dt>关务咨询</dt>
                        <dd></dd>
                        <dd>报关，报检的相关政策，法规咨询入境关务舆情分享</dd>
                        <dd><a href="#">开始使用</a></dd>
                    </dl>
                    <dl style="background:none">
                        <dt>在线客服</dt>
                        <dd></dd>
                        <dd>发件人服务时间：北京时间周一至周五 9:00-21:00。</dd>
                        <dd><a href="#">开始使用</a></dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="lzy-container">
        <div class="lzy-partner">
            <h2>合作伙伴</h2>
            <div class="clearfix">
                <ul>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-1.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-2.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-3.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-4.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-5.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-6.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-7.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-8.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-9.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-10.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-11.png"></li>
                    <li><img src="${pageContext.request.contextPath}/theme/img/logo/pt-12.png"></li>
                </ul>
            </div>
        </div>
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