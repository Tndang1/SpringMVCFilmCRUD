<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Confirm Film updated -->

	<c:choose>
    <c:when test="${filmUpdated}">
    <p> Your film had been updated<p>
     </c:when>
    <c:otherwise>
      <p>Your film was not updated</p>
    </c:otherwise>
  </c:choose>
  
  
</body>
</html>