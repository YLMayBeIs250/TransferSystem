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
    <script type="text/javascript">
        //选项卡操作
        $(function(){
            $('.tabPanel ul li').click(function(){
                $(this).addClass('hit').siblings().removeClass('hit');
                $('.panes>div:eq('+$(this).index()+')').show().siblings().hide();
            })
        })

        //加载所有用户数据
        $(function(){
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                async : false,
                dataType: "json",//预期服务器返回的数据类型
                url: "UserController/selectAllUser.do" ,//url
                success: function (result) {
                    for(var i in result)
                    {
                            var tr;
                            tr = '<tr><td>' + result[i].id + '</td>'

                                + '<td>' + result[i].username + '</td>'

                                + '<td>' + result[i].useremail + '</td>'

                                + '<td>' + result[i].telephone + '</td>'

                                + '<td>' + result[i].wechat + '</td>'

                                + '<td>'+'<a href="javascript:void(0);" onclick="showUserDetail(this)">'+'查看详情'+'</a>'+'</td></tr>'

                            $("#showAllUserDetail").append(tr)
                    }
                },
                error : function() {
                    console.log("异常")
                }
            });
        })

        //查看用户详情
        function showUserDetail(id) {
            var tr = $(id).parent().parent()
            var b = tr.children("td")
            var c = b.eq(0)
            var d= c.text()
            console.log("查看用户信息")
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                data:{"id":d},
                async : false,
                url: "UserController/selectUserById.do" ,//url
                success: function (result) {
                    console.log("请求成功")
                        var tr;
                        tr = '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.username + '</td>'

                            + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.account + '</td>'

                            + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.city + '</td>'

                            + '<td style="border: 1px solid #cad9ea;color: #666;height: 30px;">' + result.location + '</td>'


                    if($("#showUserdetail").find("td").length==0){
                        //console.log("没有td这个标签，所以append一次")
                        $("#showUserdetail").append('<tr style="background: #fff;">' + tr + '</tr>')
                    }
                    else{
                        //console.log("有td这个标签，所以先empty掉，再append")
                        $("#showUserdetail").empty()
                        $("#showUserdetail").append(
                            '<tr>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">用户名</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">账户余额</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">国家/城市</th>\n' +
                            '<th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">具体地址</th>\n' +
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
                title:"用户信息",
                area: ['50%','20%'],
                content:$("#popSearchRoleTest").html()
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
                    <div class="pane" style="display:block;">
                        <div class="panes-tab capital-list ">
                            <h3>会员列表</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td style="width:220px;">邮箱 <input placeholder="" value="" name="" ></td>

                                    <td align="right"><a href="#">查询</a></td>
                                </tr>
                            </table>
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital" id="showAllUserDetail">
                                <thead>
                                    <tr>
                                        <th>用户编号</th>
                                        <th>用户名</th>
                                        <th>邮箱</th>
                                        <th>电话</th>
                                        <th>微信</th>
                                        <th>查看详情</th>
                                    </tr>
                                </thead>

                                <tbody>
                                </tbody>
                            </table>
                        </div>
                        <div class="lzy-page clearfix">

                            <a class="previous" href="${ pageContext.request.contextPath }/pages/jsp/wuliu_admin.jsp">上一页</a>

                            <a class="next" href="${ pageContext.request.contextPath }/pages/jsp/wuliu_admin.jsp">下一页</a>
                        </div>

                        <%--弹出窗口的div设置--%>
                        <div class="layui-row" id="popSearchRoleTest" style="display:none;">
                            <div class="layui-col-md11">
                                <form class="layui-form" lay-filter="formTestFilter2121" >
                                    <table width="90%" class="table" style="border-collapse:collapse; margin: 0 auto; text-align:center;" id="showUserdetail">
                                        <caption>
                                            <h2></h2>
                                        </caption>

                                        <br/>
                                        <br/>

                                        <thead>
                                        <tr>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">用户名</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">账户余额</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">国家/城市</th>
                                            <th style="border: 1px solid #cad9ea;color: #666;height: 30px;background-color:#CCE8EB;width: 100px;">具体地址</th>
                                        </tr>
                                        </thead>

                                        <tbody>

                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                   <!--  <div class="pane">
                        <div class="panes-tab Pay-tab">
                            <h3>充值记录</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td>充值日期</td>
                                    <td><input placeholder="" value="" name="" ><input placeholder="" value="" name="" ></td>
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

                    </div> -->
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