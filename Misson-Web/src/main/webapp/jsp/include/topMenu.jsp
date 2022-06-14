<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<table border="1" style="width:100%">
	<tr>
		<!--2개의 행을 합병하겠다는 의미임  -->
		<td rowspan="2" >
			<a href="/Misson-Web">
			<img src="/Misson-Web/resources/images/symbol.jpg" style="height:45px; width:150px;">
			</a>
		</td>
		<td align="right">
		즐겨찾기
		<c:if test="${not empty userVO}">
			[${userVO.name}님이 접속하였습니다]
		</c:if>
		<!--로그인도 안되었는데 나오게 할 수 없다!   -->
		</td>
	</tr>
	<tr>
		<td>
			<nav>
				<c:if test="${userVO.type eq 'S'}">
				회원관리 |
				</c:if>
				<a href="/Misson-Web/jsp/board/list.jsp"> 게시판 </a> | 
			<c:choose>
			<c:when test="${ empty userVO }">
				회원가입 |
				<a href="/Misson-Web/jsp/login/login.jsp"> 로그인 </a>| 
			</c:when>
			<c:otherwise>
				마이페이지 |
				<a href="/Misson-Web/jsp/login/logout.jsp"> 로그아웃</a>
			</c:otherwise>
			</c:choose>
			</nav>
		</td>
	</tr>


</table>