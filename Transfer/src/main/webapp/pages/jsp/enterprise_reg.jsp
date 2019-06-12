<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta content="国际转运" name="keywords">
    <meta content="海外华侨，学子都在用的国际转运代购平台" name="description">
    <meta content="MSS Team" name="author">
    <title>企业注册</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/core.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/home.css">
    
    <script>
			 /*  
	       * Email验证(前台校验)  
	       */  
	      function checkEmail() {  
	        var result = true;  
	        var emailDOM = document.getElementById('useremail').value;  
	        if(emailDOM == ''){  
	          document.getElementById('useremailInfo').innerHTML = '<span style="color:red;">邮箱不能为空！</span>';  
	           result = false;  
	        }   
	        else if (!/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/.test(emailDOM)) {  
	          document.getElementById('useremailInfo').innerHTML = '<span style="color:red;">邮箱格式不正确！</span>';  
	          result = false;  
	        }  
	        else {  
	          document.getElementById('useremailInfo').innerHTML = '<span style="color:green;">该邮箱可以使用</span>';  
	          result = true;  
	        }  
	        return result;  
	      } 
		  /*  
	      *名字验证(前台校验)  
	      */  
      	  function checkUsername() {  
          var result = true;  
          var username = document.getElementById('username').value;  
          if (username == '') {   
          document.getElementById('usernameInfo').innerHTML = '<span style="color:red;">名字不能为空!</span>';  
          result = false;  
          } else {  
          document.getElementById('usernameInfo').innerHTML = '<span style="color:green;">可用姓名</span>';  
           result = true;  
          }   
        return result;  
        }  
        
      /*  
      *密码验证(前台校验)  
      */  
      function password(){  
        var result = true;  
        var password = document.getElementById('password').value;  
        if(!/^[0-9A-z]+$/.test(password)){  
             document.getElementById('passwordInfo').innerHTML = '<span style="color:red;">密码必须为数字或者字母组成!</span>';  
             result = false;  
        }else if(password.length < 8 || password.length > 12 || password == '') {  
          document.getElementById('passwordInfo').innerHTML = '<span style="color:red;">密码必须为8~12位之间!</span>';  
          result = false;  
        }  
        else {  
          document.getElementById('passwordInfo').innerHTML = '<span style="color:green;">密码格式正确</span>';   
          result = true;  
        }  
        return result;  
      }  
        function password2(){  
        var result = true;  
        var password = document.getElementById('password').value;  
        var password2 = document.getElementById('password2').value;  
        if (password2 == ''){  
          document.getElementById('password2Info').innerHTML = '<span style="color:red;">请输入密码！</span>';  
          result = false;  
        }else if(password2 != password) {  
          document.getElementById('password2Info').innerHTML = '<span style="color:red;">两次密码输入不一致！</span>';  
          result = false;  
        }else {  
          document.getElementById('password2Info').innerHTML = '<span style="color:green;">通过：密码一致</span>';   
          result = true;  
        }  
        return result;  
      }  
       /*  
      	  *表单的button验证(前台校验)  
      	  */  
      function Rabbit(){  
  
  
        var Rabit = new Array();  
        Rabit[0] = checkEmail();//电子邮箱  
        Rabit[1] = checkUsername();//名字
        Rabit[2] = password();//密码
        Rabit[3] = password2();//重复密码
        return Rabit;  
         
        //alert('请正确并完整的输入注册信息');  
      }   
      
      /*
	      *提交后的判断(前台校验)  
	      */  
      function personal_reg2(){         	
      	  document.getElementById("personal_reg").submit();
          document.getElementById("personal_reg").action ="${pageContext.request.contextPath}/User_personal_register.action";
		 }
		 
		 function checkExist(){
    	//获得文本框的一个值
    	var useremail=document.getElementById('useremail').value; 
    	//创建异步交互对象
    	var xhr=createXmlHttp();
    	//设置监听
    	xhr.onreadystatechange =function(){
    		if (xhr.readyState == 4) {
				if (xhr.status ==200) {
					document.getElementById("useremailInfo").innerHTML = xhr.responseText;
				}
			}
    	}
    	//打开链接
    	xhr.open("GET","${pageContext.request.contextPath}/User_findByEmail.action?time="+new Date().getTime()+"&useremail="+useremail,true);
    	//发送
    	xhr.send(null);
    	}
    	
    	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
		 }
		 /* 验证码切换*/
		 function change(){
		var img1 = document.getElementById("checkImg");
		img1.src="${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime();
	}
    </script>
</head>
<body>

<header id="lzy-header">
    <div class="lzy-container clearfix">
        <div class="lzy-he-logo">
            <h1>
                <a href="${pageContext.request.contextPath}/index.action"><img src="${pageContext.request.contextPath}/theme/img/logo.png" title="" about="" name=""></a>
            </h1>
        </div>
    </div>
</header>
<section>
        <div class="lzy-content" id="lzy-adaption">
        <div class="lzy-boxes lzy-boxes-reg">
            <div class="lzy-shadow">
                <h2>企业注册资料</h2>
            </div>
			   <div class="login_m">
                <div class="login_boder">
                
                <form  id="personal_reg" action="${pageContext.request.contextPath}/User_personal_reg.action" method="post" onclick="return Rabbit();" >
                    <div class="login_padding" >
                    
                        <h2>邮箱</h2>
                        <label>
                            <input type="text" id="useremail" name="useremail" class="txt_input txt_input2" value="" placeholder="请输入正确的电子邮箱" onblur="checkExist()" />
                            <span id="useremailInfo"></span>
                        </label>
                        <h2>姓名</h2>
                        <label>
                            <input type="text" id="username" name="username" class="txt_input txt_input2" value="" placeholder="请填写真实姓名" />
                             <span id="usernameInfo"></span>  
                        </label>
                        <h2>密码</h2>
                        <label>
                            <input type="password" id="password" name="password" class="txt_input" placeholder="密码为8~12位之间的数字或者字母"/>
                            <span id="passwordInfo"></span>
                        </label>
                        <h2>重复密码</h2>
                        <label>
                            <input type="password" id="password2" name="password2" class="txt_input" placeholder="密码为8~12位之间的数字或者字母"/>
                            <span id="password2Info"></span>
                        </label>
						 <h2>验证码</h2>
                        <label>
                            <input type="text" id="checkcode" name="checkcode" class="txt_input"><img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action" onclick="change()" title="点击更换验证码">
                        </label>
                        <div>
							<s:actionerror />
						</div>
                        <div class="rem_sub">
                            <div class="clearfix">
                                <div class="rem_sub_l fl"><input type="checkbox" name="checkbox" id="save_me" placeholder=""><%--<label for="checkbox">我已阅读并同意<a href="#">《免责申明》</a></label>--%></div>
                            </div>
                            <div class="clearfix"><input type="submit" class="sub_button" value="注册" onclick="personal_reg2();"></div>
                            <div class="reg"><a href="${ pageContext.request.contextPath }/pages/jsp/sign.jsp">我有帐号，去登录</a></div>
                        </div>
                        
                    </div>
                    </form>
                </div>
            </div>
            
        </div>
        <div style="height:100px;"></div>
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