<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/layer-v3.1.1/layer/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-1.4.2.js"></script>

    <script>
        //加载所有用户数据
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

                        $("#showAllUserDetail").append(ul)
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

<div class="user-boxes-bk">
    <div class="user-boxes-ma">
        <div class="user-notice"><h3>网站公告</h3></div>
        <div class="user-present">
            <ul id="showAllUserDetail">

            </ul>
        </div>
    </div>
</div>


</body>
</html>