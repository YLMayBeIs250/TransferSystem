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

        //加载公告
        $(function(){
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                async : false,
                dataType: "json",//预期服务器返回的数据类型
                url: "NoticeController/selectAllNotice.do" ,//url
                success: function (result) {
                    for(var i in result)
                    {
                        var ul;
                        ul = '<li>' + result[i].noticebody + '</li>'

                        $("#showAllNotice").append(ul)
                    }
                },
                error : function() {
                    console.log("异常")
                }
            });
        })
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
          <div id="online_tel_icon" class="online_icon">
            <span class="pic"><img src="${pageContext.request.contextPath}/theme/images/online_tel.png" /></span>
            <span class="name">&#30005;&#35805;&#30452;&#21628;</span>
          </div>
          <div id="online_qq_icon" class="online_icon">
            <span class="pic"><img src="${pageContext.request.contextPath}/theme/images/online_qq.png" /></span>
            <span class="name">&#22312;&#32447;&#23458;&#26381;</span>
          </div>
          <!-- <div id="online_message_icon" class="online_icon">
            <span class="pic"><img src="${pageContext.request.contextPath}/theme/images/online_message.png" /></span>
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
                    <div id="onlineTel" class="online_tab_c">
                    <small class="sanjiao"></small><small class="tab_close"></small>
                      <dl>
                        <dt><strong>&#32852;&#31995;&#25105;&#20204;：</strong></dt>
                        <dd><strong>&#32852;&#31995;&#20154;：</strong><span>MSS</span></dd><dd><strong>&#30005;&#35805;：</strong><span>15671564328</span></dd>                                                                      </dl>
                    </div>
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
                        <dt>经理 </dt>
                           <dd>
                              <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1234567&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1234567:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
                           </dd>
                       <dt>销售 </dt>
                           <dd>
                             <a target="_blank" href="http://localhost:8080/IMUT_Logistics_sys/Order_toClientTalkPage?userId=111111"><img border="0" src="http://wpa.qq.com/pa?p=2:1234567:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
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




<!-- <script src="https://qiyukf.com/script/5ae04cf9996a4ae8fde56b0a4cf91447.js"></script> -->
<header id="lzy-header">
    <%@ include file="menu.jsp" %>
</header>

<section id="user-index">
    <div class="user-content">
        <div class="user-middle">
            <div class="user-boxes  clearfix">
                <div class="fl user-boxes-fl">
                    <%--<div class="fl user-portrait-br"><img src="${pageContext.request.contextPath}/theme/img/user/u-portrait.png" width="134" height="134"></div>--%>
                    <div class="fl user-portrait-br"><img src="${pageContext.request.contextPath}/theme/img/user4.jpg" style="width:134px;height:134px"/></div>
                    <div class="fl user-portrait-ti">
                        <h2>欢迎${user.username}</h2>
                        <!-- <p>用户类型：<span>个人</span></p> -->
                        <!-- <p>用户标识：<span>CJY</span></p> -->
                    </div>
                </div>
                <div class="fr user-boxes-fr">
                    <p>账户总余额：</p>
                    <p><span>0</span>元</p>
                    <p><a href="${pageContext.request.contextPath}/pages/jsp/accountPage.jsp">在线充值</a></p>
                </div>
            </div>
        </div>
        <div class="user-boxes-bk">
           <div class="user-boxes-ma">
               <div class="user-notice"><h3>网站公告</h3></div>
               <div class="user-present">
                   <ul id="showAllNotice">

                   </ul>
               </div>
           </div>
            <div class="user-boxes-ma">
                <div class="user-notice user-notice-cl"><h3>系统说明</h3></div>
                <div class="user-present">
                    <ul>
                        <li>填写包裹信息前，请先将包裹打包、称重，并按照实重填写。从03.02.14开始由于DHL计重规则的调整，DHL开始对超重执行0容忍，大于0.001kg则按下一个重量级计价。为了包裹能快速出库，推荐大家买单时多预估点包装耗材以及预留0.1kg的国际单的重量。</li>
                        <li>超重的包裹需按4欧/公斤补款后才能出库。补款连接：http://item.taobao.com/item.htm?id=38631607995(PS: 易欧洲推出了每走20个包裹可以自动减免1公斤的超重补款，具体细则请看公告：易欧洲-积分升重细则）</li>
                        <li>订单一旦点击提交，则无法自行更改；若有错误</li>

                    </ul>
                </div>
            </div>
            <div style="height:65px;"></div>
            <div style="height:65px;"></div>
        </div>
        <div style="height:65px;"></div>
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