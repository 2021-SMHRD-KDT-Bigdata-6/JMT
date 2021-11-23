<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	MemberVO vo = (MemberVO)session.getAttribute("member");
	
	%>
	<a href='myWishContents.jsp'>내가 찜한 작품</a><BR>
	<a href='mySeenContents.jsp'>내가 본 작품</a><BR>
	<a href='myLikeContents.jsp'>내가 좋아요한 작품</a><BR>
	<a href='myShareContents.jsp'>내가 공유한 작품</a><BR>
	<a href='myReviews.jsp'>내가 쓴 리뷰</a><BR>
	
	<script src = '../js/jquery/jquery-3.6.0.js'></script>
	<script>
		
	
	</script>
	
	
	
</body>
</html>