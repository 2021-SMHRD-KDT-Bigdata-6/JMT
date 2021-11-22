<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

</head>

<body>
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
                        <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="event.html">Game</a></li>
                                    <li><a href="event.html">Search</a></li>
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="login.html" id="loginBtn">Login / Register</a>
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

    <!-- ##### MainBanner 1)광고 2)단일추천 ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-1.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Beyond Time <span>Beyond Time</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="#" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-2.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Colorlib Music <span>Colorlib Music</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="#" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <!-- 검색창 Start -->
    <section class ="section-padding-100">

		<div class="search-container">
			<p class="search-title">Search Box</p>
			<form action="movieDetail.jsp">
				<div class="search-box">
					<!-- 검색 name값을 content_id로 잡아야하나?.. -->
					<input class="search-input" type="text" placeholder="Search"
						name="sch">
					<button class="searchbtn" onClick="location.href='movieDetail.jsp'">
						<img class="btn-img" src="./img/bg-img/btn-img.png">
					</button>
				</div>
			</form>
		</div>


	</section>
    
    
    <!-- 검색창 End -->
    
    
    

    <!-- ##### Latest Albums Area1 Start ##### -->
    <!-- ##### 월드컵 목록  ##### -->
    
    <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p> This week! </p>
                        <h2>Top 20 Games</h2>
                    </div>
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
                                    <h5>The Cure</h5>
                                </a>
                                <p>Second Song</p>
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
                                    <h5>Sam Smith</h5>
                                </a>
                                <p>Underground</p>
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
                                    <h5>Will I am</h5>
                                </a>
                                <p>First</p>
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
                                    <h5>The Cure</h5>
                                </a>
                                <p>Second Song</p>
                            </div>
                        </div>

                        <!-- List 5 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           			 <img src="img/bg-img/a5.jpg" alt="">
                           		</div>
                            </div>	 
                            <div class="album-info">
                                <a href="#">
                                    <h5>DJ SMITH</h5>
                                </a>
                                <p>The Album</p>
                            </div>
                        </div>

                        <!-- List 6 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a6.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>

                        <!-- List 7 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           			 <img src="img/bg-img/a7.jpg" alt="">
                           		</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5>Beyonce</h5>
                                </a>
                                <p>Songs</p>
                            </div>
                        </div>
                        
                        <!-- List 8 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a8.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 9 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a9.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 10 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a10.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 11 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a11.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 12 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a12.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 13 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a13.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 14 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a14.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 15 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a15.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 나열 list 추가하고 싶으면 lastest Albums Area1 End 섹션 추가하기! -->
    <!-- ##### 월드컵 목록  ##### -->
    <!-- ##### Latest Albums Area1 End ##### -->

    <!-- ##### 22 Start ##### -->
    <!-- #####  인기 컨텐츠 hot Contents  ##### -->
    
    <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p> in JMTBOX </p>
                        <h2>Hot Contents</h2>
                    </div>
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
                                    <h5>The Cure</h5>
                                </a>
                                <p>Second Song</p>
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
                                    <h5>Sam Smith</h5>
                                </a>
                                <p>Underground</p>
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
                                    <h5>Will I am</h5>
                                </a>
                                <p>First</p>
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
                                    <h5>The Cure</h5>
                                </a>
                                <p>Second Song</p>
                            </div>
                        </div>

                        <!-- List 5 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           			 <img src="img/bg-img/a5.jpg" alt="">
                           		</div>
                            </div>	 
                            <div class="album-info">
                                <a href="#">
                                    <h5>DJ SMITH</h5>
                                </a>
                                <p>The Album</p>
                            </div>
                        </div>

                        <!-- List 6 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a6.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>

                        <!-- List 7 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           			 <img src="img/bg-img/a7.jpg" alt="">
                           		</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5>Beyonce</h5>
                                </a>
                                <p>Songs</p>
                            </div>
                        </div>
                        
                        <!-- List 8 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a8.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 9 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a9.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 10 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a10.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 11 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a11.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 12 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a12.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 13 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a13.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 14 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a14.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 15 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a15.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 나열 list 추가하고 싶으면 lastest Albums Area1 End 섹션 추가하기! -->
    <!-- ##### 인기 컨텐츠 hot Contents  ##### -->
    <!-- ##### Latest Albums Area1 End ##### -->
   	
   	 <!-- ##### 33 Start ##### -->
    <!-- #####  새로운 컨텐츠 new Contents  ##### -->
    
    <section class="latest-albums-area section-padding-100-end">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p> What's new? </p>
                        <h2>New Contents</h2>
                    </div>
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
                                    <h5>The Cure</h5>
                                </a>
                                <p>Second Song</p>
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
                                    <h5>Sam Smith</h5>
                                </a>
                                <p>Underground</p>
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
                                    <h5>Will I am</h5>
                                </a>
                                <p>First</p>
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
                                    <h5>The Cure</h5>
                                </a>
                                <p>Second Song</p>
                            </div>
                        </div>

                        <!-- List 5 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           			 <img src="img/bg-img/a5.jpg" alt="">
                           		</div>
                            </div>	 
                            <div class="album-info">
                                <a href="#">
                                    <h5>DJ SMITH</h5>
                                </a>
                                <p>The Album</p>
                            </div>
                        </div>

                        <!-- List 6 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a6.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>

                        <!-- List 7 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           			 <img src="img/bg-img/a7.jpg" alt="">
                           		</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5>Beyonce</h5>
                                </a>
                                <p>Songs</p>
                            </div>
                        </div>
                        
                        <!-- List 8 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a8.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 9 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a9.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 10 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a10.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 11 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a11.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 12 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a12.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 13 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a13.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 14 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a14.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        <!-- List 15 -->
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                            		<img src="img/bg-img/a15.jpg" alt="">
                            	</div>
                            </div>	
                            <div class="album-info">
                                <a href="#">
                                    <h5>The Ustopable</h5>
                                </a>
                                <p>Unplugged</p>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 나열 list 추가하고 싶으면 lastest Albums Area1 End 섹션 추가하기! -->
    <!-- ##### 새로운 컨텐츠 new contents  ##### -->
    <!-- ##### Latest Albums Area1 End ##### -->
   	
   
    <!-- ##### Featured Artist Area2 Start ##### -->
    <!-- 닥치고 이거나봐! -->
    <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(img/bg-img/bg-4.jpg);">
        <div class="container">
            <div class="row align-items-end">
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="featured-artist-thumb">
                        <img src="img/bg-img/fa.jpg" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-7 col-lg-8">
                    <div class="featured-artist-content">
                        <!-- Section Heading -->
                        <div class="section-heading white text-left mb-30">
                            <p>See what’s new</p>
                            <h2>Buy What’s New</h2>
                        </div>
                        <p>Nam tristique ex vel magna tincidunt, ut porta nisl finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo id sem aliquam fringilla nec non lacus. Suspendisse eget lobortis nisi, ac cursus odio. Vivamus nibh velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit non elit pulvinar pellentesque et non eros.</p>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. Main Hit Song</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Featured Artist Area End ##### -->

	
    
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="#"><img src="img/core-img/logo.png" alt=""></a>
                    <p class="copywrite-text"><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Albums</a></li>
                            <li><a href="#">Events</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Contact</a></li>
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