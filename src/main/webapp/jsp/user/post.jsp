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

	<style type="text/css">
		.picked{
			background-color: #80C7F6;
		}
		body {
			font: 14px/150% microsoft yahei,tahoma;
			}
		.clear {
			clear: both
			}
		.RadioStyle input {
			display: none
			}
		.RadioStyle label {
			border: 1px solid #CCC;
			color: #666;
			padding: 2px 10px 2px 5px;
			line-height: 28px;
			min-width: 80px;
			text-align: center;
			float: left;
			margin: 2px;
			border-radius: 4px
			}
		.RadioStyle input:checked + label {
			background: url(image/ico_checkon.svg) no-repeat right bottom;
			border: 1px solid #00a4ff;
			background-size: 21px 21px;
			color: #00a4ff
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
							<h2 class="text-white text-center">世界在你眼中</h2>
							<p class="text-white">旅游不在乎终点，而是在意途中的人和事还有那些美好的记忆和景色。</p>
						</div>
					</div>
				</div>
			</div>
		</section>		
		<!-- End banner Area -->
		
		<div class="whole-wrap pb-100" align="center">
			<form id="postForm" action="post/post.action" method="post"  enctype="multipart/form-data">
				<div style="width:30%;margin-top: 20px;">
					<div id="postname_div" align="left" style="margin:0px 0px 20px 0px;width: 100%;">
						<input type="text" style="height: 35px;width: 100%;" id="postName" name="postName" placeholder="贴子主题" onblur="checkTitle()"><br>
						<span id="pTitleTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">帖子标题不要大于60字</span>
					</div> 
					<div id="postcontent_div" align="left" style="width: 100%;">
						<textarea class="scrollbar" wrap="hard" id="postcontent" name="postcontent" rows="10" cols="60" placeholder="贴子正文" style="overflow-x:hidden;resize:none;" onpropertychange='this.style.posHeight=this.scrollHeight' onfocus='this.style.posHeight=this.scrollHeight'></textarea>
						<span id="pwdTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">密码应在6-20位</span>
					</div>
					<div id="postimgurl_div" align="left" style="width: 100%;margin-top: 30px;">
						<label for="">点击上传</label>
						<input type="file" id="file_input" name="filePath" multiple="multiple"/>
					</div>
					<div class="RadioStyle" style="margin-top: 30px;">
						<div align="left" style="margin-bottom: 10px;">可以选择至多三个标签哦！</div>
					    <div class="Block PaddingL">
					        <input type="checkbox" id="point1" name="postPoint" value="日常"/>
					        <label for="point1">日常</label>
					        <input type="checkbox" id="point2"  name="postPoint" value="科技"/>
					        <label for="point2">科技</label>
					        <input type="checkbox" id="point3" name="postPoint" value="美食" />
					        <label for="point3">美食</label>
					        <input type="checkbox" id="point4" name="postPoint" value="历史" />
					        <label for="point4">历史</label>
					        <input type="checkbox" id="point5"  name="postPoint" value="时尚"/>
					        <label for="point5">时尚</label>
					        <input type="checkbox" id="point6"  name="postPoint" value="艺术"/>
					        <label for="point6">艺术</label>
					    </div>
					</div>
					
					<div class="clear"></div>
					<div id="button_div" align="center">
						<input id="upload" type="button" value="发表" style="cursor: pointer;width: 300px;height: 40px;color: #FFF;background-color: #11C2EE;border: none;margin-top: 20px;">
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
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/layer/2.3/layer.js"></script>
<script>
function checkTitle(){
	 var title=$("#postName").val();
    var content=$("#postcontent").val();
	if(title.length>60){
		$("#pTitleTip").show();
		return "0";
	}else{
		$("#pTitleTip").hide();
	}
}

$('input[type="checkbox"]').each(function(){
	$(this).click(function(){
		var count=$("input[type='checkbox']:checked").length;
		if(count>3){
			alert("最多选三个！");
			$(this).prop("checked",false);
		}
	})
})

$("#upload").click(function(){

	var text = $("#postcontent").text(); 
	var des = text.replace(/\r\n/g, '<br/>').replace(/\n/g, '<br/>').replace(/\s/g, ' '); //转换格式
	$("#postcontent").empty(); 
	$("#postcontent").append(des);
	$("#postForm").submit();
})

    
</script>
</html>