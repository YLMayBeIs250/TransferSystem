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
    <title>国际转运</title>
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
            <div class="pane" style="display:block;">
                        <div class="panes-tab finite-tab">
                            <h3>订单详情</h3>
                        </div>
                        
                        <div class="lzy-tab2">
                            <div class="lzy-tab3">
                                <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-excel tab-page">
                                    <tr>
                                        <td>订单号：<span><s:property value="#list.orderId" /></span></td>
                                        <!-- <td> 订单总重：<span>1kg</span></td>
                                        <td>物流：<span>EMS</span></td> -->
                                        <td>状态：<span>新建</span></td>
                                        <!-- <td align="right"><a href="#">等待付款</a><a href="#">已经付款</a><a href="#">订单完成</a><a href="#">取消订单</a></td> -->
                                    </tr>
                                    <tr>
                                        <td>订单创建于：<span></span></td>
                                    </tr>
                                    <tr>
                                        <td>发件人：<span></span></td>
                                    </tr>
                                    <tr>
                                        <td>发票抬头： <span></span></td>
                                    </tr>

                                </table>
                                <table class="tab-content">
                                    <tr>
                                        <th>目的地</th>
                                        <th>收件人</th>
                                        <th>包裹号</th>
                                        <!-- <th>重量</th> -->
                                        <th>状态</th>
                                        <th>实付运费</th>
                                    </tr>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <!-- <td>1kg</td> -->
                                        <td></td>
                                        <td></td>
                                    </tr>

                                </table>

                                <div class="tab-encyst tab-storage">

                                	还应支付运费：<span>  <s:property value="#list.orderPrice" />RMB</span>
                                	<a href="${pageContext.request.contextPath}/Order_paymentPage.action?orderId" class="payment-tab">立即支付</a>

                                </div>
                                <div class="tab-encyst">订单实付总运费：<span>RMB</span></div>

                            </div>
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
