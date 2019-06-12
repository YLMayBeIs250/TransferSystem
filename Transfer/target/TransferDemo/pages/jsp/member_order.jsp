<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta content="中集速运、中集速运" name="keywords">
    <meta content="中集速运、中集速运" name="description">
    <meta content="Li Zhen Ya Team" name="author">
    <title>明德速运-订单填写</title>
    <link type="text/css" rel="stylesheet" href="theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="theme/css/home.css">
    <script type="text/javascript" src="theme/js/jquery-1.4.2.js"></script>
    <!-- 图片滚动 -->
    <link rel="stylesheet" type="text/css" href="theme/css/qingguan.css"/>
	<script type="text/javascript" src="theme/js/qingguan.js"></script>
    
    
    
    <script type="text/javascript">
        $(function(){
            $('.tabPanel ul li').click(function(){
                $(this).addClass('hit').siblings().removeClass('hit');
                $('.panes>div:eq('+$(this).index()+')').show().siblings().hide();
            })
        })
    </script>

</head>

<body>

<header id="lzy-header">
     <%@ include file="admin_menu.jsp" %>
</header>
<section>
    <div class="lzy-content lzy-content-order">
        <div class="lzy-boxes lzy-boxes-order clearfix">
            <div class="tabPanel clearfix">
                <ul>
                    <li class="hit">会员订单</li>
                    <li >清关</li>
                </ul>
                <div class="panes">
                    <div class="pane"   style="display:block;">
                        <div class="panes-tab panes-tab2">
                            <h3>订单列表</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                   <!-- <td>物流渠道</td>
                                     <td>
                                        <select>
                                            <option>物流渠道</option>
                                            <option>物流渠道</option>
                                        </select>
                                    </td> -->
                                    <td></td>
                                    <td>
                                        <!-- <select>
                                            <option>已支付</option>
                                            <option>已出库</option>
                                            <option>订单完成</option>
                                        </select> -->
                                    </td>
                                    <!-- <td><a href="#" onclick="javascript:window.print()">打印</a></td> -->
                                    <td><a href="#" onclick="javascript:window.print()">打印</a>
                                    	<a href="${pageContext.request.contextPath}/feedBackReportAction_exportExcel.action">导出</a>
                                    </td>
                                </tr>
                            </table>
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-excel">
                                <tr>
                                    <th>订单号</th>
                                    <th>订单重量</th>
                                    <th>应付运费</th>
                                    <th>物流渠道</th>
                                    <th>订单状态</th>
                                    <th>报关状态</th>
                                    <th>支付币种</th>
                                    <th>下单时间</th>
                                    <th>操作</th>
                                </tr>
                               <s:iterator var="order" value="pageBean.list"> 
                                <tr>
                                <th><s:property value="#order.orderId" /></th>
                                <th>1Kg</th>
                                <th><s:property value="#order.orderPrice" /></th>
                                <th>EMS</th>
                                <th>
                                	<s:if test="#order.orderState==1">
                                		未付款
                                	</s:if>
                                	<s:if test="#order.orderState==2">
                                		已付款
                                	</s:if>
                                	<s:if test="#order.orderState==3">
                                		已入库
                                	</s:if>
                                	<s:if test="#order.orderState==4">
                                		已送达
                                	</s:if>
                                </th>
                                <th><s:if test="#order.the_custom_State==1">未报关</s:if>
                                	<s:if test="#order.the_custom_State==2">已报关</s:if>
                                </th>
                                <th>RMB</th>
                                <th><s:property value="#order.orderDate" /></th>
                               <th><a href="Order_findOrderDetails.action?orderId=<s:property value="#order.orderId" />"+orderId+"&time="+new Date().getTime()">订单详情</a> <a href="${ pageContext.request.contextPath }/adminOrder_updateState.action?orderId=<s:property value="#order.orderId" />">入库 </a> </th>
                           	 	</tr>
                           	 	</s:iterator> 
                            </table>
                           
                        </div>
                        <div class="lzy-page clearfix">
                        <s:if test="pageBean.page != pageBean.totalPage">
                            <a href="${ pageContext.request.contextPath }/adminOrder_member_order.action?page=<s:property value="pageBean.page-1"/>" class="previous">上一页</a>
                        </s:if>
                           
                        <s:if test="pageBean.page != pageBean.totalPage">
                            <a href="${ pageContext.request.contextPath }/adminOrder_member_order.action?page=<s:property value="pageBean.page+1"/>" class="next">下一页</a>
                        </s:if>
                            <span>共<i><s:property value="pageBean.totalCount"/></i>条</span>
                            <span>共<i><s:property value="pageBean.totalPage"/></i>页</span>
                            <!-- <span>跳到第<input type="" value="" placeholder="">页</span>
                            <a href="#" class="jumps">跳转</a> -->
                        </div>
                    </div>
                             <div class="pane">
                        <div class="panes-tab panes-tab2  arrive-icon">
                            <h3>清关</h3>
                        </div>
                        <div class="login_m">
                            <div class="login_boder">
                                <div class="login_padding">
                                	<form action="${ pageContext.request.contextPath }/adminOrder_clearance.action" method="post">
                                    <h2>订单号</h2>
                                    <label>
                                        <input type="text" name="orderId" placeholder="" value="" class="txt_input txt_input2" id="orderId">
                                    </label>
                                    <div class="rem_sub">
                                        <div class="clearfix"><input type="submit" class="sub_button" name="button" id="button" value="清 关"></div>
                                    </div>
                                    </form>
                                    <div class="fg-box" id="box">
									<div class="fg-line"></div>
									<dl>    	
								        <dd>
								        	<div class="fg-left"><span>1小时前</span></div>
								            <div class="fg-right">
								            <h4>订单20180521101035zjsu</h4>
								            <a href="#">已清关</a>
								            </div>
								        </dd>
								        <dd>
								        	<div class="fg-left"><span>2小时前</span></div>
								            <div class="fg-right">
								            <h4>订单20180521101035zjsu</h4>
								            <a href="#">已报关</a>
								            </div>
								        </dd>
								        <dd>
								        	<div class="fg-left"><span>5小时前</span></div>
								            <div class="fg-right">
								            <h4>订单20180521101035zjsu</h4>
								            <a href="#">已出关</a>
								            </div>
								        </dd>
								        <dd>
								        	<div class="fg-left"><span>7小时前</span></div>
								            <div class="fg-right">
								            <h4>订单20180521101035zjsu</h4>
								            <a href="#">已清关</a>
								            </div>
								        </dd>
								        <dd>
								        	<div class="fg-left"><span>昨天</span></div>
								            <div class="fg-right">
								            <h4>订单20180521101035zjsu</h4>
								            <a href="#">已报关</a>
								            </div>
								        </dd>
								        <dd>
								        	<div class="fg-left"><span>一个月前</span></div>
								            <div class="fg-right">
								            <h4>订单20180521101035zjsu</h4>
								            <a href="#">已清关</a>
								            </div>
								        </dd> 
								    	</dl>
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