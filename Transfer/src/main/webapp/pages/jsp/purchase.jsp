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
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/layer-v3.1.1/layer/layer.js"></script>

    <%--<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=PpWFVaEpesoF9SQpYXWmZnwUnO0vCYzf"></script>--%>

    <script type="text/javascript">
        $(function(){
            $('.tabPanel ul li').click(function(){
                $(this).addClass('hit').siblings().removeClass('hit');
                $('.panes>div:eq('+$(this).index()+')').show().siblings().hide();
            })
        })
    </script>


    <script type="text/javascript">
        $(function(){
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                async : false,
                dataType: "json",//预期服务器返回的数据类型
                url: "OrderController/selectAllOrder.do" ,//url
                success: function (result) {
                    for(var i in result)
                    {
                        if(result[i].id==${sessionScope.user.id}) {
                            var tr;
                            tr = '<tr class="trshow"><td>' + result[i].orderid + '</td>'

                                + '<td>' + result[i].ckid + '</td>'

                                + '<td>' + result[i].ordertime + '</td>'

                                + '<td>' + result[i].ordermessage + '</td>'

                                /*+ '<td>'+'<a onclick="javascript:showOrderDetail(\'QWER3\')">'+'查看详情'+'</a>'+'</td>'*/

                                + '<td>'+'<a href="javascript:void(0);" onclick="showOrderDetail(this)">'+'查看详情'+'</a>'+'</td></tr>'

                            $("#tabletest").append(tr)
                        }
                    }

                },
                error : function() {
                    alert(${sessionScope.user.id});
                }
            });
        })

        //选择角色弹层
        function showOrderDetail(orderid){
            var tr = $(orderid).parent().parent();
            var b = tr.children("td");
            var c = b.eq(0);
            var d= c.text();
            //console.log(d)
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                data:{"orderid":d},
                //cache : false,
                async : false,
                url: "OrderController/selectOrderByOrderId.do" ,//url
                success: function (result) {
                    //console.log(d)
                    var tr;
                    tr = '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.orderid + '</td>'

                        + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.ckid + '</td>'

                        + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.ordermessage + '</td>'

                        + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.ordertime + '</td>'

                        + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.orderweight + '</td>'

                        + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.orderprice + '</td>'

                        + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.orderstate + '</td>'

                    if($("#showdetail").find("td").length==0){
                        //console.log("没有td这个标签，所以append一次")
                        $("#showdetail").append('<tr style="background: #fff;">' + tr + '</tr>')
                    }
                    else{
                        //console.log("有td这个标签，所以先empty掉，再append")
                        $("#showdetail").empty()
                        $("#showdetail").append(
                            '<tr>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">订单号</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">入库仓库编号</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">用户备注</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">下单时间</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">订单重量</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">应付转运运费</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">支付状态</th>\n' +
                            '</tr>'+
                            '<tr style="background: #fff;">' + tr + '</tr>')
                    }
                },
                error : function() {
                    alert("异常");
                }
            });

            layer.open({
                //layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                type:1,
                title:"订单详情",
                area: ['50%','20%'],
                content:$("#popSearchRoleTest").html()
            });
        }
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
                    <li>代购填单</li>
                    <li class="hit">我的订单</li>
                </ul>
                <div class="panes">
                    <div class="pane" >
                        <div class="panes-tab">
                            <h3>快捷填单</h3>
                            <ol>
                                <li style="margin-left: 80px;">填写包裹信息前，请先将包裹打包、称重，并按照实重填写。从03.02.14开始由于DHL计重规则的调整，DHL开始对超重执行0容忍，<br>大于0.001kg则按下一个重量级计价。为了包裹能快速出库，推荐大家买单时多预估点包装耗材以及预留0.1kg的国际单的重量。</li>
                                <li style="margin-left: 80px;">超重的包裹需按4欧/公斤补款后才能出库。补款连接：http://item.taobao.com/item.htm?id=38631607995<br>(PS: 易欧洲推出了每走20个包裹可以自动减免1公斤的超重补款，具体细则请看公告：易欧洲-积分升重细则）</li>
                                <li style="margin-left: 80px;">订单一旦点击提交，则无法自行更改；若有错误，可在第2步我的订单中删除并重填。易欧洲入库前，如需更改可在第3步我的包裹中发起售后申请。<br>注意所有小数点的填写请用“.”表示，否则系统不能识别。</li>
                                <li style="margin-left: 80px;">发件人的门牌不能输入英文字母，如有英文字母的请输入到前面的街道名中。<br>门牌和邮编的数字请用英文输入法来输，不要用中文输入法，会影响DHL识别出单。</li>
                                <li style="margin-left: 80px;">需要批量填写包裹的，在收件人黄色条上点“+”会增加不同收件人的包裹，同一收件人多个包裹的，在蓝色包裹条上点“+”，<br>会增加同一收件人的包裹，增加物品品种在Germany后面点+。</li>
                            </ol>
                            <p style="margin-left: 80px;">＊特别提醒：根据我们的经验DHL对破损的赔付率非常低，都是因为包装不符合国际运输的规范要求，各位在打包时一定要注意包装要防潮，防震，防压。<br>因为包装不好造成的破损DHL是一律不予赔付的。</p>
                        </div>
                        <div class="lzy-tab">
                            <div class="login_m">
                                <div class="login_boder">
                                    <form action="OrderController/addOrder.do" method="post" enctype="multipart/form-data">
                                        <div class="login_padding">
                                            <div class="essential">
                                                <p style="text-align: center;font-size: 20px;color: #262626;">代购订单填写</p>
                                                <br/>
                                                <br/>

                                                <label>
                                                    <p>商品链接：<input type="text" class="txt_input txt_input2" name=""/></p>
                                                </label>

                                                <label>
                                                    <p>商品名称：<input type="text" class="txt_input txt_input2" name=""/></p>
                                                </label>

                                                <label>
                                                    <p>商品数量：<input type="text" class="txt_input txt_input2" name=""/></p>
                                                </label>

                                                <label>
                                                    <p>商品单价：<input type="text" class="txt_input txt_input2" name=""/></p>
                                                </label>

                                                <label>
                                                    <p>国内运费：<input type="text" class="txt_input txt_input2" name=""/></p>
                                                </label>

                                                <label>
                                                    <p>商品描述：<textarea name=""></textarea></p>
                                                </label>

                                                <label>
                                                    <p><input type="hidden" class="txt_input txt_input2" name="id" value="${sessionScope.user.id}"/></p>
                                                </label>

                                                <label>
                                                    <p><input type="hidden" class="txt_input txt_input2" id="ordertime1" name="ordertime"/></p>
                                                </label>

                                                <script langguage="JavaScript">
                                                    var now = new Date();
                                                    ordertime1.value=String(new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate());
                                                </script>
                                            </div>

                                            <div class="rem_sub">
                                                <div class="clearfix"><input type="submit" value="提交代购订单" id="button" name="button" class="sub_button"></div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pane" style="display:block;">
                        <div class="panes-tab panes-tab2" >
                            <h3>订单列表</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td>订单号</td>
                                    <td><input placeholder="" value="" name="orderId" ></td>

                                    <td>入库仓库号</td>
                                    <td><input placeholder="" value="" name="ckId" ></td>

                                    <td><a href="#">查询</a></td>
                                </tr>
                            </table>

                            <table width="1089" border="0" cellspacing="0" cellpadding="0" <%--class="tab-excel"--%>class="tab-pick-bk tab-capital" id="tabletest">
                                <thead>
                                <tr>
                                    <th>商品名称</th>
                                    <th>商品数量</th>
                                    <th>商品单价</th>
                                    <th>国内运费</th>
                                    <th>商品描述</th>
                                    <th>操作</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tbody>
                                </tbody>
                            </table>
                        </div>

                        <div class="layui-row" id="popSearchRoleTest" style="display:none;">
                            <div class="layui-col-md11">
                                <form class="layui-form" lay-filter="formTestFilter2121" >
                                    <table width="90%" class="table" style="border-collapse:collapse; margin: 0 auto; text-align:center;" id="showdetail">
                                        <caption>
                                            <h2></h2>
                                        </caption>

                                        <br/>
                                        <br/>


                                        <thead>
                                        <tr>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">订单号</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">入库仓库编号</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">用户备注</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">下单时间</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">订单重量</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">应付转运运费</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">支付状态</th>
                                        </tr>
                                        </thead>

                                        <tbody>

                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>

                        <div class="lzy-page clearfix">
                            <a href="${ pageContext.request.contextPath }/Order_fill_Order.action?page=" class="previous">上一页</a>

                            <a href="${ pageContext.request.contextPath }/Order_fill_Order.action?page=" class="next">下一页</a>

                            <span>共1页</span>
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