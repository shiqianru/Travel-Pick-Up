<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.util.Date" %>
    <%@page import= "java.text.SimpleDateFormat" %>
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
        <link rel="shortcut icon" href="image/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Cache-Control" content="no-cache">
		<meta http-equiv="Expires" content="0">
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
            <style type="text/css">
            	p{
				  word-wrap: break-word;
				  word-break: break-all;
				  overflow: hidden;
				}
            </style>
        </head>
        <body>

            <s:include value="/jsp/header.jsp"></s:include>	

            <!-- Start top-section Area -->
            <section class="top-section-area section-gap">
                <div class="container">
                    <div class="row justify-content-start align-items-center d-flex">
                        <div class="col-lg-8 top-left">
                            <h1 class="text-white mb-20">个人主页</h1>
                            <ul>
                                <li><a href="javascript:;">我的</a><span class="lnr lnr-arrow-right"></span></li>
                                <li><a href="post/getAllPost.action">主页</a></li>
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
                        	<s:if test="#session.postList!=null && !#session.postList.isEmpty()">
                        		<s:iterator value="#session.postList" var="post">
	                        		<div class="single-list flex-row d-flex">
		                                <div class="thumb">
		                                    <div class="date">
		                                        <span class="postTime">${post.postTime }</span>
		                                    </div>
		                                    <s:if test="#post.homePageImgUrlVO != null">
		                                   		 <img width="150px" src="upload/${post.homePageImgUrlVO.imageUrl }" alt="">
		                                    </s:if>
		                                    <s:else>
		                                    	 <img width="150px" src="image/hpalt.png" alt="">
		                                    </s:else>
		                                </div>
		                                <div class="detail">
		                                    <a href="post/getPostDetail.action?postId=${post.id }"><h4 class="pb-20">${post.postName }</h4></a>
		                                    <p class="postContent">
		                                        ${post.postContent }
		                                    </p>
		                                    <p class="footer pt-20">
		                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
		                                    <a href="#">${post.likeCount } 赞</a>     <i class="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a href="#">${post.commentCount } 评论</a>
		                                    </p>
		                                </div>
		                            </div>
                           		</s:iterator>
	                            <div class="justify-content-center d-flex">
	                                <a class="text-uppercase primary-btn loadmore-btn mt-40 mb-60" href="#"> Load More Post</a>
	                            </div> 
                        	</s:if>
                            <s:else>
                            	<span>还没有内容哦，考来发帖吧！</span>
                            </s:else>                                                                    
                        </div>                          
                    </div>
                    <div class="col-lg-4 sidebar-area">
                    	<div class="single_widget search_widget">
                            <div id="imaginary_container"> 
                                <div class="input-group stylish-input-group">
                                    <input id="sContentUser" type="text" class="form-control"  placeholder="搜帖子" >
                                    <span class="input-group-addon">
                                        <button id="submit" type="submit">
                                            <span class="lnr lnr-magnifier"></span>
                                        </button>  
                                    </span>
                                </div>
                            </div> 
                        </div>
                        <!-- search form -->
                        <form id="searchUserForm" action="user/searchPost.action">
                        	<input type="hidden" id="searchContentUser" name="searchContentUser">
                        </form>
                        <!-- search form -->
                        <div class="single_widget about_widget">
                            <img width="100px" src="${session.userVO.displayPicUrl}" alt="">
                            <h2 class="text-uppercase">${session.userVO.username }</h2>
                            <p>
                                 ${session.userVO.introduce }
                            </p>
                           <div id="imaginary_container" style="padding-bottom: 20px;padding-top: 20px;" align="center"> 
                               <div style="float: left;width: 50%;border-right: solid 0.5px #E6E6E6;"><a href="post/getFocusList.action">${session.userVO.focusCount }&nbsp;关注</a></div>
                               <div style="float: left;width: 50%;"><a href="post/getFansList.action">${session.userVO.fansCount }&nbsp;粉丝</a></div>
                           </div> 
                        </div>
                        
                        
                        <div class="single_widget recent_widget">
                            <h4 class="text-uppercase pb-20">最近</h4>
                            <div class="active-recent-carusel">
                            	<s:iterator value="#session.recentCateList" var="recentCate">
                            		<div class="item">
                            			<img height="200px" src="upload/${recentCate.imageUrl }" alt="">
	                                   
	                                    <p class="mt-20 title text-uppercase">${recentCate.postVO.postName }</p>
	                                    <p>${recentCate.upTime }<span></span></p>    
	                                </div> 
                            	</s:iterator>                                                                                            
                            </div>
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
	    	var errormsg='${session.errormsg}';
			if(errormsg!=null && errormsg!=""){
				<%session.setAttribute("errormsg", "");%>
				alert(errormsg);
			}
			
	    	var content=$(".postContent");
	    	$(".postContent").each(function(){
	    	   if($(this).text().length>180){
	    		   $(this).text($(this).text().substring(0,180)+"...");
		       	}
	    	});
	    	
	    	$('.postTime').each(function(){
	     	   var postTime=$(this).text().split(' ');
	     	   $(this).text("");
	     	   $(this).append(postTime[1],"<br/>",postTime[0]);
	    	})
	    	
	    	$("#submit").click(function(){
	    		var sContent=$("#sContentUser").val();
	    		$("#searchContentUser").val(sContent);
	    		$("#searchUserForm").submit();
	    	})
	    	
	    	
	    	$("#logout").click(function(){
			window.location.href="http://localhost:8080/travelpu/user/logout.action"
		})
	    	
	    })
	   
	    </script>
    </html>