<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체회원조회</title>
</head>
<body>
	<h2>전체 회원의 리스트를 받아오는 중</h2>
	<table border="1">
		<tr>
			<th>id</th>
			<th>passwd</th>
			<th>nickname</th>
			<th>joindate</th>
		</tr>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/my_join_ex3?serverTimezone=UTC";
			String dbId = "root";
			String dbPw = "1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			String sql = "SELECT * FROM MEMBER";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String rId = rs.getString("id");
				String rPw = rs.getString("passwd");
				String rName = rs.getString("nickname");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String rJoinDate = sdf.format(rs.getDate("joindate"));
	%>
			<tr>
				<td><%= rId %></td>
				<td><%= rPw %></td>
				<td><%= rName %></td>
				<td><%= rJoinDate %></td>
			</tr>
	<%
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			pstmt.close();
			conn.close();
		}
	%>
	</table>

</body>
</html>