<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>JMTBOX - Contents is ALL in JMTBOX</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
	<style>
	@font-face {
    font-family: 'Pretendard-Light';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Light.woff') format('woff');
    font-weight: 200;
    font-style: normal;
}
html,body {
	background-color: rgba(0, 0, 0, 0.95);
	width: 100%
}

h1, h2, h3, h4, h5, h6 {
	font-family: "Pretendard-Light";
	color: #ffffff;
	line-height: 1.3;
}
p{
font-family:"Pretendard-Light";
}
.col-12{
padding-left:0px !important;}
</style>
</head>

<body>
<%
MemberVO vo = (MemberVO)session.getAttribute("member");
%>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="main.jsp" class="nav-brand"><img src="img/bg-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                               <ul>
                                    <li><a href="main.jsp">Home</a></li>
                                    <li><a href="tournament.jsp">Game</a></li>
                                    <li><a href="search.jsp">Search</a></li>
                                    <%if(vo!=null){ %>
                                    <li><a href="myPages/myPage.jsp">My</a></li>
                                    <%} %>
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-btn mr-50">
                                    <%if(vo==null){ %>
                                        <a href="login.jsp" id="loginBtn">Login / Register</a>
                                        <%}else{%>
                                        <a href="Logout.do" id="logoutBtn">Logout</a>
                                        <% } %>
                                    </div>


                                    <!-- Cart Button -->
                                    <div class="cart-btn">
                                        <p><span class="icon-shopping-cart"></span> <span class="quantity">1</span></p>
                                    </div>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
	<!-- 검색창 -->
	<section class ="section-padding-100">

		<div class="search-container">
			<form action="movieDetail.jsp">
				<div class="search-box">
					<!-- 검색 name값을 content_id로 잡아야하나?.. -->
					<input class="search-input" type="text" placeholder="Search"
						name="search">
					<button class="searchbtn" name = "click" onClick="location.href='movieDetail.jsp'">
					</button>
				</div>
			</form>
		</div>


	</section>
	
    <!-- ##### 영화 사진올곳 ##### -->
    <!--  css수정 -->
    <div class="movie-detail">
            <div class="movie-img-container">
                <div class="movie-img-area" style="width: 100%">
                    <img class ="movie-img" src="./img/bg-img/test-img.jpg" alt="Loading"  style="width: 100%">
                </div>
                <div class ="movie-img-gradient"></div>
                
                <div class="movie-img-smallarea">
                    <img class="movie-smallimg" src="./img/bg-img/test-img.jpg" alt="Loading"> 
                </div>
            </div>
            <div class="movie-detail-text">
                <h2 style='font-family: "Pretendard-Light"'id ="">제목</h2>
                <p style='font-family: "Pretendard-Light";' id ="">장르입력 </br>
                        #띵작 #재밌다 #오예</br>
                        월드컵지수</p>
            </div>
    </div>
    
    
    <!-- 찜하기 좋아요 봤어요 버튼 Start -->
  
     <!-- ========== Loaders ========== -->
     <section class="elements-section-padding-50-0">
        
        <div class="container">
            <div class="oneMusic-buttons-area mb-30">
                        <a href="#" class="btn oneMusic-btn m-2">봤어요 ! </a>
                        <a href="#" class="btn oneMusic-btn m-2">찜하기 ♥ </a>
                        <a href="#" class="btn oneMusic-btn m-2">좋아요 ! </a>
                </div> 
           
    	</div>
    </section>
    <!-- 찜하기 좋아요 봤어요 버튼 end -->
    
       
    
    <!-- 플랫폼 Start -->
    <section class="elements-section-padding-0-165">
     	<div class="container">
     			<div class="col-12">
                    <div class="elements-section-padding-0-50">
                        <h4 style='color:#ffffff; font-family: "Pretendard-Light";'>여기에서 볼 수 있어요.</h4>
                    </div>
                 </div>
              <div class="col-12" >
                <div class='inner'>
                    <ul class='ul_pic'>
                        <li class='pic'>
                            <a href='https://www.netflix.com/kr/' target=_blank>
                                <img class='profile' title='Newflix' src='https://images.justwatch.com/icon/207360008/s100'>
                            </a>
                            <p>NEXFLIX</p>
                        </li>
                        <li class='pic'>
                            <a href='https://watcha.com/home' target=_blank>
                                <img class='profile' title='watcha' src='https://www.justwatch.com/images/icon/2538290/s100'>
                            </a>
                            <p>WATCHA</p>
                        </li>
                        <li class='pic'>
                            <a href='https://www.wavve.com/' target=_blank>
                                <img class='profile' title='Wavve' src='https://www.justwatch.com/images/icon/155655742/s100'>
                            </a>
                            <p>WAVVE</p>
                        </li>
                        <li class='pic'>
                            <a href='https://play.google.com/store/games?hl=en&gl=KR' target=_blank>
                                <img class='profile' title='Google Play Movie'
                                    src='https://www.justwatch.com/images/icon/169478387/s100'>
                            </a>
                            <p>GOOGLE PLAY</p>
                        </li>
                    </ul>
              </div>
          </div>
         </div>
     </section>    	 	
    <!-- 플랫폼 End -->
    
    <!-- 영상 -->
    <section class="elements-section-padding-0">
    		<div class="container">
    			<div class="col-12">
                    <div class="elements-title mb-30">
                        <h2 style='color:#ffffff; font-family: "Pretendard-Light";'>예고편 및 리뷰영상</h2>
                    </div>
                </div>

               <div class="col-12">
                    <div class="row">	

                        <!-- Single Service Area -->
                        <div class="col-12 col-md-6">
                            <div class="single-service-area d-flex flex-wrap mb-100">
                                
                                <div class="text">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/yFZh-Wqi7RI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>

                        <!-- Single Service Area -->
                        <div class="col-12 col-md-6">
                            <div class="single-service-area d-flex flex-wrap mb-100">
                                <div class="text">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/6NmLmVfPwhs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
             </div>
       </section>
    <!-- 영상 -->
    
    
    
    
    
    <!-- 월드컵 목록 Start -->
     <section class="elements-section-padding-0-50">
        <div class="container">
            <div class="col-12">
                    <div class="elements-title mb-30">
                        <h2 style="margin-left: -15px;">월드컵 게임</h2>
                    </div>
                </div>            

            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                       <!-- List 1 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           	 		<img src="img/bg-img/a1.jpg" alt="">
                            	</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5>Title</h5>
                                </a>
                            </div>
                        </div>

                        <!-- List 2 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a2.jpg" alt="">
                            	</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5>Title</h5>
                                </a>
                            </div>
                        </div>

                        <!-- List 3 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           			 <img src="img/bg-img/a3.jpg" alt="">
                           		</div>
                            </div>	 
                            <div class="album-info">
                                <a href="#">
                                    <h5>Title</h5>
                                </a>
                            </div>
                        </div>

                        <!-- List 4 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a4.jpg" alt="">
                            	</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5>Title</h5>
                                </a>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 월드컵 목록 End -->
    
    
    
    
    <!-- 버튼  -->
    
    <!-- ##### Breadcumb Area End ##### -->

	<!-- 리뷰 Start -->
    <!-- ##### Elements Area Start ##### -->
    <section class="elements-section-padding-0-50">
        <div class="container">
            <div class="row">

                <!-- ========== Progress Bars & Accordions ========== -->
                <div class="col-12">
                    <div class="elements-title mb-30">
                        <h2>모든 리뷰</h2>
                    </div>
                </div>

                <!-- ##### Accordians ##### -->
                <div class="reviewsection">
                    <div class="accordions mb-100" id="accordion" role="tablist" aria-multiselectable="true">
                        <!-- single accordian area -->
                        <div class="panel single-accordion">
                            <h6><a role="button" class="" aria-expanded="true" aria-controls="collapseOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Roori
                                    <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                    <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    </a></h6>
                            <div id="collapseOne" class="accordion-content collapse show">
                                <p>한마디로 재미없음. 머글들을 타겟층으로 했다기엔 액션이 매우 별로고, 그렇다고 마블 덕후들을 타겟층으로 했다기에는 캐릭터들의 관계성이 전혀 안 드러남. 그래서 전에는 어벤져스 어셈블하면 살짝 오글거리긴 해도 히어로물 뽕이 가득 찼었는데, 이번 영화에서는 이터널스가 모여있어도 별 감흥이 없음. 이터널스 지들끼리 치고 박고 싸울 때도 액션이 구리니까 볼 맛이 전혀 안 남. 심지어 롯데시네마만의 문제인 건지는 모르겠지만 영상 밝기도 전체적으로 어두우니 잠이 솔솔 옴. 진짜 마블 영화보면서 졸렵다는 생각 처음 해 봄. 이거 볼 바에 듄 n차 뛰는 게 백만배 나음.</p>
                            </div>
                        </div>
                        
                        <!-- single accordian area -->
                        <div class="panel single-accordion">
                            <h6>
                                <a role="button" class="collapsed" aria-expanded="true" aria-controls="collapseTwo" data-parent="#accordion" data-toggle="collapse" href="#collapseTwo">Myeong
                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                        </a>
                            </h6>
                            <div id="collapseTwo" class="accordion-content collapse">
                                <p>마블 세계관의 미래에 필수적인 영화이며, 새로운 컨셉을 제시한 것- 한국 팬들은 여러가지로 만족할 것아이언맨이나 어벤져스, 토르 컨셉에 익숙한 마블팬들은 좀 다르게 느껴질 수도 있으나, 장기적 빅픽쳐를 이미 그려놓고 가는 마블 입장에서 새로운 스타일을 제시해서 의미가 큼. 이것이 변혁이자 도전인 것이고 시대의 변화를 잘 반영한 것임. 이터널스가 어벤져스랑 비슷했다면 아마 식상함과 혁신부족인 아이폰이라 했었을거임. P.s. 어벤져스1도 이거저거 모아놔서 아이언맨만 못하다고 비판받던 시절이 있었는데, 마블의 큰 그림흐름 속에 결국 인정</p>
                            </div>
                        </div>
                        
                        <!-- single accordian area -->
                        <div class="panel single-accordion">
                            <h6>
                                <a role="button" aria-expanded="true" aria-controls="collapseThree" class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseThree">EunS
                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    </a>
                            </h6>
                            <div id="collapseThree" class="accordion-content collapse">
                                <p> 시사회로 봤습니다 영화자체가 기존 마블영화랑 다르게 천천히 진행되다보니 루즈하다고 느낄수 있지만 많은 케릭터다보니 한명한명을 매력적으로 구축하기위한 영화다보니 그런거같네요 그래서 명감독을 뽑은거 같기도 하고요 풍경도 아름답고 각각의 캐릭터들이 매력적이라 재밌었습니다</p>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
         </div>
               
	</section>
     <!-- 리뷰 End -->          
                
            

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="#"><img src="img/bg-img/logo.png" alt=""></a>

                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
                            <li><a href="Main.jsp">Home</a></li>
                            <li><a href="tournament.jsp">Games</a></li>
                            <li><a href="ContentInfo.jsp">Search</a></li>
                            <li><a href="Mypage.jsp">My</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>