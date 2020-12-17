<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
	<form method="post" action="04_deletePro.jsp">
		아이디 : <input type="text" name="id" id="id"><br>
		비밀번호 : <input type="password" name="passwd" id="passwd"><br>
		<input type="submit" value="회원탈퇴">
		<input type="reset" value="다시쓰기">
	</form>

</body>
</html>