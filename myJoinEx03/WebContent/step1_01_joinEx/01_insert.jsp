<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>이페이지는 회원가입을 위한 페이지입니다. </h2>
	<form method="post" action="02_insertPro.jsp">
		아이디 : <input type="text" name="id" id="id"><br>
		비밀번호 : <input type="password" name="passwd" id="passwd"><br>
		닉네임 : <input type="text" name="nickname" id="nickname"><br>
		<input type="submit" value="회원가입">
		<input type="reset" value="다시쓰기">
	</form>

</body>
</html>