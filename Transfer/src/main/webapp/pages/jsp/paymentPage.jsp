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
    <title>国际转运-订单支付</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/home.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.4.2.js"></script>
    <script type="text/javascript">
        //hit
        $(function(){
            $('.tabPanel ul li').click(function(){
                $(this).addClass('hit').siblings().removeClass('hit');
                $('.panes>div:eq('+$(this).index()+')').show().siblings().hide();
            })
        })

        //阿里支付
        function alipay(){
        	window.location.href="${pageContext.request.contextPath}/Order_alipay.action";
        }

        //查询
        function query(){
          var a = $("#asd").val();
          if( a != null && a != ""){
          	//ajax
          }else{
            alert(1);
            return false;
          }
        
        }

        //支付测试
        function payTest(){
            //获取url传过来的参数
                var args = new Object( );
                var query = location.search.substring(1);
                var pairs = query.split("&");
                for(var i = 0; i < pairs.length; i++) {
                    var pos = pairs[i].indexOf('=');
                    if (pos == -1) continue;
                    var argname = pairs[i].substring(0,pos);
                    var value = pairs[i].substring(pos+1);
                    value = decodeURIComponent(value);
                    args[argname] = value;
                }
                var a=args.orderid;
                var shuju={orderid:"QWER1",orderstate:"1"}
                console.log("这里在ajax发送之前");
            $.ajax({
                //几个参数需要注意一下
                type: "GET",//方法类型
                data:{
                    ds:JSON.stringify(shuju)
                },
                async : false,
                url: "OrderController/payOrderByOrderId.do" ,//url
                success: function (result) {
                    alert("正常");
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
    <%@ include file="menu.jsp" %>
</header>
<section>
    <div class="lzy-content lzy-content-order" id="lzy-adaption">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <ul>
                    <li class="hit">我的订单</li>
                </ul>
                <div class="panes">
                    <div class="pane"   style="display:block;">
                        <div class="panes-tab payment-tab">
                            <h3>订单支付</h3>
                        </div>
                        <div class="lzy-payment">

                            <div class="login_m">
                                <div class="login_boder">
                                
                                    <div class="login_padding info">
                                    <form name="alipayment" action="${pageContext.request.contextPath}/Order_pay.action" method="post" target="_blank" >

                                        <input type="hidden" id="WIDout_trade_no" name="orderId"     value="" />
                                        <input type="hidden" id="WIDsubject"      name="WIDsubject"  value="包  裹"/>
                                        <input type="hidden" id="WIDtotal_amount" name="orderPrice"  value="" />

                                        <div class="rem_sub">
                                            <div class="clearfix" style="background-color:#25aaee; color:#b6b5b1; margin-bottom:14px;"><a onclick="alipay()" ><img src="${pageContext.request.contextPath}/theme/img/user/u-zfb.png"></a></div>
                                        </div>
                                        <div class="rem_sub">
                                           <div class="clearfix" style="border:1px solid #b6b5b1;;"><img src="${pageContext.request.contextPath}/theme/img/user/u-pal.png"></div>
                                        </div>
                                        <div class="rem_sub">
                                            <div class="clearfix"><input type="button" value="支付按钮测试" onclick="payTest()" class="sub_button"></div>
                                        </div>
                                        </form>
                                        <div class="rem_sub">
                                            <div class="clearfix"><input type="submit" class="sub_button tab-button" name="button" id="button-2" value="返回订单"></div>
                                        </div>
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