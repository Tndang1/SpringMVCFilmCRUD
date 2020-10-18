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

<!-- CONFIRM FILM ADDED -->
	<c:choose>
    <c:when test="${filmDeleted}">
    <p> The film was deleted.<p>
     </c:when>
    <c:otherwise>
      <p>The film was not deleted.</p>
    </c:otherwise>
  </c:choose>