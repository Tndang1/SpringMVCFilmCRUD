<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--Confirm Delete on Film -->
	<c:choose>
    <c:when test="${filmDeleted}">
    <p> Your film had been deleted<p>
     </c:when>
    <c:otherwise>
      <p>Your film was not deleted</p>
    </c:otherwise>
  </c:choose>
  
</body>
</html>