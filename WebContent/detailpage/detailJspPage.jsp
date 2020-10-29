<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="detailpage.beans.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="arr" value='<%=(WriteDTO[])request.getAttribute("list") %>'/>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JEJUMARU</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>JEJUMARU</title>


    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
    <!-- <link rel="stylesheet" href="./assets/css/style.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <!-- <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'> -->
    <!-- <link rel="stylesheet" href="detailboot/bootstrap/css/bootstrap.min.css"> -->

    <link rel="stylesheet" href="detailboot2/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="detailboot2/css/styles.min.css"> 


<link href="detailpage.css?<%=System.currentTimeMillis() %>" rel="stylesheet" type="text/css">


</head>


<body>
    <nav class="navbar navbar-light navbar-expand-xl fixed-top bg-white clean-navbar">
        <div class="container">
            <a class="navbar-brand logo" href="#">
                <img src="assets/img/img/logo.png"></a>
            <div class="search float-left float-md-right mt-0 mt-md-0 search-area">
                <i class="fas fa-search float-left search-icon"></i>
                <input class="float-left float-sm-right custom-search-input" type="search" placeholder="검색어를 입력하세요"></div>
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange;">제주스토리</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">소개</a>
                            <a class="dropdown-item" href="#" style="color: white;">문화와 역사</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange;">제주플레이스</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">제주시</a>
                            <a class="dropdown-item" href="#" style="color: white;">서귀포시</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange;">나의여행</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">찜 목록</a>
                            <a class="dropdown-item" href="#" style="color: white;">내가 쓴 글</a>
                            <a class="dropdown-item" href="#" style="color: white;">회원정보수정</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" style="margin-right: 0px;">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange;">고객센터</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">Q&A</a>
                            <a class="dropdown-item" href="#" style="color: white;">공지사항</a>
                        </div>
                    </li>
                </ul>
                <a id="login" href="#" style="margin-right: 10px; font-size: 14px; color:#8a8a8a;">로그인</a>
                <a id="join" href="#" style="font-size: 14px; color:#8a8a8a;">회원가입</a></div>
        </div>
    </nav>



    
