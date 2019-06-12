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
    <title>国际转运-发件人地址</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/home.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.4.2.js"></script>
    <script type="text/javascript">
        $(function(){
            $('.tabPanel ul li').click(function(){
                $(this).addClass('hit').siblings().removeClass('hit');
                $('.panes>div:eq('+$(this).index()+')').show().siblings().hide();
            })
        })
    </script>
</head>

<body>

<header id="lzy-header">
    <%@ include file="menu.jsp" %>
</header>
<section>
    <div class="lzy-content lzy-content-order">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <ul>
                    <li class="hit">收货地址</li>
                </ul>
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab user-info-tab">
                            <h3>我的收货地址</h3>
                        </div>
                     </div>
                </div>

                <table style="width: 90%;border-collapse: collapse;margin: 0 auto;text-align: center;">
                    <thead style="background-color: #CCE8EB;width: 100px;">
                    <tr>收件人</tr>
                    <tr>国家</tr>
                    <tr>省/州</tr>
                    <tr>城市</tr>
                    <tr>联系电话</tr>
                    <tr>邮编</tr>
                    <tr>地址</tr>
                    <tr>操作</tr>
                    </thead>
                    <tbody></tbody>
                </table>

                <h2>新增收货地址</h2>

                <div>
                    <form>
                        <label>收件人姓名：</label>
                        <input name="name" id="name" type="text" class="form-control" value="" placeholder="请填写国外身份证对应的名字">
                    </form>
                </div>
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