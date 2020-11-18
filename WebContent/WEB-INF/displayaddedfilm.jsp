<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Added a film</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<div class= "container-sm">
<div style="text-align: center">
<br>
<br>
<br>
<a href = "index.do">RETURN TO HOMEPAGE</a>
<br>
<br>
<br>
<!-- CONFIRM FILM ADDED -->
	<c:choose>
    <c:when test="${filmAdded.id > 0}">
    <p style="font-family: Avenir-light; font-size:28px"> YOUR FILM HAS BEEN ADDED<p>
    <p>${filmAdded}</p>
    <form action="GetFilmId.do" method="GET">
	<button name="filmID" type="submit" class ="btn btn-light" value="${filmAdded.id}">Examine Film</button>
	</form>
    
     </c:when>
    <c:otherwise>
      <p style="font-family: Avenir-light">YOUR FILM WAS NOT ADDED</p>
    </c:otherwise>
  </c:choose>

<br>
<br>
</div>

</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</body>
</html>