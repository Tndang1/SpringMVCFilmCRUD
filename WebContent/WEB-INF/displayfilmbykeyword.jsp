<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Films by keyword</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<br>
<div class= "container-sm">
<div style="text-align:center">

<a href = "index.do">RETURN TO HOMEPAGE</a>
</div>
<br>
<br>

	<!-- display film -->
	<c:choose>
		<c:when test="${! empty filmList}">
		<h3 style="font-family: Avenir-light; text-align: center; font-size: 30px">FILM INFO</h3>
		<br>
			<ul>
				<c:forEach items="${filmList}" var="film">
					<li><p style="font-family: Avenir-light;"> ID# ${film.id} ${film.title}</p></li>
				<li><p style="font-family: Avenir-light;"> Rated: ${film.rating} : ${film.description}</p></li>
				<li><p style="font-family: Avenir-light;"> Released: ${film.releaseYear} ${film.language} Length: ${film.length} minutes</p></li>
				<li><p style="font-family: Avenir-light;"> Rental Duration: ${film.rentalDuration} days Rental Rate: $${film.rentalRate} Replacement Cost $${film.replacementCost}</p></li>
				<li><p style="font-family: Avenir-light;"> Special Features: ${film.specialFeatures}</p></li>
			
				<div style="text-align: center">
						<form action="GetFilmId.do" method="GET">
						<button name="filmID" type="submit"  class ="btn btn-light" value="${film.id}">Examine Film</button>
						</form>
						</div>
				<br>
				<br>
				
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>