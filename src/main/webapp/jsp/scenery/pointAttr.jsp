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
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>Blogger</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
            <!--
            CSS
            ============================================= -->
            <link rel="stylesheet" href="css/linearicons.css">
            <link rel="stylesheet" href="css/font-awesome.min.css">
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/owl.carousel.css">
            <link rel="stylesheet" href="css/main.css">
        </head>
        <body>

          <s:include value="/jsp/header.jsp"></s:include>	

            <!-- Start top-section Area -->
            <section class="top-section-area section-gap">
                <div class="container">
                    <div class="row justify-content-start align-items-center d-flex">
                        <div class="col-lg-8 top-left">
                            <h1 class="text-white mb-20">推荐</h1>
                            <ul>
                                <li><a href="attractions/getRecommend.action">推荐</a><span class="lnr lnr-arrow-right"></span></li>
                                <li><a href="attractions/getAllSigns.action#citySign">城市</a></li>
                            </ul>
                        </div>
                    </div>
                </div>  
            </section>
            <!-- End top-section Area -->

    
    <!-- Start post Area -->
    <div class="post-wrapper pt-100">
        <!-- Start post Area -->
        <section class="post-area">
            <div class="container">
                <div class="row justify-content-center d-flex">
                    <div class="col-lg-8">
                        <div class="post-lists search-list">
                        	<s:if test="#session.pointAttrList!=null && !#session.pointAttrList.isEmpty()">
                        		<s:iterator value="#session.pointAttrList" var="attraction">
			                    	<div class="single-list flex-row d-flex" style="width: 700px;height: 250px;"><!-- 一个单元 -->
			                            <div class="thumb" style="width: 30%;height: 100%;">
			                                <img src="image/asset/l1.jpg" alt="${attraction.viewTitle }" />
			                            </div>
			                            <div class="detail" style="width: 70%;height: 100%;padding-bottom: 20px;">
			                            	<div style="width: 100%;height: 20%;">
			                               		<a href="attractions/getAttrDetail.action?viewTitle=${attraction.viewTitle }"><h4 class="pb-20">${attraction.viewTitle }</h4></a>
			                                </div>
			                                <div style="width: 100%;height:50%;">
			                                	<p class="viewDiscrib">
				                                     ${attraction.viewDiscrib}
				                                </p>
			                                </div>
			                                
			                                <div id="view-label"  style="width: 100%;height: 30%;">
			                                	<s:if test="#attraction.viewPoint1 != null">
			                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint1 }</div>
			                                	</s:if>
			                                	<s:if test="#attraction.viewPoint2 != null">
			                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint2 }</div>
			                                	</s:if>
			                                	<s:if test="#attraction.viewPoint3 != null">
			                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint3 }</div>
			                                	</s:if>
			                                	<s:if test="#attraction.viewPoint4 != null">
			                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint4 }</div>
			                                	</s:if>
			                                	<s:if test="#attraction.viewPoint5 != null">
			                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint5 }</div>
			                                	</s:if>
			                                </div>
			                            </div>
			                        </div>
			                    </s:iterator>
                        	</s:if>
                        	<s:else><span>还没有相关推荐哦！</span></s:else>
                            
                            <div class="justify-content-center d-flex">
                                <a class="text-uppercase primary-btn loadmore-btn mt-40 mb-60" href="#"> Load More Post</a>
                            </div>                                                                     
                        </div>                          
                    </div>
                    <div class="col-lg-4 sidebar-area">
                        <%-- <div class="single_widget search_widget">
                            <div id="imaginary_container"> 
                                <div class="input-group stylish-input-group">
                                    <input type="text" class="form-control"  placeholder="Search" >
                                    <span class="input-group-addon">
                                        <button type="submit">
                                            <span class="lnr lnr-magnifier"></span>
                                        </button>  
                                    </span>
                                </div>
                            </div> 
                        </div> --%>

                        <div class="single_widget about_widget">
	                    	<s:if test="#session.userVO!=null">
	                    		<img width="150px" src="${session.userVO.displayPicUrl }" alt="">
		                        <a href="post/getAllPost.action"><h2 class="text-uppercase">${session.userVO.username }</h2></a>
		                        <p>
		                            ${session.userVO.introduce }
		                        </p>
	                    	</s:if>
	                        <s:else>
	                        	快去<a href="jsp/user/login.jsp">登录</a>吧！
	                        </s:else>
	                    </div>
                        <div class="single_widget tag_widget">
                            <h4 class="text-uppercase pb-20">热点</h4>
                            <ul>
                                <li><a href="attractions/getPointAttr.action?point=日常">日常</a></li>
                                <li><a href="#">艺术</a></li>
                                <li><a href="attractions/getPointAttr.action?point=历史">历史</a></li>
                                <li><a href="#">美食</a></li>
                                <li><a href="#">科技</a></li>
                                <li><a href="#">时尚</a></li>
                            </ul>
                        </div>                                                 
                    </div>
                </div>
            </div>    
        </section>
        <!-- End post Area -->  
    </div>
    <!-- End post Area -->
    
       <s:include value="/jsp/footer.jsp"></s:include>       

            <script src="js/vendor/jquery-2.2.4.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
            <script src="js/vendor/bootstrap.min.js"></script>
            <script src="js/jquery.ajaxchimp.min.js"></script>
            <script src="js/parallax.min.js"></script>          
            <script src="js/owl.carousel.min.js"></script>      
            <script src="js/jquery.magnific-popup.min.js"></script>             
            <script src="js/jquery.sticky.js"></script>
            <script src="js/main.js"></script>  
        </body>
        <script type="text/javascript">
    $(window).load(function(){
    	var content=$(".viewDiscrib");
    	$(".viewDiscrib").each(function(){
    	   if($(this).text().length>180){
    		   $(this).text($(this).text().substring(0,180)+"...");
	       	}
    	});
    	
    	
    	$("#logout").click(function(){
			window.location.href="http://localhost:8080/travelpu/user/logout.action"
		})
    	
    })
   
    </script>
    </html>