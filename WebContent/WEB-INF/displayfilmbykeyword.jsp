<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Films by keyword</title>
</head>
<body>
<a href = "index.do">Return to homepage</a>
	<!-- display film -->
	<c:choose>
		<c:when test="${! empty filmList}">
		<h3>Film Info</h3>
			<ul>
				<c:forEach items="${filmList}" var="film">
					<li>ID# ${film.id} ${film.title}
				<li>Rated: ${film.rating} : ${film.description}</li>
				<li>Released: ${film.releaseYear} ${film.language} Length: ${film.length} minutes</li>
				<li>Rental Duration: ${film.rentalDuration} days Rental Rate: $${film.rentalRate} Replacement Cost $${film.replacementCost}</li>
				<li>Special Features: ${film.specialFeatures}</li>
					<li>
						<form action="GetFilmId.do" method="GET">
						<button name="filmID" type="submit" value="${film.id}">Examine Film</button>
						</form>
				<br>
					</li>
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>

</body>
</html>