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
        // 这样调用：
        var orderid =getQueryString("orderid");
        var id=getQueryString("id");
        console.log("获取的订单号为"+orderid)
        console.log("获取的用户编号为"+id)
        $(function(){
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                async : false,
                data:{"orderid":orderid},
                dataType: "json",//预期服务器返回的数据类型
                url: "OrderController/selectOrderByOrderId.do" ,//url
                success: function (result) {
                    //console.log("Order ajax请求成功")

                    var tr;
                    tr = '<td style="text-align: center">' + result.orderid + '</td>'

                        + '<td style="text-align: center">' + result.ckid + '</td>'

                        + '<td style="text-align: center">' + result.orderweight + '</td>'

                        + '<td style="text-align: center">' + result.orderprice + '</td>'

                        /*+ '<td style="text-align: center">' + result.ordermessage + '</td>'*/

                        +'<td style="text-align: center">' +'<a href="javascript:void(0);" onclick="showOrderhref(this)">'+result.ordermessage+'</a>' + '</td>'

                        + '<td style="text-align: center">' + "${sessionScope.user.city}" + '</td>'

                        + '<td style="text-align: center">' + "${sessionScope.user.location}" + '</td>'

                    $("#payordertable").append(tr)

                    $.ajax({
                        //几个参数需要注意一下
                        type: "POST",//方法类型
                        async : false,
                        data:{"id":id},
                        dataType: "json",//预期服务器返回的数据类型
                        url: "UserController/selectUserById.do" ,//url
                        success: function (user) {
                            //console.log("User ajax请求成功")
                        },
                        error : function() {
                            //console.log("User ajax请求失败")
                        }
                    });
                    //刷新一次页面
                    if(location.href.indexOf("#reloaded")==-1){
                        location.href=location.href+"#reloaded";
                        location.reload();
                    }
                },
                error : function() {
                    //console.log("Order ajax请求失败")
                }
            });
        })

        //弹出订单的链接页面
        function showOrderhref(orderid) {
            var tr = $(orderid).parent().parent()
            var b = tr.children("td")
            var c = b.eq(0)
            var d= c.text()
            //console.log("查看未付订单商品链接")
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                data:{"orderid":d},
                async : false,
                url: "OrderController/selectOrderByOrderId.do" ,//url
                success: function (result) {
                    //console.log(d)
                    console.log(result.orderid)
                    console.log(result.orderhref)
                    var href=result.orderhref
                    window.open(href)
                },
                error : function() {
                    alert("异常");
                }
            });
        }
    </script>

</head>

<body>
<section>
    <div class="lzy-content lzy-content-order">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <ul>
                    <li class="hit">我的包裹</li>
                </ul>
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab finite-tab">
                            <h3>包裹详情</h3>
                        </div>
                        
                        <div class="lzy-tab2">
                            <div class="lzy-tab3">                          
                                <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-excel tab-page">
                                    <tr>
                                        <td>下单人姓名：<span>${sessionScope.user.username}</span></td>
                                    </tr>
                                    <tr>
                                        <td>下单人电话：<span>${sessionScope.user.telephone}</span></td>
                                    </tr>
                                    <tr>
                                        <td>下单人邮箱：<span>${sessionScope.user.useremail}</span></td>
                                    </tr>
                                    <tr>
                                        <td>下单人国家/城市：<span>${sessionScope.user.city}</span></td>
                                    </tr>
                                    <tr>
                                        <td>下单人地址：<span>${sessionScope.user.location}</span></td>
                                    </tr>
                                    <tr>
                                        <td>订单创建于：<span>${sessionScope.order.ordertime}</span></td>
                                    </tr>
                                </table>

                                <table class="tab-content" id="payordertable">
                                    <thead>
                                        <th style="text-align: center">订单编号</th>
                                        <th style="text-align: center">入库仓库</th>
                                        <th style="text-align: center">订单重量</th>
                                        <th style="text-align: center">订单价格</th>
                                        <th style="text-align: center">商品链接</th>
                                        <th style="text-align: center">发往国家/城市</th>
                                        <th style="text-align: center">发往地址</th>
                                    </thead>

                                    <tbody>

                                    </tbody>
                                </table>

                                <br/>
                                <div class="tab-encyst">订单应付：<span>${sessionScope.order.orderprice}RMB</span></div>

                                <div class="tab-encyst tab-storage"><a href="${pageContext.request.contextPath}/pages/jsp/wuliu_admin.jsp">返回上一页</a></div>

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
