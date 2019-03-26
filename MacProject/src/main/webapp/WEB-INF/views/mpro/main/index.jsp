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
	       }
	       
	       #content {
	           min-height: 350px;
	           margin: 0px auto;
	           width: 1200px;
	           border: 1px solid red;
	       }
	       
	       #macaronmenu {
	           border: 0px solid red;
	           margin-bottom: 20px;
	           padding: 10px;
	       }
	       
	       .macaronbox {
	           width: 260px;
	           height: 330px;
	           border: 1px solid #aaa;
	           display: inline-block;
	           margin: 6px;
	           float: left;
	       }
	       
	       #macaronmenu:after {
	           content: "";
	           display: block;
	           clear: both;
	       }
	       
	       /* event */
	       #eventlist {
	           border: 1px solid red;
	           float: left;
	           padding: 10px;
	       }
	       
	       .eventbox {
	           width: 150px;
	           height: 150px;
	           border: 1px solid #aaa;
	           display: inline-block;
	       }
	       
	       /* free board */
	       #boards {
	           float: left;
	       }
	       
	       #container:after {
	           content: "";
               display: block;
               clear: both;
	       }
	       
	       
	    </style>
	    <script>
	    
	       $(document).ready(function() {
	    	   
	    	   
		       
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
		            
		            <!-- content start -->
		            <div id="content">
		                <div id="container" class="container">
		                    <!-- macaron -->
		                    <div id="macaronmenu">
			                    <h2>오늘의 메뉴</h2>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
			                    <div class="macaronbox"></div>
		                    </div>
		                    
		                    <!-- event+board -->
		                    <div>
			                    <!-- board -->
			                    <table id="boards" class="table">
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