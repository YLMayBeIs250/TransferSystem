<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<body>
		<div class="container" id="info-page">
		<%-- <div class="input-group">			
			 <input type="text" id='name' class="form-control"
				style="width: 300px" placeholder="请输入文件名">&nbsp;&nbsp; <input
				type="button" value="搜索" onclick="doSearch()"
				class="btn btn-primary" />&nbsp;&nbsp;
				<a  class="upload btn btn-danger" href="<%=basePath %>res/toUpLoad" >上传文件</a>
		</div> --%>
		<div class="panel">
			
			<div class="panel-body row">
				<table class="table table-striped col-sm-12 table-bordered"
					id="table">
					<thead>
						<tr class="row warning active">
							<td>用户名</td>
							<td>未读条数</td>
							<td>上传时间</td>
							<td>下载数量</td>
							<td>操作</td>
						</tr>
					</thead>
					<tbody id="table">
						<c:forEach items="${info }" var="a">

							<tr class="row warning active">
								<td><a href="<%=basePath %>Order_serverTalkClientPage?userId=${a[0] }">${a[0] }</a></td>
								<td>
								    <c:if test=" ${empty a[1] }"> 0 </c:if>
								    <c:if test=" ${not empty  a[1] }"> ${a[1] } </c:if>						
								  </td>
								<td>1</td>
								<td>2</td>
								<td>4</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>