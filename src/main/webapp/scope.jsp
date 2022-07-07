<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("name","page");
	request.setAttribute("name","request");
	session.setAttribute("name","session");
	application.setAttribute("name", "application");	
%>
	name : ${name }<br>
	page : ${pageScope.name }<br>
	request : ${requestsScope.name}<br>
	session : ${sessionScope.name }<br>
	application : ${applicationScope.name }<br>
	<a href="re_scope.jsp">이동</a>

</body>
</html>