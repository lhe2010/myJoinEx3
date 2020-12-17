<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 프로세스</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd= request.getParameter("passwd");
	    String nickname = request.getParameter("nickname");
	    
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    
	    try {
	    	String jdbcUrl = "jdbc:mysql://localhost:3306/my_join_ex3?serverTimezone=UTC";
	    	String dbId = "root";
	    	String dbPw = "1234";
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
	    	
	    	String sql = "INSERT INTO MEMBER VALUES (?,?,?,NOW())";
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1, id);
	    	pstmt.setString(2, passwd);
	    	pstmt.setString(3, nickname);
	    	pstmt.executeUpdate();
	%>
	    	<script>
	    		alert("환영합니다.");
	    		location.href = "00_main.jsp";
	    	</script>
	 <%
	    } catch (Exception e) {
	    	e.printStackTrace();
	    } finally {
	    	pstmt.close();
	    	conn.close();
	    }
	%>

</body>
</html>