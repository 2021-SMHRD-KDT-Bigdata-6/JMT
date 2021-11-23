<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>My Wish Contents List</title>

<!-- Favicon -->
<link rel="icon" href="../img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="../style.css">
<style>
.row {
	display: flex;
	justify-content: center;
}

.single-album {
	width: 20% !important;
	height: 40% !important;
	margin-right: 2% !important;
}
</style>

</head>
<body>
<%
MemberVO vo = (MemberVO)session.getAttribute("member");

%>
	<section class="latest-albums-area section-padding-100-end">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading style-2">
						<p>What's new?</p>

						<h2>
							<%=vo.getNick()%>님의 WISH CONTENTS
						</h2>
					</div>
				</div>
			</div>

			<div class="row">

				

			</div>
		</div>
		</div>
	</section>


	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="../js/jquery/jquery-3.6.0.js"></script>
	<!-- Popper js -->
	<script src="../js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="../js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="../js/active.js"></script>
	<script>
	<세션>
	
	
	let content = '\
		<div class="single-album">\
			<div class="single-album-container">\
				<div class="img-center">\
					<img src="../img/bg-img/a1.jpg" alt="">\
				</div>\
			</div>\
			<div class="album-info">\
				<a href="#">\
					<h5>The Cure</h5>\
				</a>\
				<p>Second Song</p>\
			</div>\
		</div>'
		
	
		$('.row').append(content);
	
	</script>

</body>
</html>