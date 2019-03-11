<%@page import="java.io.Console"%>
<%@page import="java.awt.ItemSelectable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%! Integer current=1;%>
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
		img{  
		    width: auto;  
		    height: auto;  
		    max-width: 100%;  
		    max-height: 100%;     
		}
		p{
		  word-wrap: break-word;
		  word-break: break-all;
		  overflow: hidden;
		}
		.citySpan a:hover{
			color:#80DEF6;
		}
	</style>
    </head>
    <body>

       <s:include value="/jsp/header.jsp"></s:include>

        <!-- Start top-section Area -->
        <section class="top-section-area section-gap">
            <div class="container">
                <div class="row justify-content-center align-items-center d-flex">
                    <div class="col-lg-8">
                        <div id="imaginary_container"> 
                            <div class="input-group stylish-input-group">
                           		<input id="scontent" name="scontent" type="text" class="form-control"  placeholder="搜索" onfocus="this.placeholder = ''" onblur="this.placeholder = '搜索'" required="">
                                <span class="input-group-addon">
                                    <button id="search" type="submit">
                                        <span class="lnr lnr-magnifier"></span>
                                    </button>  
                                </span>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>  
        </section>
        <!-- End top-section Area -->
        
		<!-- search form -->
		 <form id="searchForm" action="attractions/search.action" method="post">
			     <input id="searchContent" type="hidden" name="searchContent">                       	
		 </form>
		<!-- search form -->

<!-- Start post Area -->
<div class="post-wrapper pt-100">
    <!-- Start post Area -->
    <section class="post-area">
        <div class="container">
            <div class="row justify-content-center d-flex">
                <div class="col-lg-8">
                    <div class="post-lists search-list">
	                    <s:iterator value="#session.attractionList" var="attraction">
	                    	<div class="single-list flex-row d-flex" style="width: 700px;height: 250px;"><!-- 一个单元 -->
	                            <div class="thumb" style="width: 30%;height: 100%;">
	                                <img src="image/asset/l1.jpg" alt="" />
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
	                    <s:if test="#session.subList!=null && !#session.subList.isEmpty()">
	                    	<s:iterator value="#session.subList" var="attraction">
		                    	<div class="single-list flex-row d-flex" style="width: 700px;height: 250px;"><!-- 一个单元 -->
		                            <div class="thumb" style="width: 30%;height: 100%;">
		                                <img src="image/asset/l1.jpg" alt="" />
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
                    </div>
                      <span id="current" style="display:none;"></span>
                </div>
                <div class="col-lg-4 sidebar-area">
                	<div class="single_widget tag_widget">
                        <h4 class="text-uppercase pb-20">筛选</h4>
                        <ul>
                            <li>
                                <a href="attractions/getRecommend.action">默认</a>
                            </li>
                            <li>
                                <a id="sortNew" href="attractions/sortNew.action">最新</a>
                            </li>
                            <li>
                                <a href="attractions/sortHot.action">最热</a>
                            </li>
                        </ul>
                    </div>
                    <div class="single_widget tag_widget">
                    	<div id="citySpan" style="width: 100%;height: 50%;">
                    		<div class="citySpan" style="width: 100%;height: 20%;">
                    			<h4 class="text-uppercase pb-20">城市<a href="attractions/getAllSigns.action#citySign" style="font-size: 12px;">more</a></h4>
                    		</div>
                    		<div style="width: 100%;height: 80%;">
	                    		<ul>
	                    			<s:if test="#session.cityShowList!=null">
	                    				<s:iterator value="#session.cityShowList" var="city">
	                    					<li><a href="attractions/getAttrOfCity.action?id=${city.id }">${city.cityName }</a></li>
	                    				</s:iterator>
	                    			</s:if>
		                        </ul>
                    		</div>
	                       
                    	</div>
                        <div id="attractionSpan" style="width: 100%;height: 50%;">
                    		<h4 class="text-uppercase pb-20">景点<a href="attractions/getAllSigns.action#attrSign" style="font-size: 12px;">more</a></h4>
	                        <ul>
	                            <s:if test="#session.attrShowList!=null">
	                        		<s:iterator value="#session.attrShowList" var="attr">
	                        			<li><a href="attractions/getAttrDetail.action?viewTitle=${attr.viewTitle }">${attr.viewTitle }</a></li>
	                        		</s:iterator>
	                        	</s:if>
	                        </ul>
                    	</div>
                    	<div id="foodSpan" style="width: 100%;height: 50%;">
                    		<h4 class="text-uppercase pb-20">美食<a href="attractions/getAllSigns.action#foodSign" style="font-size: 12px;">more</a></h4>
	                        <ul>
	                        	<s:if test="#session.foodShowList!=null">
	                        		<s:iterator value="#session.foodShowList" var="food">
	                        			<li><a href="attractions/getFoodDetail.action?id=${food.id }">${food.foodName }</a></li>
	                        		</s:iterator>
	                        	</s:if>
	                        </ul>
                    	</div>
                    </div> 
                    <div class="single_widget tag_widget">
                        <h4 class="text-uppercase pb-20">热点</h4>
                        <ul>
                            <li><a href="attractions/getPointAttr.action?point=日常">日常</a></li>
                            <li><a href="attractions/getPointAttr.action?point=艺术">艺术</a></li>
                            <li><a href="attractions/getPointAttr.action?point=历史">历史</a></li>
                            <li><a href="attractions/getPointAttr.action?point=美食">美食</a></li>
                            <li><a href="attractions/getPointAttr.action?point=科技">科技</a></li>
                            <li><a href="时尚">时尚</a></li>
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
    	
    	$("#loadmore").click(function(){
    		var currentpage=$("#currentPage").text();
    		
    		var c=parseInt(currentpage)+1;
    		$.ajax({
				url:"attractions/subAttrs.action",
	            data:{"currentPage":c},
	            async:true,
	            type: "POST",
	            dataType:"json",
	            success: function(data)
	                {
	            		window.location.reload();
		            	<%
		            	current=(Integer)session.getAttribute("currentPage");
		            	%>
		            	console.log(current);
	                }
			});
    	})
    	
    	$("#search").click(function(){
    		$("#searchContent").val($("#scontent").val());
    		$("#searchForm").submit();
    	})
    	
    	$("#sortNew").click(function(){
    		$.ajax({
				url:"attractions/sortNew.action",
	            async:true,
	            type: "POST",
	            dataType:"json",
	            success: function(data)
	                {
	            		
	                }
			});
    	})
    	
    	
    	
    	$("#logout").click(function(){
			window.location.href="http://localhost:8080/travelpu/user/logout.action"
		})
    	
    })
   
    </script>
    <%-- <%current=(Integer)session.getAttribute("currentPage");%>
    		var currentpage=<%=current%> --%>
</html>