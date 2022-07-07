<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:useBean id="dao" class="com.test.TestDAO"/> <%-- == TestDAO dao = new TestDAO(); --%>
	<c:set var="result" value="${dao.chk(param.id,param.pwd) }"/>
	
	<c:choose>
		<c:when test="${result==0 }">
			<script type="text/javascript">
				alert("로그인성공")
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('로그인실패')
			</script>
		</c:otherwise>
	</c:choose>

	<h3>사용자 목록 가져오기</h3>
	<a href="get_user.jsp?id=${param.id }">목록보기</a>
	<h3>모든 목록</h3>
	<a href="all.jsp">모든 내용 보기</a>

	<%int re = dao.chk(request.getParameter("id"),request.getParameter("pwd"));
	
		if(re==0){
			//성공
		}else{
			//실패
		}
	%>
</body>
</html>