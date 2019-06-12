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
    <title>国际转运-全局设置</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/home.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.4.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/layer-v3.1.1/layer/layer.js"></script>
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
        //加载所有公告数据
        $(function(){
            console.log("准备ajax请求")
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                async : false,
                dataType: "json",//预期服务器返回的数据类型
                url: "NoticeController/selectAllNotice.do" ,//url
                success: function (result) {
                    console.log("ajax请求成功")
                    for(var i in result)
                    {
                        var tr;
                        tr = '<tr><td style="text-align: center">' + result[i].noticeid + '</td>'

                            + '<td style="text-align: center">' + result[i].noticetitle + '</td>'

                            + '<td style="text-align: center">' + result[i].noticetime + '</td>'

                            + '<td style="text-align: center">' + '<a href="javascript:void(0);" onclick="shownoticebody(this)">'+'查看公告'+'</a>' + '</td>'

                            + '<td style="text-align: center">' + '<a href="javascript:void(0);" onclick="deleteNotice(this)">'+'删除公告'+'</a>'+'</td>'

                            + '<td style="text-align: center">' + '<a href="javascript:void(0);" onclick="updatenotice(this)">'+'修改公告'+'</a>'+'</td></tr>'

                        $("#showNoticeDetail").append(tr)
                    }
                },
                error : function() {
                    console.log("ajax请求失败")
                }
            });
        })

        //查看公告详情
        function shownoticebody(noticeid) {
            var tr = $(noticeid).parent().parent()
            var b = tr.children("td")
            var c = b.eq(0)
            var d= c.text()
            //console.log("查看公告内容，准备请求ajax")
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                data:{"noticeid":d},
                async : false,
                url: "NoticeController/selectNoticeById.do" ,//url
                success: function (result) {

                    var formbody;
                    formbody='<div style="text-align:center; vertical-align:middle;margin-top: 30px;">'+'<span style="display:inline-block;font-weight:bold;font-size: 18px;">'+result.noticetitle+'</span>'+'</div>'

                            +'<div style="text-align:center; vertical-align:middle;margin-top: 50px;">'+'<span style="display:inline-block;font-size: 13px;">'+result.noticebody+'</span>'+'</div>'


                    if($("#noticeform").find("div").length==0){
                        //console.log("没有div这个标签，所以append一次")
                        $("#noticeform").append(formbody)
                    }
                    else{
                        //console.log("有div这个标签，所以先empty掉，再append")
                        $("#noticeform").empty()
                        $("#noticeform").append(formbody)
                    }
                },
                error : function() {
                    console.log("查看出现异常")
                }
            });

            layer.open({
                //layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                type:1,
                title:"公告详情",
                area: ['20%','30%'],
                content:$("#popSearchRoleTest").html()
            });
        }

        //删除公告
        function deleteNotice(noticeid) {
            var tr = $(noticeid).parent().parent();
            var b = tr.children("td")
            var c = b.eq(0)
            var d= c.text()
            //console.log(d)
            if(confirm("你确定删除吗？")){
                $.ajax({
                    //几个参数需要注意一下
                    type: "POST",//方法类型
                    dataType: "json",//预期服务器返回的数据类型
                    data:{"noticeid":d},
                    async : false,
                    url: "NoticeController/deleteNoticeById.do" ,//url
                    success: function (result){
                        window.location.reload()
                    },
                    error : function() {
                        console.log("删除异常")
                    }
                });
            }
            else{
                alert("点击了取消")
            }
        }

        //修改公告
        function updatenotice(noticeid) {
            //获取参数
            var tr = $(noticeid).parent().parent();
            var b = tr.children("td")
            var c = b.eq(0)
            var d= c.text()

            window.location.href="${pageContext.request.contextPath}/pages/jsp/update-bu.jsp?noticeid="+d;
            //console.log("成功传递参数"+d);
        }
    </script>

</head>

<body>
<!--悬浮窗口 -->
<div class="main">
  <div class="main_c">
