<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 

	<%-- response.sendRedirect("fail/loginfail.jsp?msg=fail"); --%>
	${param.msg}<br>
	${requestScope.msg}<br>
	로그인 실패 하셨습니다. 재시도 부탁드려요~<br><br>
	<a href="../login.html">login 화면으로 이동하기</a>
	
</body>
</html>