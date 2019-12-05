<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table border="1">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>닉네임</th>
			<th>생성날짜</th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.uiNum}</td>
				<td>${user.uiId}</td>
				<td>${user.uiName}</td>
				<td>${user.credat}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>