<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Misson-Web/resources/css/layout.css">
<link rel="stylesheet" href="/Misson-Web/resources/css/table.css">

</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		section부분
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
		footer부분
		<!--include xml forward 에서는 root의 의미는 밑에는 localhost:9999/mission-Web임 상대경로를 못쓰는 이유?  -->
		<!--원래는 localhost:9999임   -->
		
	</footer>
	
	

</body>
</html>