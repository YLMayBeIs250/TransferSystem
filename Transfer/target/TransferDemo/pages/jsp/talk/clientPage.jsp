<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>与客服聊天...</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<style type="text/css">
.talk_con {
	width: 600px;
	height: 500px;
	border: 1px solid #666;
	margin: 50px auto 0;
	background: #f9f9f9;
}

.talk_show {
	width: 580px;
	height: 420px;
	border: 1px solid #666;
	background: #fff;
	margin: 10px auto 0;
	overflow: auto;
}

.talk_input {
	width: 580px;
	margin: 10px auto 0;
}

.whotalk {
	width: 80px;
	height: 30px;
	float: left;
	outline: none;
}

.talk_word {
	width: 420px;
	height: 26px;
	padding: 0px;
	float: left;
	margin-left: 10px;
	outline: none;
	text-indent: 10px;
}

.talk_sub {
	width: 56px;
	height: 30px;
	float: left;
	margin-left: 10px;
}

.atalk {
	margin: 10px;
}

.atalk span {
	display: inline-block;
	background: #0181cc;
	border-radius: 10px;
	color: #fff;
	padding: 5px 10px;
}

.btalk {
	margin: 10px;
	text-align: right;
}

.btalk span {
	display: inline-block;
	background: #ef8201;
	border-radius: 10px;
	color: #fff;
	padding: 5px 10px;
}
</style>
<script type="text/javascript">      
    // 
            window.onload = function(){
            var Words = document.getElementById("words");
            var Who = document.getElementById("who");
            var TalkWords = document.getElementById("talkwords");
            var TalkSub = document.getElementById("talksub");
            var userId = "userId";
            var div = document.getElementById('words');
			div.scrollTop = div.scrollHeight;
            //获取url参数值
           var reg = new RegExp("(^|&)" + userId + "=([^&]*)(&|$)", "i"); 
           var r = window.location.search.substr(1).match(reg); 
           if (r != null){
        	   userId =  unescape(r[2]); 
           }

            if(userId == null || userId == "" ){
            	alert("非法输入");
            	return false;
            }

            TalkSub.onclick = function(){
                //定义空字符串
                var str = "";
                if(TalkWords.value == ""){                   
                    alert("消息不能为空");
                    return;
                }else{
                	var serverSay = "";
                	var unixTimestamp = new Date() ;
                	var tempDate = unixTimestamp.getTime();
                	var now = new Date(tempDate);
					var commonTime = now.toLocaleString();
                	serverSay = '<div class="atalk"><span>用户 :'+ commonTime+'<br/>' + TalkWords.value +'</span></div>';
                	Words.innerHTML = Words.innerHTML + serverSay;               	
                	var div = document.getElementById('words');
        			div.scrollTop = div.scrollHeight;
                	$.ajax({
                    	url : "<%=basePath %>Order_clientTalk",
     					type : "post",
     					dataType : "json",
     					data :  {
     						message : TalkWords.value ,
     						userId : userId
     					},  					
     					success : function(result){
     						if(result.json.state == 0){
     							$("#talkwords").val("");
     						}	
     					},
     					error:function(XMLHttpRequest,textStatus,errorThrown){
     						alert("服务器错误");
     					}	
                     });
                }              
                
            }

        } 

            /* if(Who.value == 0){
            //如果Who.value为0n那么是 A说
            str = '<div class="atalk"><span>A说 :' + TalkWords.value +'</span></div>';
        }
        else{
            str = '<div class="btalk"><span>B说 :' + TalkWords.value +'</span></div>' ;  
        }
        //# 将之前的内容与要发的内容拼接好 提交
        Words.innerHTML = Words.innerHTML + str; */
      $(function(){
    	  var Words = document.getElementById("words");
          $('body').everyTime('3s', function() {
        	  var userId = "userId";
              console.log("正在执行。。。。");
              //获取url参数值
             var reg = new RegExp("(^|&)" + userId + "=([^&]*)(&|$)", "i"); 
             var r = window.location.search.substr(1).match(reg); 
             if (r != null){
          	   userId =  unescape(r[2]); 
             }
        	  
        	  if( userId == null || userId == ""){
        		  alert("会话连接中断，请退出本页面");
        		  return false;
        	  }
        	  $.ajax({
              	url : "<%=basePath%>Order_clientTalk",
					type : "post",
					data :  {
						message :"" ,
						userId : userId
					},
					dataType : "json",
					success : function(result){
						if(result.json.state == 0){
							//alert(result.json.state);
							//console.log(result.state);
							for( var i = 0 ; i < result.json.list.length ; i++){
								var unixTimestamp = new Date( result.json.list[i].sendTime) ;
								commonTime = unixTimestamp.toLocaleString();
								var  str = '<div class="btalk"><span>商户:'+ commonTime +'<br/>' + result.json.list[i].message +'</span></div>' ;  
								Words.innerHTML = Words.innerHTML + str; 
								
							}
						
						}	
						var div = document.getElementById('words');
						div.scrollTop = div.scrollHeight;
					},
					error:function(XMLHttpRequest,textStatus,errorThrown){
						alert("服务器错误");
					}	
               });
		});
	}); 
</script>
</head>
<body>
	<div class="talk_con">
		<div class="talk_show" id="words">
			<c:forEach items="${info }" var="a">
				<c:if test="${a.flag == '0' }">
					<div class="atalk">
						<span id="asay">用户:${a.sendTime }<br />${a.message}
						</span>
					</div>
				</c:if>
				<c:if test="${a.flag == '1' }">
					<div class="btalk">
						<span id="bsay">商家:${a.sendTime }<br />${a.message}
						</span>
					</div>
				</c:if>

			</c:forEach>
			<!-- <div class="atalk">
				<span id="asay">A说：吃饭了吗？</span>
			</div>
			<div class="btalk">
				<span id="bsay">B说：还没呢，你呢？</span>
			</div> -->
		</div>
		<div class="talk_input">
			<%-- <select class="whotalk" id="who">
				<option value="0">A说：</option>
				<option value="1">B说：</option>
				<c:forEach items="${info }" var="a">
					<option value="${a.userId }">{a.message}</option>
				</c:forEach>
			</select> --%>
			<input type="text" class="talk_word" id="talkwords"> <input
				type="button" value="发送" class="talk_sub" id="talksub">
		</div>
	</div>
</body>
</html>