<!--------------------------------- section 시작 ----------------------------------------------- -->

    <div class="container section">

        <!--상세 설명 + 상세이미지 시작  -->
        <div class="container">
            <div id="main_area">
                    <!-- Slider -->
                    <div class="row">
                        <div class="col-xs-12" id="slider">
                            <!-- Top part of the slider -->
                            <div class="row">
                                <div class="col-sm-8" id="carousel-bounding-box">
                                    <div class="carousel slide" id="myCarousel">
                                        <!-- Carousel items -->
                                        <div class="carousel-inner">
                                            
                                            <div class="active item" data-slide-number="0">
                                                <img src="">
                                            </div>
    
                                            <div class="item" data-slide-number="1">
                                                <img src="">
                                            </div>
    
                                            <div class="item" data-slide-number="2">
                                                <img src="http://placehold.it/770x300&text=three">
                                            </div>
                                            
                                            <div class="item" data-slide-number="3">
                                                <img src="http://placehold.it/770x300&text=four">
                                            </div>
                                            
                                            <div class="item" data-slide-number="4">
                                                <img src="http://placehold.it/770x300&text=five">
                                            </div>
                                            
                                            <div class="item" data-slide-number="5">
                                                <img src="http://placehold.it/770x300&text=six">
                                            </div>
                                        </div><!-- Carousel nav -->

                                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                            <span class="glyphicon glyphicon-chevron-left"></span>                                       
                                        </a>
                                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                            <span class="glyphicon glyphicon-chevron-right"></span>                                       
                                        </a>                                
                                    </div>
                                </div>
    
                                <div class="col-sm-4" id="carousel-text"></div>
    
                                <div id="slide-content" style="display: none;">

                                    <div id="slide-content-0" >
                                      
                                        
                                        <div class="detail-list">

                                            <h1 class="my-4 title"><br></h1>
                                            <h1 class="my-3">
                                                <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half"></i>4.5
                                            </h1>
                                                
                                            <p class="tag">#일출 #오름 #경관/포토 #부모</p>
                                            <h3 class="my-3 introduction">제주를 호흡하고 명상하는 곳"</h3>
                                            <ul class="list-unstyled">
                                                <li> 주소 : <span class="address"></span></li>
                                                <li> 번호 : <span class="phoneno"></span></li>
                                            </ul>
                                           <i class="fas fa-map-marker-alt"></i>
                                        </div>

                                    </div>
    
                                   
                                  
                                </div>
                            </div>
                        </div>
                    </div><!--/Slider-->
    
                    <div class="row hidden-xs" id="slider-thumbs">
                            <!-- Bottom switcher of slider -->
                            <ul class="hide-bullets">
                                <li class="col-sm-2">
                                    <a class="thumbnail" id="carousel-selector-0">
                                        <img src="">
                                    </a>
                                </li>
    
                                <li class="col-sm-2">
                                    <a class="thumbnail" id="carousel-selector-1">
                                        <img src="">
                                    </a>
                                </li>
    
                                <li class="col-sm-2">
                                    <a class="thumbnail" id="carousel-selector-2"><img src="http://placehold.it/170x100&text=three"></a>
                                </li>
    
                                <li class="col-sm-2">
                                    <a class="thumbnail" id="carousel-selector-3"><img src="http://placehold.it/170x100&text=four"></a>
                                </li>
    
                                <li class="col-sm-2">
                                    <a class="thumbnail" id="carousel-selector-4"><img src="http://placehold.it/170x100&text=five"></a>
                                </li>
    
                                <li class="col-sm-2">
                                    <a class="thumbnail" id="carousel-selector-5"><img src="http://placehold.it/170x100&text=six"></a>
                                </li>
                            </ul>                 
                    </div>
            </div>
    </div>
        <script src="detailboot2/js/jquery.min.js"></script>
        <script src="detailboot2/bootstrap/js/bootstrap.min.js"></script>
        <script src="detailboot2/js/script.min.js"></script>

