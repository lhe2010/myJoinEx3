<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정페이지</title>
</head>
<body>
	<h2>이페이지는 회원정보수정을 위한 페이지입니다. </h2>
	<form method="post" action="06_updatePro.jsp">
		아이디 : <input type="text" name="id" id="id"><br>
		비밀번호 : <input type="password" name="passwd" id="passwd"><br>
		새닉네임 : <input type="text" name="newnickname" id="newnickname"><br>
		<input type="submit" value="수정">
		<input type="reset" value="다시쓰기">
	</form>

</body>
</html>