<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	    <jsp:include page="/WEB-INF/views/inc/asset.jsp" flush="false"/>
	    
	    <style>
	       
	       /* section */
	       #main_image {
	           min-height: 450px;
	           background-image: url("resources/asset/images/sample.png");
	           background-repeat: no-repeat;
	           background-size: cover;
	           display: none;
	       }
	       
	       #choose_menu {
	           width: 1200px;
	           height: 250px;
	           text-align: center;
	           margin: 0px auto;
	           border: 0px solid blue;
	       }
	       
	       #content {
	           min-height: 350px;
	           margin: 0px auto;
	           width: 1200px;
	           border: 0px solid red;
	       }
	       
	       #macaronmenu {
	           border: 0px solid red;
	           margin-bottom: 20px;
	           padding: 10px;
	       }
	       
	       .macaronbox {
	           width: 260px;
	           height: 320px;
	           border: 1px solid #aaa;
	           display: inline-block;
	           margin: 6px;
	           opacity: 0.8;
	           cursor: pointer;
	           float: left;
	       }
	       
	       .selected {
	           opacity: 1;
	           border-radius: 5px;
	           border: 2px dashed #59BEE4;
	       }
	       
	       .macaron_image {
               height: 220px;
               background-image: url("resources/asset/images/sample.png");
               background-repeat: no-repeat;
               background-size: cover;
           }
           
           .macaronbox section {
               margin-top: 10px;
               margin-left: 15px;
           }
           
           .macaronbox footer {
               margin-left: 15px;
           }
           
           .macaron_title {
               font-weight: bold;
               font-size: 1.2em;
               display: inline;
           }
	       
	       #macaronmenu:after {
	           content: "";
	           display: block;
	           clear: both;
	       }
	       
	       
	       /* free board */
	       #boards {
	           float: left;
	           width: 50%;
	       }
	       
	       /* event */
           #eventlist {
               border: 1px solid red;
               float: left;
               padding: 10px;
               width: 50%;
           }
           
           .eventbox {
               width: 150px;
               height: 150px;
               border: 1px solid #aaa;
               display: inline-block;
           }
	       
	       #container:after {
               content: "";
               display: block;
               clear: both;
           }
           
           #current_choose_menu {
               width: 100%;
               height: 200px;
               text-align: left;
               padding-left: 20px;
               padding-right:20px;
               border: 0px solid red;
           }
           
           .circlebox {
               margin-top: 10px;
               margin-bottom: 10px;
               margin-left: 20px;
               margin-right: 21px;
               border: 0px solid green;
               display: inline-block;
               position: relative;
           }
           
           .circlebox > div {
               text-align: center;
           }
           
           .circles {
               width: 150px;
               height: 150px;
               border-radius: 75px;
               border: 0px solid green;
           }
           
	       .xicon {
	           width: 20px;
	           height: 20px;
	           border-radius: 10px;
	           position: absolute;
	           left: 130px;
	           top: 5px;
	           border: 0px solid gray;
	           background-image: url("resources/asset/images/icon/delete-button.png");
               background-repeat: no-repeat;
               background-size: cover;
               cursor: pointer;
	       }
	       
	    </style>
	    <script>
	       
	       var current_macaron_cnt = 0;
	       
	       jQuery(document).ready(function() {
	    	   	    	   
	    	   init_Menu();
	    	   
	    	   $(".macaronbox").click(function() {
	    		   var selectedId = $(this).attr("id");
	    		   if(current_macaron_cnt == 0) {
                       $("#current_choose_menu").html("");
                   }
	    		   if(!dup_macaron(selectedId)) {
	    			   console.log(current_macaron_cnt);
		    		   var macaron = "";
		    		   macaron += "<div class='circlebox' name='"+selectedId+"'>";
		    		   macaron += "<img class='circles' src='resources/asset/images/sample.png'>";
		    		   macaron += "<div>소금바닐라";
		    		   macaron += "<span class='spacebar-3'></span>";
		    		   macaron += "<span>1개</span>";
		    		   macaron += "</div>";
		    		   macaron += "<div class='xicon' onclick='delete_macaron(event);'></div>";
		    		   macaron += "</div>";
		    		   $("#current_choose_menu").append(macaron);
		    		   current_macaron_cnt++;
		    		   if(current_macaron_cnt%6 == 1 && current_macaron_cnt != 1) {
		    			   $("#choose_menu").css("height", parseInt($("#choose_menu").height()) + 200 + "px");
		    			   $("#current_choose_menu").css("height", parseInt($("#current_choose_menu").height()) + 200 + "px");
		    		   }
	    		   }
	    	   });
	    	   	    	   
	    	   $(".macaronbox").click(function() {
	    		    $(this).attr("class", "macaronbox selected");
	    	   });
	    	   
	    	   
	    	   
	       });//ready
	       
	       
	   
	      
	    </script>
	</head>
	<body>
	    
		<!-- main start -->
		<div id="main">
		    <jsp:include page="/WEB-INF/views/inc/header.jsp" />
		    
		    <!-- section start -->
		    <section>
		        <div id="section">
		            <!-- main_image start -->
		            <div id="main_image"></div>
		            <!-- main_image end -->
		            
		            <!-- choose_menu start -->
		            <div id="choose_menu">
		                <h2>현재 선택한 메뉴</h2>
		                <div id="current_choose_menu">
		                    <div style="text-align: center; margin-top: 80px;">현재 선택된 메뉴가 없습니다.</div>
		                </div>
		            </div>
		            <!-- choose_menu end -->
		            
		            <!-- content start -->
		            <div id="content">
		                <div id="container" class="container">
		                    <!-- macaron -->
		                    <div id="macaronmenu">
			                    <h2>오늘의 메뉴</h2>
			                    <div class="macaronbox" id="macaron1">
			                        <header>
			                            <div class="macaron_image"></div>
			                        </header>
			                        <section>
			                            <div class="macaron_title">
			                                소금바닐라
			                            </div>
			                            <span class="taste taste-bold">단짠단짠</span>
			                            <span class="taste">부드러움</span>
			                        </section>
			                        <footer>
			                            <div class="price">
			                                1개당 2,000원
			                            </div>
			                            <span class="go_info">
			                                <a href="#">더알아보기</a>
			                            </span>
			                            <span class="spacebar-5"></span>
			                            <span class="go_info">
			                                <a href="#">재료보러가기</a>
			                            </span>
			                        </footer>
			                    </div>
			                    <div class="macaronbox" id="macaron2"></div>
			                    <div class="macaronbox" id="macaron3"></div>
			                    <div class="macaronbox" id="macaron4"></div>
			                    <div class="macaronbox" id="macaron5"></div>
			                    <div class="macaronbox" id="macaron6"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
		                    </div>
		                    
		                    <!-- event+board -->
		                    <div>
			                    <!-- board -->
			                    <table id="boards" class="table table-hover">
	                                <thead>
	                                    <tr>
	                                        <th>No</th>
	                                        <th>제목</th>
	                                        <th>작성자</th>
	                                        <th>날짜</th>
	                                        <th>조회수</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr>
	                                        <td>1</td>
	                                        <td>안녕?</td>
	                                        <td>김성진</td>
	                                        <td>2019.03.25</td>
	                                        <td>15</td>
	                                    </tr>
	                                    <tr>
	                                        <td>1</td>
	                                        <td>안녕?</td>
	                                        <td>김성진</td>
	                                        <td>2019.03.25</td>
	                                        <td>15</td>
	                                    </tr>
	                                    <tr>
	                                        <td>1</td>
	                                        <td>안녕?</td>
	                                        <td>김성진</td>
	                                        <td>2019.03.25</td>
	                                        <td>15</td>
	                                    </tr>
	                                    <tr>
	                                        <td>1</td>
	                                        <td>안녕?</td>
	                                        <td>김성진</td>
	                                        <td>2019.03.25</td>
	                                        <td>15</td>
	                                    </tr>
	                                    <tr>
	                                        <td>1</td>
	                                        <td>안녕?</td>
	                                        <td>김성진</td>
	                                        <td>2019.03.25</td>
	                                        <td>15</td>
	                                    </tr>
	                                    <tr>
	                                        <td>1</td>
	                                        <td>안녕?</td>
	                                        <td>김성진</td>
	                                        <td>2019.03.25</td>
	                                        <td>15</td>
	                                    </tr>
	                                    <tr>
	                                        <td>1</td>
	                                        <td>안녕?</td>
	                                        <td>김성진</td>
	                                        <td>2019.03.25</td>
	                                        <td>15</td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                            
	                            <!-- event -->
			                    <div id="eventlist">
			                        <div class="eventbox"></div>
			                        <div class="eventbox"></div>
			                        <div class="eventbox"></div>
			                        <div class="eventbox"></div>
			                    </div>
		                    </div>
		                    <!-- event+board end -->                
		                </div>
		            </div>
		            <!-- content end -->
		        </div>
		    </section>
		    <!-- section end -->
		    
		    <!-- aside start -->
		    <aside></aside>
		    <!-- aside end -->
		    
		    <jsp:include page="/WEB-INF/views/inc/footer.jsp" />
		</div>
		<!-- main end -->
    
    </body>
</html>