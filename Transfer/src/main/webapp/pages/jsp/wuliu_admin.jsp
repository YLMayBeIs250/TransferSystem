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
     <!--悬浮框配置  -->
    <script language="javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.7.1.min.js"></script> <!--js包-->
     <link href="${pageContext.request.contextPath}/theme/css/online.css" rel="stylesheet" type="text/css" />
    
    <script type="text/javascript">
        $(function(){
            $('.tabPanel ul li').click(function(){
                $(this).addClass('hit').siblings().removeClass('hit');
                $('.panes>div:eq('+$(this).index()+')').show().siblings().hide();
            })
        })
        function seetext(){
        	
        }
    </script>

    <script>
        //加载订单数据
        $(function(){
            console.log("准备ajax请求")
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                async : false,
                dataType: "json",//预期服务器返回的数据类型
                url: "OrderController/selectAllOrder.do" ,//url
                success: function (result) {
                    console.log("ajax请求成功")
                    for(var i in result)
                    {
                        if(result[i].orderstate==0) {
                            var tr;
                            tr = '<tr><td>' + result[i].orderid + '</td>'

                                + '<td>' + result[i].id + '</td>'

                                + '<td>' + result[i].ckid + '</td>'

                                + '<td>' + result[i].ordertime + '</td>'

                                /*+ '<td>' + result[i].ordermessage + '</td>'*/

                                +'<td>' +'<a href="javascript:void(0);" onclick="showOrderhref(this)">'+result[i].ordermessage+'</a>' + '</td>'

                                +'<td>'+'<a href="javascript:void(0);" onclick="fillOrder(this)">'+'补充订单'+'</a>'+'</td></tr>'

                            $("#showallorders").append(tr)
                        }

                        if(result[i].orderstate==1) {
                            var tr;
                            tr = '<tr><td>' + result[i].orderid + '</td>'

                                + '<td>' + result[i].id + '</td>'

                                + '<td>' + result[i].ckid + '</td>'

                                + '<td>' + result[i].ordertime + '</td>'

                                /*+ '<td>' + result[i].ordermessage + '</td>'*/

                                +'<td>' +'<a href="javascript:void(0);" onclick="showOrderhref(this)">'+result[i].ordermessage+'</a>' + '</td>'

                                + '<td>'+'<a href="javascript:void(0);" onclick="showPayOrderDetail(this)">'+'查看订单'+'</a>'+'</td></tr>'

                            $("#showallorders2").append(tr)
                        }

                    }

                },
                error : function() {
                    console.log("ajax请求失败")
                }
            });
        })

        //打开填单页面供管理员补充信息（传递订单号参数和用户参数）
        function fillOrder(orderid){
            var tr = $(orderid).parent().parent();
            var b = tr.children("td")

            var c = b.eq(0)
            var d= c.text()//订单号

            var e=b.eq(1)
            var f=e.text()//用户编号

            console.log("传参给下一个页面供管理员补充信息")
            window.location.href="pages/jsp/fillorder.jsp?orderid="+d+"&id="+f;
        }

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

        //弹出已付订单信息
        function showPayOrderDetail(orderid){
            var tr = $(orderid).parent().parent();
            var b = tr.children("td")

            var c = b.eq(0)
            var d= c.text()//订单号

            var e=b.eq(1)
            var f=e.text()//用户编号

            console.log("传参给下一个页面供管理员查看信息")
            window.location.href="pages/jsp/showorder.jsp?orderid="+d+"&id="+f;
        }
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
                <ul>
                    <li class="hit">未付订单</li>
                    <li>已付订单</li>
                </ul>
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab panes-tab2">
                            <h3>订单列表</h3>
                        </div>

                        <div class="lzy-tab2">
                            <%--<table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td>订单号</td>
                                    <td><input placeholder="" value="" name="orderId" ></td>

                                    <td>下单日期</td>
                                    <td><input placeholder="" value="" name="" ></td>

                                    <td><a href="#">查询</a></td>
                                </tr>
                            </table>--%>

                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital" id="showallorders">
                                <thead>
                                <tr>
                                    <th style="text-align: center">订单编号</th>
                                    <th style="text-align: center">用户编号</th>
                                    <th style="text-align: center">入库编号</th>
                                    <th style="text-align: center">下单时间</th>
                                    <th style="text-align: center">用户留言</th>
                                    <th style="text-align: center">操作</th>
                                </tr>
                                </thead>

                                <tbody>

                                </tbody>

                            </table>
                        </div>

                        <div class="lzy-page clearfix">

                            <a href="${ pageContext.request.contextPath }/pages/jsp/wuliu_admin.jsp" class="previous">上一页</a>

                            <a href="${ pageContext.request.contextPath }/pages/jsp/wuliu_admin.jsp" class="next">下一页</a>

                            <%--<a href="${ pageContext.request.contextPath }/Order_fill_Order.action" class="next">下一页</a>--%>

                            
                        </div>
                    </div>

                    <div class="pane">
                        <div class="panes-tab panes-tab2">
                            <h3>订单列表</h3>
                        </div>

                        <div class="lzy-tab2">
                            <%--<table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td>订单号</td>
                                    <td><input placeholder="" value="" name="orderId" ></td>

                                    <td>下单日期</td>
                                    <td><input placeholder="" value="" name="" ></td>

                                    <td><a href="#">查询</a></td>
                                </tr>
                            </table>--%>

                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital" id="showallorders2">
                                <thead>
                                <tr>
                                    <th style="text-align: center">用户编号</th>
                                    <th style="text-align: center">订单编号</th>
                                    <th style="text-align: center">入库编号</th>
                                    <th style="text-align: center">下单时间</th>
                                    <th style="text-align: center">用户留言</th>
                                    <th style="text-align: center">操作</th>
                                </tr>
                                </thead>

                                <tbody>

                                </tbody>

                            </table>
                        </div>

                        <div class="lzy-page clearfix">

                            <a href="${ pageContext.request.contextPath }/pages/jsp/wuliu_admin.jsp" class="previous">上一页</a>

                            <a href="${ pageContext.request.contextPath }/pages/jsp/wuliu_admin.jsp" class="next">下一页</a>
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