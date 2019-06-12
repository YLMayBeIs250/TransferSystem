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
        
        function query(){
          var a = $("#asd").val();
          if( a != null && a != ""){
          	//ajax
          }else{
            alert(1);
            return false;
          }
        
        }
       function random(){
     	 var GetRandomn = 1;
		//获取随机范围内数值的函数
		function GetRandom(n){
		    GetRandomn=Math.floor(Math.random()*n+1);
		    }
		//开始调用，获得一个1-100的随机数
		GetRandom("30");
		//输出查看
		document.getElementById('WIDout_trade_no').value = GetRandomn;
       }
        
    </script>

</head>

<body>

<header id="lzy-header">
    <%@ include file="menu.jsp" %>
</header>
<section>
    <div class="lzy-content lzy-content-order" id="lzy-adaption">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <ul>
                    <li class="hit">充值</li>
                </ul>
                <div class="panes">
                    <div class="pane"   style="display:block;">
                        <div class="panes-tab payment-tab">
                            <h3>充值</h3>
                        </div>
                        <div class="lzy-payment">

                            <div class="login_m">
                                <div class="login_boder">
                                
                                    <div class="login_padding info">
                                    <form name="alipayment" action="${pageContext.request.contextPath}/Order_pay.action" method="post" target="_blank" >
                                    <div class="rem_sub">
                                        <p><span ><input type="hidden" id="WIDout_trade_no" name="orderId" value="" /></span></p>
                                        <p><span><input type="hidden" id="WIDsubject" name="WIDsubject"  value="充值"/></span></p>
                                        <p><span class="info-text">充值金额：<input type="text" id="WIDtotal_amount" name="account" value="" /></span></p>
                                    </div>
                                        <div class="rem_sub">
                                       		<div class="clearfix" ><input type="submit"  onclick="random()" value="支付宝支付" id="button" name="button" class="sub_button" ></div>
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