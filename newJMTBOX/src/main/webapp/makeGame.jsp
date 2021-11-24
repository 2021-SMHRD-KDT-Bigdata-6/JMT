<%@page import="java.util.ArrayList"%>
<%@page import="model.ContentDAO"%>
<%@page import="model.ContentVO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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
	/*��ư css*/
	.make-game{
	display: flex;
    justify-content: center;
    }
	.make-game #make-game-button{
	
	display:inline-block;
	border: 2px solid black;
	background-color:transparent;
	font-size:17px;
	width:250px;
	height:60px;
	
}
	.make-game #make-game-button:hover{
		background-color:#6e6e6e;
	}
	
	</style>
</head>
<body>
<%
MemberVO vo = (MemberVO)session.getAttribute("member");

	//hot content ==> �˻��ϸ� �ٲٴ°ɷ� �ٲ�ߵ� �̹��� �������� Ȯ�ο�!!
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	ContentVO cvo = new ContentVO();
	ContentDAO dao = new ContentDAO();
	ArrayList<ContentVO> hlist = null;
	hlist = dao.showHotContents();
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
                        <a href="main.jsp.html" class="nav-brand"><img src="img/bg-img/logo.png" alt=""></a>

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
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    
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
	<!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>by you</p>
            <h2>Make Games</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
	
	<!-- � start-->
	<section class="section-padding-100">
		<div class="make-section">
			<div class="make-font">
			<h2>��� ������ ����� �ǰ���?</h2>
			</div>
			<div class="make-option">
				<select>
					<option><p>����</p></option>
					<option><p>4��</p></option>
					<option><p>8��</p></option>
					<option><p>16��</p></option>
					<option><p>32��</p></option>
				</select>
			</div>
		</div>
	</section>
	<!-- � end -->

	
	
	
	<!-- ��ʸ�Ʈ ���� start -->
	<section class="section-padding-100">
		<div class="make-tournament-section">
			<div class="make-font">
				<h2>��Ÿ��� ���� �̸��� �ۼ����ּ���!</h2>
			</div>
			<div class="make-game-name">

				<input type="text" placeholder="����">
			
			</div>
		
		</div>
	
	
	</section>
	<!-- ��ʸ�Ʈ ���� end -->
	
	<!-- �˻�â -->
	<!-- �˻�â �ٿ����� -->
	<section class ="section-padding-100">

		<div class="search-container2">
				<div class="make-font">
					<h2>��ǰ �˻�</h2>
				</div>
				<div class="search-box-make">
					<!-- �˻� name���� content_id�� ��ƾ��ϳ�?.. -->
					<input class="search" type="text" placeholder="��ǰ���� �� �±� �Է�"
						name="search">
					
				</div>
			
		</div>


	</section>
	<!-- �츮��ǰ�� �ߴ� ĭ (���� latest-album���������;ߵǳ�? -->
	<section class="section-padding-100">
		<!-- ī�װ� -->
		<div class="make-font">
			<h2>���� ��ǰ</h2>
		</div>
		<div class="content-list-container">
		
			<div class="content-list-section">
				<%
				for (int i = 0; i < 10; i++) {
				%>
				
				<div class="single-album2" >
					<div class="single-album-container2">
						<div class="img-center2">
							<img src="<%=hlist.get(i).getC_thumbnail() %>" alt="">
						</div>
					</div>
					
					<div class="album-info2">
					<a href="#">
						<p><%=hlist.get(i).getTitle() %></p>
					</a>
					</div>
					<input type="checkbox" id="user-choice">
				</div>
				
				<%
				}
				%>
			</div>
			
		</div>

	</section>
	
	<!-- ���� ���ε� ��ư -->
	<section class ="section-padding-100-70">
 		<div class="make-game">
 				<input id="make-game-button" type="button" value="MAKE GAME" onclick="������������ٰ�alertâ ��¾?=>�׷���tournament.jsp��">
 		</div>

	
	</section>
	
	
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
    <script>
    	const Searching = Search.prototype;
    	
    	function Search(){
    		this.keyword = document.querySelector('input[name = "search"]');
    		
    	}
    </script>


</body>
</html>