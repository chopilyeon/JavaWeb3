<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/Misson-Web/resources/css/layout.css">
<link rel="stylesheet" href="/Misson-Web/resources/css/table.css">
<script src="/Misson-Web/resources/js/myjs.js"></script>
<script>

/*이거 resources에 넣어놈.   */
/* 	function isNull(obj,msg){
		if(obj.value==''){
			alert(msg)
			obj.focus()
			return true
		}
		return false
	} */

	function checkForm(){
		
		let f= document.loginForm
		
		//isNull(f.id)	
		//isNull(f.password)
	
		
		//논리연산자 or 써도 되는데 그냥 한번 더 씀 
		if(isNull(f.id,"아이디를 입력하세요")){
			return false
		}
		
		if(isNull(f.password,"패스워드를 입력하세요")){
			return false
			
			
		}
		
		
		
		// 이렇게 묻고 싶음
		
		/*
		
		if(f.id.value==''){
			alert("아이디를 입력하세요")
			f.id.focus()
			return false;
			
		}
		if(f.password==''){
			alert('아이디를 입력하세요')
			f.password.focus()
			return false;
		}
		*/
	
		return true;
		
		
		
	}


</script>




</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
			<hr>
			<h2>로그인 화면</h2>
			<hr>
			<br>
			<form action="loginProcess.jsp" method="post" onsubmit="return checkForm()" name="loginForm">
				<table style="width:40%">
					<tr>
						<th>ID</th>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<th>PASSWORD</th>
						<td><input type="password" name="password"></td>
					</tr>
					
				
				
				
				</table>
				<input type="submit" value="로그인">
			
			
			
			</form>
			
			
			
		</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
		footer부분
		<!--include xml forward 에서는 root의 의미는 밑에는 localhost:9999/mission-Web임 상대경로를 못쓰는 이유?  -->
		<!--원래는 localhost:9999임   -->
		
	</footer>
</body>
</html>	
	