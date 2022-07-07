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
	<jsp:useBean id="dao" class="com.test.TestDAO"/>
	<c:set var="dto" value="${dao.getUser(param.id) }"/>
	이름 : ${dto.name }<br>
	아이디 : ${dto.id }<br>
	비밀번호 : ${dto.pwd }<br>

</body>
</html>