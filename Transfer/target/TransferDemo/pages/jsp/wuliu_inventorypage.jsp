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
    <meta content="中集速运、中集速运" name="keywords">
    <meta content="中集速运、中集速运" name="description">
    <meta content="Li Zhen Ya Team" name="author">
    <title>明德速运</title>
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
     <%@ include file="wuliu_menu.jsp" %>
</header>
<section>
    <div class="lzy-content lzy-content-order">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab capital-list ">
                            <h3>库存列表</h3>
                        </div>

                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td>订单号 <input placeholder="" value="" name="" ></td>

                                    <td>下单日期 <input placeholder="" value="" name="" >

                                    <td align="right"><a href="#">查询</a></td>
                                </tr>
                            </table>

                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital">
                                <thead>
                                    <tr>
                                        <th>订单编号</th>
                                        <th>用户姓名</th>
                                        <th>用户邮箱</th>
                                        <th>发货地址</th>
                                        <th>下单时间</th>
                                        <th>用户留言</th>
                                        <th>支付状态</th>
                                        <th>订单重量</th>
                                        <th>订单价格</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>QWER1</td>
                                    <td>马一帅</td>
                                    <td>908236747@qq.com</td>
                                    <td>湖北武汉科技大学</td>
                                    <td>2019-3-19</td>
                                    <td>这是我第一个包裹</td>
                                    <td>未支付</td>
                                    <td>1.29kg</td>
                                    <td>￥12</td>
                                </tr>

                                <tr>
                                    <td>QWER2</td>
                                    <td>马一帅</td>
                                    <td>908236747@qq.com</td>
                                    <td>湖北武汉科技大学</td>
                                    <td>2019-3-19</td>
                                    <td>这是我第二个包裹</td>
                                    <td>未支付</td>
                                    <td>2.3kg</td>
                                    <td>￥20.3</td>
                                </tr>

                                <tbody>

                                </tbody>

                            </table>

                        </div>

                        <div class="lzy-page clearfix">
                            <a href="${ pageContext.request.contextPath }/adminOrder_inventorypage.action" class="previous">上一页</a>
                            <a href="#" class="or">1</a>
                            <a href="#">2</a>
                            <a href="${ pageContext.request.contextPath }/adminOrder_inventorypage.action" class="next">下一页</a>
                            <span>共<i></i>条</span>
                            <span>共<i></i>页</span>
                            <span>跳到第<input type="" value="" placeholder="">页</span>
                            <a href="#" class="jumps">跳转</a>
                        </div>
                    </div>

                    <div class="pane">
                        
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