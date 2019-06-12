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
    <title>国际转运-资金流水</title>
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
     <%--<%@ include file="admin_menu.jsp" %>--%>
         <%@ include file="wuliu_menu.jsp" %>
</header>

<section>
    <div class="lzy-content lzy-content-order">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <ul>
                    <li class="hit">资金流水</li>
                    <li>充值记录</li>
                </ul>
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab capital-tab">
                            <h3>资金流水</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td align="right"><a href="#" onclick="javascript:window.print()">打印</a></td>
                                </tr>
                            </table>
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital">
                                <tr>
                                    <th>日期</th>
                                    <th>账户类型</th>
                                    <th>账户名</th>
                                    <th>订单号</th>
                                    <th>金额</th>
                                    <th>用途</th>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>订单支付</td>
                                </tr>
                            </table>

                        </div>
                        <div class="lzy-page clearfix">
                            <a class="previous" href="#">上一页</a>
                            <a class="or" href="#">1</a>
                            <a href="#">2</a>
                            <a class="next" href="#">下一页</a>
                            <span>共<i>2</i>条</span>
                            <span>共<i>2</i>页</span>
                            <span>跳到第<input type="" placeholder="" value="">页</span>
                            <a class="jumps" href="#">跳转</a>
                        </div>
                    </div>
                    <div class="pane">
                        <div class="panes-tab Pay-tab">
                            <h3>充值记录</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td>充值日期&nbsp;&nbsp;<input placeholder="" value="" name="" ><input placeholder="" value="" name="" ></td>
                                    <td></td>
                                    <td align="right"><a href="#">查询</a></td>
                                </tr>
                            </table>
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital">
                                <tr>
                                    <th>日期</th>
                                    <th>账户类型</th>
                                    <th>账户名</th>
                                    <th>订单号</th>
                                    <th>金额</th>
                                    <th>用途</th>
                                </tr>
                                <tr>
                                    <td>2016-03-12 11:24:22</td>
                                    <td>个人</td>
                                    <td>fsdfsdf@163.com</td>
                                    <td>156655488664455</td>
                                    <td>€16.00</td>
                                    <td>充值成功</td>
                                </tr>
                            </table>

                        </div>
                        <div class="lzy-page clearfix">
                            <a class="previous" href="#">上一页</a>
                            <a class="or" href="#">1</a>
                            <a href="#">2</a>
                            <a class="next" href="#">下一页</a>
                            <span>共<i>2</i>条</span>
                            <span>共<i>2</i>页</span>
                            <span>跳到第<input type="" placeholder="" value="">页</span>
                            <a class="jumps" href="#">跳转</a>
                        </div>

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