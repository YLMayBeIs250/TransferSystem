<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="lzy-container clearfix">
        <div class="lzy-he-logo">
            <h1>
                <a href="${pageContext.request.contextPath}/pages/jsp/index.jsp"><img src="${pageContext.request.contextPath}/theme/img/logo.png" title="" about="" name=""></a>
            </h1>
        </div>
        <div class="lzy-che-nav">
            <ul>
                <li><a href="${pageContext.request.contextPath}/pages/jsp/user_index.jsp">用户首页</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/jsp/order.jsp">转运订单</a></li>
                <%--<li><a href="${pageContext.request.contextPath}/pages/jsp/purchase.jsp">代购订单</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/pages/jsp/warehouse.jsp">仓库地址</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/jsp/personal-info.jsp?useremail=${user.useremail}">用户信息</a></li>
            </ul>
        </div> 
		
        <div class="lzy-register">
            <ul>
                <li><span>您的邮箱，${user.useremail}</span></li>
                <li><a href="${pageContext.request.contextPath}/UserController/logout.do" class="sign">退出登录</a></li>
            </ul>
        </div>       
    </div>