<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="lzy-container clearfix">
        <div class="lzy-he-logo">
            <h1>
                <a href="${pageContext.request.contextPath}/pages/jsp/index.jsp"><img src="${pageContext.request.contextPath}/theme/img/logo.png" title="" about="" name=""></a>
            </h1>
        </div>
        <div class="lzy-che-nav">
            <ul>
                <li><a href="${pageContext.request.contextPath}/pages/jsp/wuliu_admin.jsp">订单处理</a></li>
                <%--<li><a href="${pageContext.request.contextPath}/pages/jsp/moneypage.jsp">资金详情</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/pages/jsp/member_list.jsp">用户信息</a></li>
                <%--<li><a href="${pageContext.request.contextPath}/pages/jsp/wuliu_inventorypage.jsp">仓库库存</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/pages/jsp/admin_index.jsp">网站设置</a></li>
            </ul>
        </div>
        <div class="lzy-register">
            <ul>
                <li><span  class="sign">欢迎，${sessionScope.admin.ckname}</span></li>
                <li><a href="${pageContext.request.contextPath}/AdminController/logout.do">退出</a></li>
            </ul>
        </div>
    </div>
