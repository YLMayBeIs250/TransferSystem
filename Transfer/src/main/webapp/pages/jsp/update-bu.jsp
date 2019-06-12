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
    <title>国际转运-发布公告</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/home.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.4.2.js"></script>

    <script>
        //获取参数
        function getQueryString(name) {
            var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
            var r = window.location.search.substr(1).match(reg);
            if (r != null) {
                return unescape(r[2]);
            }
            return null;
        }

        //这样调用,获取对应公告的noticeid来更新session
        var id = getQueryString("noticeid");
        console.log("获取的参数为"+id)
        console.log("获取到参数准备ajax请求")
        $(function(){
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                async : false,
                data:{"noticeid":id},
                dataType: "json",//预期服务器返回的数据类型
                url: "NoticeController/selectNoticeById.do" ,//url
                success: function (result) {
                    //console.log("selectNoticeById.do的ajax请求成功！")

                    //刷新一次页面
                    if(location.href.indexOf("#reloaded")==-1){
                        location.href=location.href+"#reloaded";
                        location.reload();
                    }
                },
                error : function() {
                    console.log("selectNoticeById.do的ajax请求失败")
                }
            });
        })

        //ajax提交表单,修改公告
        function change_notice(){
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                data: $('#form1').serialize(),
                async : false,
                url: "NoticeController/updateNoticeById.do" ,//url
                success: function (result) {
                    //console.log("form提交ajax成功")
                    window.location.href="${pageContext.request.contextPath}/pages/jsp/admin_index.jsp";
                },
                error : function() {
                    alert("异常");
                }
            });
        }
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
                <div class="panes">
                    <div class="pane"  style="display:block;">
                        <div class="panes-tab panes-tab2  release-icon">
                            <h3>修改公告</h3>
                        </div>
                        <div class="login_m release-tab">
                            <div class="login_boder">
                                <div class="login_padding">
                                <form action="" enctype="multipart/form-data" id="form1">
                                    <h2>标题</h2>
                                    <label>
                                        <input type="text" name="noticetitle" class="txt_input txt_input2" placeholder="${sessionScope.notice.noticetitle}">
                                    </label>

                                    <h2>公告内容</h2>
                                    <label>
                                        <textarea name="noticebody" placeholder="${sessionScope.notice.noticebody}"></textarea>
                                    </label>

                                    <label>
                                        <p><input type="hidden" class="txt_input txt_input2" name="noticeid" value="${sessionScope.notice.noticeid}"/></p>
                                    </label>

                                    <label>
                                        <p><input type="hidden" class="txt_input txt_input2" id="noticetime" name="noticetime"/></p>
                                    </label>

                                    <script langguage="JavaScript">
                                        var now = new Date();
                                        noticetime.value=String(new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate());
                                    </script>

                                    <div class="rem_sub">
                                        <div class="clearfix"><input type="button" class="sub_button" value="修改公告" onclick="change_notice()"></div>
                                    </div>
                                  </form>
                                </div>
                            </div>
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