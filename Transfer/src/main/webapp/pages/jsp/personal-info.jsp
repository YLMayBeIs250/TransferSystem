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
    <%--<script src="${pageContext.request.contextPath}/theme/js/jquery-1.7.1.min.js"></script>--%>
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
                    <li>用户基本信息</li>
                    <li class="hit">信息补充/修改</li>
                </ul>
                <div class="panes">

                    <div class="pane">
                        <div class="panes-tab recipient-tab">
                            <h3>用户信息</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital">
                                <tr>
                                    <th>姓名</th>
                                    <th>邮箱</th>
                                    <th>电话</th>
                                    <th>微信</th>
                                    <th>国家/城市</th>
                                    <th>具体地址</th>
                                </tr>
                                <tr>
                                    <td>${sessionScope.user.username}</td>
                                    <td>${sessionScope.user.useremail}</td>
                                    <td>${sessionScope.user.telephone}</td>
                                    <td>${sessionScope.user.wechat}</td>
                                    <td>${sessionScope.user.city}</td>
                                    <td>${sessionScope.user.location}</td>
                                </tr>
                            </table>

                        </div>
                    </div><%--用户信息--%>

                    <div class="pane" style="display:block;">
                        <div class="panes-tab user-info-tab">
                            <h3>信息修改</h3>
                        </div>
                        <div class="login_m">
                            <div class="login_boder">
                                <form action="UserController/updateUserInfo.do" method="post" enctype="multipart/form-data">
                                    <div class="login_padding">
                                        <div class="essential">
                                            <label>
                                                <p><input type="hidden" class="txt_input txt_input2" name="id" value="${sessionScope.user.id}" /></p>
                                            </label>
                                            <label>
                                                <p><input type="hidden" class="txt_input txt_input2" name="username" value="${sessionScope.user.username}" /></p>
                                            </label>
                                            <label>
                                                <p>密码<input type="text" class="txt_input txt_input2" name="password" value="${sessionScope.user.password}" /></p>
                                            </label>
                                            <label>
                                                <p>邮箱<input type="text" class="txt_input txt_input2" name="useremail" value="${sessionScope.user.useremail}" /></p>
                                            </label>
                                            <label>
                                                <p>手机号<input type="text" name="telephone" class="txt_input txt_input2" value="${sessionScope.user.telephone}"  /></p>
                                            </label>
                                            <label>
                                                <p>微信<input type="text" name="wechat" class="txt_input txt_input2" value="${sessionScope.user.wechat}" /></p>
                                            </label>
                                            <label>
                                                <p>国家/城市<input type="text" class="txt_input txt_input2" name="city" value="${sessionScope.user.city}" /></p>
                                            </label>
                                            <label>
                                                <p>具体地址<input type="text" class="txt_input txt_input2" name="location" value="${sessionScope.user.location}" /></p>
                                            </label>


                                        </div>
                                        <div class="rem_sub">
                                            <div class="clearfix"><input type="submit" value="补 充 / 修  改" id="button" name="button" class="sub_button"></div>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div><%--信息修改--%>
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