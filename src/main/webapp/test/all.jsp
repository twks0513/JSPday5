<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dao" class="com.test.TestDAO"></jsp:useBean>

<table border="1">
	<tr>
		<th>아이디</th><th>비밀번호</th><th>이름</th>
	</tr>
	<c:forEach var="dto" items="${dao.all() }">
		<tr>
			<td>${dto.id}</td>
			<td>${dto.pwd}</td>
			<td>${dto.name}</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="3"><a href="#">이동</a></td>
	</tr>
</table>
</body>
</html>