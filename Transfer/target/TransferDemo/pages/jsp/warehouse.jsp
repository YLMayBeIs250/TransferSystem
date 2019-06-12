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

    <script type="text/javascript">
        //向控制器请求仓库数据
        $(function(){
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "AdminController/selectAllAdmin.do" ,//url
                data: $('#form1').serialize(),
                success: function (result) {
                    /*console.log(result[0].ckaddress);打印服务端返回的数据(调试用)*/
                    for(var i in result)
                    {
                        var tr;
                        tr='<td>'+result[i].ckid+'</td>'+'<td>'+result[i].ckname+'</td>'
                            +'<td>'+result[i].cktelephone+'</td>'+'<td>'+result[i].ckpostcode+'</td>'+'<td>'+result[i].ckaddress+'</td>'

                        $("#tabletest").append('<tr>'+tr+'</tr>')
                    }
                },
                error : function() {
                    alert("异常！");
                }
            });
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
                    <li class="hit">推荐仓库</li>
                    <li>其它仓库</li>
                </ul>
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab user-info-tab">
                            <h3>推荐仓库的信息</h3>
                        </div>
                        <div class="login_m">
                            <div class="login_boder">
                            <form action="UserController/updateUserInfo.do" method="post" enctype="multipart/form-data">
                                <div class="login_padding">
                                    <div class="essential">
                                         <label>
                                            <p>收件人<input type="text" class="txt_input txt_input2" name="recipient" value="mss" readonly="readonly"/></p>
                                        </label>
                                        <label>
                                            <p>电话<input type="text" class="txt_input txt_input2" name="phone" value="15671564328" readonly="readonly"/></p>
                                        </label>
                                        <label>
                                            <p>省份<input type="text" class="txt_input txt_input2" name="province" value="湖北省" readonly="readonly"/></p>
                                        </label>
                                        <label>
                                            <p>城市<input type="text" class="txt_input txt_input2" name="city" value="武汉市"  readonly="readonly"/></p>
                                        </label>
                                        <label>
                                            <p>邮编<input type="text" class="txt_input txt_input2" name="zipcode" value="430065" readonly="readonly"/></p>
                                        </label>
                                        <label>
                                            <p>地址<input type="text" class="txt_input txt_input2" name="address" value="湖北省武汉市武昌区白沙洲街道陆家街290号邮政局筷子国际仓库" readonly="readonly"/></p>
                                        </label>
                                    </div>
                                    
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="pane">
                        <div class="panes-tab recipient-tab">
                            <h3>仓库信息</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital" id="tabletest">
                                <thead>
                                    <tr>
                                        <th>仓库编号</th>
                                        <th>仓库人姓名</th>
                                        <th>仓库人电话</th>
                                        <th>仓库邮编</th>
                                        <th>仓库地址</th>
                                    </tr>
                                </thead>

                                <tbody>

                                </tbody>
                            </table>


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