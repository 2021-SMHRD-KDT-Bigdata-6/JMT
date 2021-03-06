<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <title>One Music - Modern Music HTML5 Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
  <button id="btn">test</button>
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
                        <a href="index.jsp" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="albums-store.html">Albums</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="index.jsp">Home</a></li>
                                            <li><a href="albums-store.html">Albums</a></li>
                                            <li><a href="event.html">Events</a></li>
                                            <li><a href="blog.html">News</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="elements.html">Elements</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="#">Dropdown</a>
                                                <ul class="dropdown">
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a>
                                                        <ul class="dropdown">
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="event.html">Events</a></li>
                                    <li><a href="blog.html">News</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="login.jsp" id="loginBtn">Login / </a> 
                                        <a href="Register.jsp" id="loginBtn">Register</a>
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

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what???s new</p>
            <h2>Register</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="login-content">
                        <!-- Login Form -->
                        <div class="login-form">
                            <form id="regi-form" action="RegisterService" method="post">
                                <div class="form-group">
                                	<label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter E-mail" name="id">
                                    <small id="emailHelp" class="form-text"><i class="fa fa-lock mr-2"></i></small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputNick1">Nick name</label>
                                    <input type="text" class="form-control" id="exampleInputNick1" placeholder="nickname" name="nick">
                                    <small id="nickHelp" class="form-text"><i class="fa fa-lock mr-2"></i></small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control password" id="exampleInputPassword1" placeholder="Password" name="pw" onchange="check_pw()">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword2">Password Check</label>
                                    <input type="password" class="form-control password" id="exampleCheckPassword1" placeholder="Password" name="pwCheck" onchange="check_pw()">
                                    <small id="pwcheck" class="form-text"><i class="fa fa-lock mr-2"></i></small>
                                </div>
                                <button id="regi" type="submit" class="btn oneMusic-btn mt-30">Join</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Login Area End ##### -->

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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="album-store.html">Albums</a></li>
                            <li><a href="event.html">Events</a></li>
                            <li><a href="blog.html">News</a></li>
                            <li><a href="contact.html">Contact</a></li>
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
    <!-- id, nick Check -->
    <script src="js/register/check.js"></script>
    <script type="text/javascript">
 	let email=0;
    let nick=0;
    let pw=0;   
    $('#exampleInputEmail1').focusout(function(){
			let exampleInputEmail1 = $('#exampleInputEmail1').val()
			$.ajax({
				url : "CheckId",
				type : "post",
				data : {"exampleInputEmail1":exampleInputEmail1},
				dataType: "json",
				success : function(data){
					result = data
					console.log(result)
					if(result == 0){
						$('#emailHelp').css('color','red')
						$('#emailHelp').text('?????? ???????????? ????????? ?????????.')
						email = 0
					}else{
						$('#emailHelp').css('color','green')
						$('#emailHelp').text('??????????????? ????????? ?????????.')
						email = 1
					}
				},
				error:function(){
					console.log('??????????????????')
				}
			})
		})
	
		//????????? ????????????
	$('#exampleInputNick1').focusout(function(){
		let exampleInputNick1 = $('#exampleInputNick1').val()
		$.ajax({
			url:"CheckNick",
			type : "post",
			data : {"exampleInputNick1":exampleInputNick1},
			dataType : "json",
			success : function(data){
				result2 = data
				if(result2 == 0){
					$('#nickHelp').css('color','red')
					$('#nickHelp').text('?????? ???????????? ????????? ?????????.')
					nick = 0
				}else{
					$('#nickHelp').css('color','green')
					$('#nickHelp').text('??????????????? ??????????????????')
					nick = 1;
				}
			}
		})
	})
  	//???????????? ??????
	function check_pw(){
		let pw = document.getElementById('exampleInputPassword1').value
		let pw2 = document.getElementById('exampleCheckPassword1').value
		if(pw!=''&&pw2!=''){
			if(pw==pw2){
				document.getElementById('pwcheck').innerHTML='??????????????? ???????????????'
				document.getElementById('pwcheck').style.color='green'
				pw = 1;
			}else{
				document.getElementById('pwcheck').innerHTML='??????????????? ???????????? ????????????'
				document.getElementById('pwcheck').style.color='red'
				pw = 0;
			}
			return pw
		}
	}
    
    $("#regi").on("click",function(e){
    	
    	pw = check_pw()
    	if(email==1&&nick==1&&pw==1){
    		alert("???????????? ??????")
    	}else{
    		alert("?????? ??????")
    		e.preventDefault()
    	}
    	
    });
    </script>
</body>

</html>