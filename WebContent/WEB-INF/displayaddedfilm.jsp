<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Added a film</title>
</head>
<body>
<body> 
<a href = "index.do">Return to homepage</a>
<!-- CONFIRM FILM ADDED -->
	<c:choose>
    <c:when test="${filmAdded.id > 0}">
    <p> Your film has been added<p>
    <p>${filmAdded}</p>
    <form action="GetFilmId.do" method="GET">
	<button name="filmID" type="submit" value="${filmAdded.id}">Examine Film</button>
	</form>
    
     </c:when>
    <c:otherwise>
      <p>Your film was not added</p>
    </c:otherwise>
  </c:choose>

<br>
<br>


</body>
</html>