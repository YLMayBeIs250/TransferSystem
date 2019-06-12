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
    <style type="text/css">
        html,body,div,dl,dt,dd,ol,ul,li,h1,h2,h3,h4,h5,h6,p,blockquote,pre,button,fieldset,form,input,legend,textarea,th,td,article,aside,canvas,details,figcaption,figure,footer,header,hgroup,menu,nav,section,summary {margin:0;padding:0;}
        article,aside,details,figcaption,figure,footer,header,menu,nav,section,summary {display:block;}
        audio,canvas,video {display:inline-block;}

        body,input,button,textarea,button {font: 12px/1.4 "Helvetica Neue",Helvetica,Arial,Verdana,sans-serif;}
        .clearfix:after {display:block;content:"";clear:both;}
        .clearfix {display:block;*zoom:1;}
        .shop-mask {
            background-color:rgba(0,0,0,0.4);
            width:100%;
            height:100%;
            position:fixed;
            left:0;
            top:0;
        }

        .shop-centre {
            background-color:#fff;
            border-radius:3px;
            position:fixed;
            top:50%;
            left:50%;
            margin:-280px 0 0 -400px;
            width:800px;
            height:500px;
            color:#606060;
            padding-top:30px;
            padding-bottom:30px;
        }

        .shop-line {
            padding-left:20px;
            border-bottom:1px solid #d5d6d4;
        }
        .shop-line h2 {
            padding-bottom:10px;
            font-size:16px;
        }
        .shop-lines {

        }
        .shop-lines table {width:100%; text-align:left; }
        .shop-lines table td { padding:10px 20px;}
        .shop-lines table td { border-bottom:1px solid #e4e4e4; }
        .shop-lines table tr:hover { background:#ffe5b9; cursor:pointer;}
        .shop-lines a:hover { color:#ffa200;}
        .shop-text {background: #fff; padding:5px 1px; border:1px solid #d5d6d4}

        .shop-search {
            background:#ffa200;
            border:none;
            color:#fff;
            font-size:13px;
            padding:5px 15px;
            cursor:pointer;
        }

    </style>
</head>
<body style="position:relative;">
<div class="shop-mask"></div>
<div class="shop-centre" style="text-align:center;">
     <div class="clearfix" style="text-align:left;">
     <div class="pane"  style="display:block;">
                        <div class="panes-tab panes-tab2  release-icon">
                            <h3>修改公告</h3>
                        </div>
                        <div class="login_m release-tab">
                        <form action="${pageContext.request.contextPath}/Notice_update.action" method="post">
                            <div class="login_boder">
                                <div class="login_padding">
                                    <h2>标题</h2>
                                    <input type="hidden" name="noticeId" value="" />
                                    <label>
                                        <input type="text" placeholder="" value="" class="txt_input txt_input2" id="title" name="title">
                                    </label>
                                    <h2>公告内容</h2>
                                    <label>
                                        <textarea style="resize:none" name="context" value=""></textarea>
                                    </label>

                                    <div class="rem_sub">
                                        <div class="clearfix"><input type="submit" class="sub_button" name="button" id="button" value="修 改"></div>
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
			    </div> 

    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
    <div style="height:300px"></div>
</div>
</body>
</html>