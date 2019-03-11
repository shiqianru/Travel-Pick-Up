<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx" class="no-js">
<head>
<%response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);
response.flushBuffer();%>
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
		
	<style type="text/css">
		img{  
		    width: auto;  
		    height: auto;  
		    max-width: 100%;  
		    max-height: 100%;     
		}
	</style>
	</head>
	<body>
		<!-- Start banner Area -->
		<section class="generic-banner relative">
		<s:include value="/jsp/header.jsp"></s:include>				
			<div class="container">
				<div class="row height align-items-center justify-content-center">
					<div class="col-lg-10">
						<div class="generic-banner-content">
							<h2 class="text-white text-center">旅行拾光</h2>
							<p class="text-white">心的旅行，爱的收获。</p>
						</div>
					</div>
				</div>
			</div>
		</section>		
		<!-- End banner Area -->
		
		<div class="whole-wrap pb-100" align="center">
			<form id="registForm" action="user/modifyPwd.action">
				<div style="width:30%;margin-top: 20px;">
					<div id="oriPwd_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">原始密码</span><br>
						<input type="password" style="height: 35px;margin-top: 10px;margin-bottom:20px;width: 500px;" id="originPwd" name="originPwd" onblur="checkOriPwd()" placeholder="请在这里输入原始密码"><br>
						<span id="oriPwdTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;"></span>
					</div>
					<div id="password_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">新密码</span><br>
						<input type="password" style="height: 35px;margin-top: 10px;width: 500px;margin-bottom: 20px;" id="password" name="password" onblur="checkNewPwd()" placeholder="请在这里输入新密码"><br>
						<span id="pwdTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">密码应在6-20位</span>
					</div>
					<div id="password_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;margin-top:20px;">确认密码</span><br>
						<input type="password" style="height: 35px;margin-top: 10px;width: 500px;margin-bottom: 20px;" id="apassword" name="apassword" onblur="checkAPassword()" placeholder="请再次输入确认密码"><br>
						<span id="apwdTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">两次密码不一致</span>
					</div>
					<div id="button_div" align="center">
						<input id="submit" type="submit" value="修改密码" style="width: 300px;height: 40px;color: #FFF;background-color: #11C2EE;border: none;margin-top: 20px;">
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
	$(window).load(function(){
    	var errormsg='${session.errormsg}';
		if(errormsg!=null && errormsg!=""){
			<%session.setAttribute("errormsg", "");%>
			alert(errormsg);
		}
		
		function checkOriPwd(){
			var oriPwd=$("#originPwd").val();
			if(oriPwd==null || oriPwd==""){
				$("#oriPwdTip").html("请输入原始密码密码").show();
				return false;
			}else if(oriPwd.length<6 || oriPwd.length>20){
				$("#oriPwdTip").html("密码应在6-20位之间").show();
				return false;
			}else{
				/* $("#oriPwdTip").hide(); */
				$.ajax({
					url:"user/isPwdCorrect.action",
		            data:{"oriPwd":oriPwd},
		            async:false,
		            type: "POST",
		            dataType:"json",
		            success: function(data)
		                {
		                    if(data=="1"){
		                    	$("#oriPwdTip").css("color","green").html("密码正确！").show();
		                    }else{
		                    	$("#oriPwdTip").css("color","red").html("密码错误！").show();
		                    }
		                }
				})
				return true;
			}
		}
		
		function checkNewPwd(){
			var pwd=$("#password").val();
			if(pwd==null || pwd==""){
				$("#pwdTip").html("请输入新密码").show();
				return false;
			}else if(pwd.length<6 || pwd.length>20){
				$("#pwdTip").html("密码应在6-20位之间").show();
				return false;
			}else{
				$("#pwdTip").hide();
				return true;
			}
		}
		
		function checkAPassword(){
			var pwd=$("#password").val();
			var apwd=$("#apassword").val();
			if(pwd==apwd){
				$("#apwdTip").css("color","green").html("两次密码一致").show();
				return true;
			}else{
				$("#apwdTip").css("color","red").html("两次密码不一致").show();
				return false;
			}
		}
		
		$("#submit").click(function(){
			var b1=checkOriPwd();
			var b2=checkNewPwd();
			var b3=checkAPassword();
			
			if(b1==true && b2==true && b3==true){
				return true;
			}else{
				alert("信息有误");
				return false;
			}
		})
		
		
		$("#logout").click(function(){
			window.location.href="http://localhost:8080/travelpu/user/logout.action"
		})
	})
	
	</script>
</html>