<!--상세 설명 + 상세이미지 끝  -->


        <h3 class="my-4">리뷰<br></h3>

        <!-- 전체 리뷰 5개씩 페이징, 쓰는란 -->
        <div class="review-wrap-wrap">
        
         <!-- 리뷰가 없을때 -->
         <c:if test='${fn:length(arr) == 0 }'>
                <div class="reviewNO">
                   	리뷰가 없습니다. 리뷰를 등록해주세요. <i class="far fa-frown"></i>
             	</div>
         	
         </c:if>
       
       <!-- 게시된 리뷰 목록들  -->
       <c:if test='${fn:length(arr) != 0 }'>
            <c:forEach var="element" items="${arr }" varStatus="status">
            
            
            	<div class="review-wrap">
            
                
	                <div>
	                    <span class="username">${element.rmno }</span>
	                    <span class="regdate">${element.rdate }</span>
	                    <p class="star"> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i
	                            class="fas fa-star-half"></i></p>
	                </div>
                   
                    <button onclick="">수정</button><br>
                    <button onclick="">삭제</button>
    		        <!--
                        <script>
    					switch (${element.rstar }) {
						case 0.5:
							<i class="fas fa-star-half"></i>
							break;

						default:
							break;
						}
    				
    				</script>
                 -->
                
                    <!-- 이미지 배열 쓸때 쓸거임  -->
                    <div class="review-text"> <!-- 리뷰 내용  -->
	                    ${element.rcontent } 
	                </div>
					<div class="reviewImg" style="width: 300px">
					
						<!-- <c:forEach var="j" begin="0" end="${fn:length(element.rimg) }">
							<img style="width: 100%; height: auto" src="${element.rimg[i] }" />
                        </c:forEach> -->
                        <img style="width: 100%; height: auto" src="${element.rimg }" />
                        
					</div>
          
	                
			            <%-- <c:forEach var="fileDto" items="${fileList }">
							<c:if test="${fileDto.image == true }">
								
							</c:if>
						</c:forEach> --%>
					
					
					
            	</div> 
            	<!-- end 게시된 리뷰 보여기주 -->
                </c:forEach>
			</c:if>
		
		
            <hr>   
            <h3>리뷰쓰기</h3>

            <form name="frm" action="writeOk.do" method="post" onsubmit="return chkSubmit()"
                enctype="Multipart/form-data">
                
            
                <div class="review-write">
                    <div class="write-wrap">
                		
                		
                        <div class="username">회원이름</div>
                		<input type="hidden" name="rmno" value="13">
                		<input type="hidden" name="rplace" value="50">
                		
                
                        <!---------------------  별점  시작 --------------------->
                        <div class="startRadio">
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="0.5">
                                <span class="startRadio__img"><span class="blind">0.5</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="1">
                                <span class="startRadio__img"><span class="blind">1</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="1.5">
                                <span class="startRadio__img"><span class="blind">1.5</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="2">
                                <span class="startRadio__img"><span class="blind">2</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="2.5">
                                <span class="startRadio__img"><span class="blind">2.5</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="3">
                                <span class="startRadio__img"><span class="blind">3</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="3.5">
                                <span class="startRadio__img"><span class="blind">3.5</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="4">
                                <span class="startRadio__img"><span class="blind">4</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id="" value="4.5">
                                <span class="startRadio__img"><span class="blind">4.5</span></span>
                            </label>
                            <label class="startRadio__box">
                                <input type="radio" name="rstar" id=""  value="5">
                                <span class="startRadio__img"><span class="blind">5</span></span>
                            </label>
                        </div>
                        <!-- 별점 끝 -->
                
                
                             
                        <textarea class="textwrtie" name="rcontent" placeholder="리뷰를 남겨주세요!"
                            style="overflow-x: hidden; overflow-wrap: break-word; "></textarea>
                            <br>
                        
 						<button type="button" id="btnAdd"><i class="fas fa-camera"></i></button>
                        <button type="submit" class="review-submit"> 입력 </button>
                            <div id="files"></div>
                        <div style="background-color: beige; padding:2px 10px; margin-bottom: 5px; border: 1px solid #000;">
                            <h4>첨부파일</h4>
                        </div>
                	
  	
						<script>
							var i = 0;
							$("#btnAdd").click(function(){
								$("#files").append("<div><input type='file' name = 'upfile" +i+ "'/><button type='button' onclick='$(this).parent().remove()'>삭제</button></div>");
								// i++;
							});
						</script>
		
                        


                    </div>
                
                </div>
            </form> <!-- end 리뷰 쓰기 박스 끝 -->


        </div> <!-- review-wrap-wrap -->
               
    </div> <!-- section 완전 끝내는 div -->

<!-- 
    <script src="detailboot/js/jquery.min.js"></script>
    <script src="detailboot/bootstrap/js/bootstrap.min.js"></script>
     -->


<!--------------------------------- section끝 ----------------------------------------------- -->


    <!-- 푸터 -->
    <footer id="footerpad" style="background-color: lightgray;">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-8 mx-auto">
                    <ul class="list-inline text-center">
                        <li class="list-inline-item" ><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x" style="color: orange;"></i><i class="fa fa-facebook fa-stack-1x fa-inverse"></i></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x" style="color: orange;"></i><i class="fa fa-twitter fa-stack-1x fa-inverse"></i></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x" style="color: orange;"></i><i class="fa fa-instagram fa-stack-1x fa-inverse"></i></span></a></li>
                    </ul>
                    <p class="copyright text-muted text-center" style="font-size: 10px;">Copyright © JEJUMARU, All rights reserved.<br></p>
                </div>
            </div>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="assets/js/script.min.js"></script>
</body>

<script src="detailpage1.js" type="text/javascript"></script>   <!-- 제주도 API-->
</html>