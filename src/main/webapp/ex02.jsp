<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	ex02.jsp<br>
<c:choose>
	<c:when test="${1==1 }">
		<h1>1111같다</h1>
	</c:when>
	<c:when test="${2 ==2 }">
		<h1>222</h1>
	</c:when>
	<c:otherwise>
		<h1>else 문장실행</h1>
	</c:otherwise>
</c:choose>


<hr>
<c:remove var="abc" scope="session"/>
<c:set var="abc" value="안녕" scope="session" />
<a href="ex01.jsp">ex01이동</a>


<hr>


<c:import url="test/test.jsp"/>


<hr>

<fmt:requestEncoding value="utf-8"/>
	${param.id }<br>
	${param.pwd }<br>

<hr>
	<%
	ArrayList<String> arr = new ArrayList<>();
	arr.add("1111");	
	arr.add("2222");	
	arr.add("3333");	

	%>
	<c:set var="array" value="<%=arr %>"/>
	<c:forEach var="ar" items="${array }">
		${ar }<br>
	</c:forEach>	
	
<hr>
	<c:forEach begin="10" end="15" step="2" var="n">
		n:${n }<br>
	</c:forEach>
<hr>
	<c:set var="t" value="그래"/>
	<c:if test="${t=='그래123' }">
		<script type="text/javascript">
			alert('${t}'+'같다')
		</script>
	</c:if>
<hr>
	<c:set var="num" value="안녕"/>
	${num }
<hr>
<c:out value="안녕하세요" /> <br>
${"안녕하세요" }

</body>
</html>