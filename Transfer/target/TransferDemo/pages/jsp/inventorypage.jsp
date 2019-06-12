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
    <title>明德速运</title>
    <link type="text/css" rel="stylesheet" href="theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="theme/css/home.css">
    <script type="text/javascript" src="theme/js/jquery-1.4.2.js"></script>
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
                <div class="panes">
                    <div class="pane" style="display:block;">
                        <div class="panes-tab capital-list ">
                            <h3>库存列表</h3>
                        </div>
                        <div class="lzy-tab2">
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick">
                                <tr>
                                    <td>订单号 <input placeholder="" value="" name="" ></td>
                                    <td>下单日期 <input placeholder="" value="" name="" ><input placeholder="" value="" name="" ></td>
                                    <td align="left">状态
                                        <select>
                                            <option>已出库</option>
                                            <option>未出库</option>
                                        </select>
                                    </td>
                                    <td align="right"><a href="#">查询</a></td>
                                </tr>
                            </table>
                            <table width="1089" border="0" cellspacing="0" cellpadding="0" class="tab-pick-bk tab-capital">
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
                                <tr>
                                <s:iterator var="order" value="pageBean.list"> 
                                    <td><s:property value="#order.orderId" /></td>
                                    <td>1Kg</td>
                                    <td><s:property value="#order.orderPrice" /></td>
                                    <td>EMS</td>
                                    <td>
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
                                    </td>
                                    <td>
                                    	<s:if test="#order.the_custom_State==1">未报关</s:if>
                                		<s:if test="#order.the_custom_State==2">已报关</s:if>
                                    </td>
                                    <td>RMB</td>
                                    <td><s:property value="#order.orderDate" /></td>
                                    <td><a href="#">订单详情</a></td>
                                </tr>
                                </s:iterator>
                            </table>

                        </div>
                        <div class="lzy-page clearfix">
                        <s:if test="pageBean.page != pageBean.totalPage">
                            <a href="${ pageContext.request.contextPath }/adminOrder_inventorypage.action?page=<s:property value="pageBean.page-1"/>" class="previous">上一页</a>
                        </s:if>
                            <a href="#" class="or">1</a>
                            <a href="#">2</a>
                        <s:if test="pageBean.page != pageBean.totalPage">
                            <a href="${ pageContext.request.contextPath }/adminOrder_inventorypage.action?page=<s:property value="pageBean.page-1"/>" class="next">下一页</a>
                        </s:if>
                            <span>共<i><s:property value="pageBean.totalCount"/></i>条</span>
                            <span>共<i><s:property value="pageBean.totalPage"/></i>页</span>
                            <!-- <span>跳到第<input type="" value="" placeholder="">页</span>
                            <a href="#" class="jumps">跳转</a> -->
                        </div>
                    </div>
                    <div class="pane">
                        
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