<div id="onService_panel">
<div class="onService_panel_s">
<div class="online_boxs">
<div class="boxs_t"><span class="boxs_t_l"></span><span class="boxs_t_m"></span><span class="boxs_t_r"></span></div>
  <div class="boxs_m_l">
    <div class="boxs_m_r">
      <div class="box_m_m">
        <div id="onlineList">
          <em class="online_close" id="onlineClose" title="关闭"></em>
          <div class="online_open  " id="onlineOpen"></div>
          <div id="online_qq_icon" class="online_icon">
            <span class="pic"><img src="${pageContext.request.contextPath}/theme/images/online_qq.png" /></span>
            <span class="name">&#22312;&#32447;&#23458;&#26381;</span>
          </div>
          <!-- <div id="online_message_icon" class="online_icon">
            <span class="pic"><img src="theme/images/online_message.png" /></span>
            <span class="name">&#22312;&#32447;&#30041;&#35328;</span>
          </div> -->
          <div id="online_email_icon" class="online_icon">
            <span class="pic"><a href="mailto:695992807@qq.com"><img src="${pageContext.request.contextPath}/theme/images/online_email.png" /></a></span>
            <span class="name">&#21457;&#36865;&#37038;&#20214;</span>
          </div>
          <!--<div id="online_address_icon" class="online_icon">
            <span class="pic"><a href="http://sc.chinaz.com/"><img src="images/online_address.png" /></a></span>
            <span class="name">&#20225;&#19994;&#22320;&#26631;</span>
          </div>-->
          <div id="onlineTelTab" class="online_tab">
            <div class="online_boxs">
            <div class="boxs_t"><span class="boxs_t_l"></span><span class="boxs_t_m"></span><span class="boxs_t_r"></span></div>
              <div class="boxs_m_l">
                <div class="boxs_m_r">
                  <div class="box_m_m">
                  </div>
                </div>
              </div>
            <div class="boxs_b"><span class="boxs_b_l"></span><span class="boxs_b_m"></span><span class="boxs_b_r"></span></div>
            </div>
          </div>
          <div id="onlineQQTab" class="online_tab">
            <div class="online_boxs">
            <div class="boxs_t"><span class="boxs_t_l"></span><span class="boxs_t_m"></span><span class="boxs_t_r"></span></div>
              <div class="boxs_m_l">
                <div class="boxs_m_r">
                  <div class="box_m_m">
                  <div id="onlineQQ" class="online_tab_c">
                    <small class="sanjiao"></small><small class="tab_close"></small>
                    <dl>
                       <dt>顾客 </dt>
                           <dd>
                             <a target="_blank" href="http://localhost:8080/IMUT_Logistics_sys/Order_toServerTalkPage"><img border="0" src="http://wpa.qq.com/pa?p=2:1234567:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
                          </dd>
                    </dl>
                    </div>
                  </div>
                </div>
              </div>
            <div class="boxs_b"><span class="boxs_b_l"></span><span class="boxs_b_m"></span><span class="boxs_b_r"></span></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="boxs_b"><span class="boxs_b_l"></span><span class="boxs_b_m"></span><span class="boxs_b_r"></span></div>
</div>
</div>
</div>

    <script language="javascript" src="${pageContext.request.contextPath}/theme/js/online.js"></script>
</div>
</div>



<header id="lzy-header">
    <%--<%@ include file="admin_menu.jsp" %>--%>
        <%@ include file="wuliu_menu.jsp" %>
</header>
<section>
    <div class="lzy-content lzy-content-order">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <ul>
                    <li class="hit">公告设置</li>
                </ul>
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab release-icon ">
                            <h3>公告查询</h3>
                        </div>

                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-capital tab-capital-ce" id="showNoticeDetail">
                                <thead>
                                    <tr>
                                        <th style="text-align: center">公告编号</th>
                                        <th style="text-align: center">公告标题</th>
                                        <th style="text-align: center">发布时间</th>
                                        <th style="text-align: center">操作</th>
                                        <th style="text-align: center">操作</th>
                                        <th style="text-align: center">操作</th>
                                    </tr>
                                </thead>

                                <tbody>

                                </tbody>
                            </table>
                        </div>
                        <div class="lzy-page clearfix">
                            <a class="previous" href="${pageContext.request.contextPath}/pages/jsp/release-bu.jsp">发布公告</a>
                        </div>

                        <%--弹出窗口的div设置--%>
                        <div class="layui-row" id="popSearchRoleTest" style="display:none;">
                            <div class="layui-col-md11">
                                <form class="layui-form" lay-filter="formTestFilter2121" id="noticeform">


                                </form>
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