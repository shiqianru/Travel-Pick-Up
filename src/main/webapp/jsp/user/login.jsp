<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx" class="no-js">
<head>
	<script type="text/javascript">
	    //适应 https 
		<%
	    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
	    %>
	  </script>
	  <base href="<%=basePath%>">
	<!-- Mobile Specific Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/elements/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Travel Pick Up</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
		<!--
		CSS
		============================================= -->
		<link rel="stylesheet" href="css/linearicons.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/nice-select.css">			
		<link rel="stylesheet" href="css/magnific-popup.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/main.css">
	</head>
	<body>
		<!-- Start banner Area -->
		<section class="generic-banner relative">
		<s:include value="/jsp/header.jsp"></s:include>				
			<div class="container">
				<div class="row height align-items-center justify-content-center">
					<div class="col-lg-10">
						<div class="generic-banner-content">
							<h2 class="text-white text-center">世界在你眼中</h2>
							<p class="text-white">旅游不在乎终点，而是在意途中的人和事还有那些美好的记忆和景色。</p>
						</div>
					</div>
				</div>
			</div>
		</section>		
		<!-- End banner Area -->
		
		<div class="whole-wrap pb-100" align="center">
			<form action="" method="post"  enctype="multipart/form-data">
				<div style="width:30%;margin-top: 20px;">
					<div id="error_div" align="left">
						<span id="errorTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">用户名或密码错误</span>
					</div>
					<div id="username_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">用户名</span><br>
						<input type="text" style="height: 35px;margin-top: 10px;width: 500px;" id="username" name="username" onblur="checkUserName()"><br>
						<span id="unameTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">用户名应小于20字</span>
					</div>
					<div id="password_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">密&nbsp;&nbsp;码</span><br>
						<input type="password" style="height: 35px;margin-top: 10px;width: 500px;" id="password" name="password" onblur="checkPassword()"><br>
						<span id="pwdTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">密码应在6-20位</span>
					</div>
					<%-- <div id="yzm_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">验证码</span><br>
						<input type="text" id="code" name="code" placeholder="请输入验证码"/>
						<input id="timestamp" name="timestamp" value="${timestamp }" type="hidden" >
            			<img src="captcha/getCaptchaImage.jpg" id="kaptchaImage" title="看不清，点击换一张" onclick="changeImg()">
					</div> --%>
					<div id="button_div" align="center">
						<input id="submit" type="submit" value="登录" style="width: 300px;height: 40px;color: #FFF;background-color: #11C2EE;border: none;margin-top: 20px;">
					</div>
				</div>
			</form>
		</div>


		<s:include value="/jsp/footer.jsp"></s:include>			


		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.sticky.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>			
		<script src="js/parallax.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/main.js"></script>	
	</body>
	<script type="text/javascript">
	$(document).ready(function(){
	})
	//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳   
    function chgUrl(url) {
        var timestamp = (new Date()).valueOf();
        var stamp = $("#timestamp");
        alert(url);
        url = url.substring(0, 60);
        if ((url.indexOf("&") >= 0)) {
            url = url + "×tamp=" + timestamp;
        } else {
            url = url + "?timestamp=" + timestamp;
            stamp.val(timestamp);
        }
        return url;
    };

	function changeImg() {
        var imgSrc = $("#kaptchaImage");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", chgUrl(src));
    };

	function checkImageCode(code) {
        var result = "";

        $.ajax({
            type : 'post',
            async : false,
            url : base+'/captcha/checkCaptcha',
            data : {
                "code" : code
            },
            success : function(data) {
            	result = data;
            }
        });
        console.log(result);
        return result;
    }
	
	//用户名、密码校验
	function checkUserName(){
	    var username = $("#username").val().trim();
		if(username.length<=0){
			$("#unameTip").html("请输入用户名").show();
		}else if(username.length>20){
			$("#unameTip").html("用户名应在20字以内").show();
		}else{
			$("#unameTip").hide();
		}
		return false;
	}
	function checkPassword(){
	    var password = $("#password").val().trim();
		if(password.length<=0){
			$("#pwdTip").html("请输入密码").show();
		}else if(password.length<6 || password.length>20){
			$("#pwdTip").html("密码应在6-20位之间").show();
		}else{
			$("#pwdTip").hide();
		}
		return false;
	}
	$("#submit").click(function(){
	    var pwd = $("#password").val().trim();
	    var uname = $("#username").val().trim();
		checkUserName();
		checkPassword();
		$.ajax({
            url:"user/checkUser.action",
            data:{"username":uname,"password":pwd},
            async:false,
            type: "POST",
            dataType:"json",
            success: function(data)
                {
                    if(data=="1"){
                    	$("#errorTip").hide();
                    	window.location.href = "http://localhost:8080/travelpu/user/login.action?username="+uname+"&password="+pwd;
                    }else{
                    	$("#errorTip").show();
                    }
                }
        });
		return false;
	});
	
	
	$("#logout").click(function(){
		window.location.href="http://localhost:8080/travelpu/user/logout.action"
	})
	/* $("form").submit(function(){
		
        var code = $("#code").val().trim();//用户输入的验证码
        if(username.length>0&&password.length){
        	
        }
        if(code.length != 0 ){
            var status = checkImageCode(code).trim();
            //alert(status);
            if(status.indexOf("true")>=0){
                alert("成功");
            }else{
                changeImg();
                alert("失败");
            }
        }else{
            alert("请输入验证码");
        } 

        return false;
        });*/
	</script>
</html>