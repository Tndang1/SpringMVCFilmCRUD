<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Deleted</title>
</head>
<body>
<body> 

<<<<<<< HEAD
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
=======
<!-- CONFIRM FILM ADDED -->
	<c:choose>
    <c:when test="${filmDeleted}">
    <p> The film was deleted.<p>
     </c:when>
    <c:otherwise>
      <p>The film was not deleted.</p>
    </c:otherwise>
  </c:choose>
>>>>>>> 9586caab52d6e0855d9c0aeb27ec4803be6348be
