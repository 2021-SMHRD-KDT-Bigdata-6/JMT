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
	vo.getId();
	%>
	<a href='myWishContents.jsp?id=<%=vo.getId()%>&which=Wish'>내가 찜한 작품</a>
	
	<script src = '../js/jquery/jquery-3.6.0.js'></script>
	<script>
		
	
	</script>
	
	
	
</body>
</html>