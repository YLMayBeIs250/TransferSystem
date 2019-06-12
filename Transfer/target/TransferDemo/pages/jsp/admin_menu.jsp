<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="lzy-container clearfix">
        <div class="lzy-he-logo">
            <h1>
                <a href="#"><img src="theme/img/logo.png" title="" about="" name=""></a>
            </h1>
        </div>
        <div class="lzy-che-nav">
            <ul>
                
                <li><a href="${pageContext.request.contextPath}/adminOrder_member_order.action?page=1">订单</a></li>
                <li><a href="${pageContext.request.contextPath}/Admin_moneypage.action?page=1">资金</a></li>
                <li><a href="${pageContext.request.contextPath}/adminOrder_inventorypage.action?page=1">库存</a></li>
                <li><a href="${pageContext.request.contextPath}/AdminUser_memberlist.action?page=1">会员信息</a></li>
                <li><a href="${pageContext.request.contextPath}/Admin_manage.action">网站设置</a></li>
            </ul>
        </div>
        <div class="lzy-register">
            <ul>
                <li><span  class="sign">欢迎，</span></li>
                <li><a href="${pageContext.request.contextPath}/Admin_quit.action">退出</a></li>
            </ul>
        </div>
    </div>
