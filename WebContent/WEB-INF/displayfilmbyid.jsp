<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Film Info</title>
</head>
<body>
<a href = "index.do">Return to homepage</a>
	<!-- Display  Film  -->
	<c:choose>
		<c:when test="${! empty film}">
			<h3>Film Info</h3>
			<ul>
				<li>ID# ${film.id} ${film.title} </li>
				<li>Category: ${film.category}</li>
				<li>Rated: ${film.rating} : ${film.description}</li>
				<li>Released: ${film.releaseYear} ${film.language} Length: ${film.length} minutes</li>
				<li>Rental Duration: ${film.rentalDuration} days Rental Rate: $${film.rentalRate} Replacement Cost $${film.replacementCost}</li>
				<li>Special Features: ${film.specialFeatures}</li>
				<li>Featuring: 
				<c:forEach items="${actorList}" var="actor">
					*${actor.fullName}*
				</c:forEach>
				</li>
			</ul>
		<%-- </c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose> --%>

	<!-- Delete this Film  -->

	<p>
	<form action="DeleteFilm.do" method="GET">
		<button name="deleteFilm" type="submit" value="${film.id}">Delete
			Film</button>
	</form>

	<!--Update this Film -->

	<p>
	<h2>Edit film</h2>
	<p>
	<form action="UpdateFilm.do" method="GET">

		<input id="id" type="hidden" name="id" value="${film.id}" />
			
		<label for="title"> Change title from <b><u>${film.title}</u></b> to</label>
		<input id="title" type="text" name="title" value="${film.title}" required/>
<br>
		<label for="description"> Change description from <b><u>${film.description}</u></b> to</label>
		<input id="description" size="100" type="text" name="description" value="${film.description}" required/>
<br>
		<label for="releaseYear">Change release year from <b><u>${film.releaseYear}</u></b> to</label>
		<input id="releaseYear" type="number" min="1901" max="2155" name="releaseYear" value="${film.releaseYear}" required/>
<br>
		<label for="languageId"> Change language from <b><u>${film.language}</u></b> to </label>
		<select name="languageId" id="languageId">
			<option value="${film.languageId}" selected>${film.language}</option>
			<option value="1">English</option>
			<option value="2">Italian</option>
			<option value="3">Japanese</option>
			<option value="4">Mandarin</option>
			<option value="5">French</option>
			<option value="6">German</option>
		</select>
<!-- 			<input id="languageId" type="radio" name="languageId" value=1 required="required"/>English
			<input id="languageId" type="radio" name="languageId" value=2 required="required"/>Italian
			<input id="languageId" type="radio" name="languageId" value=3 required="required"/>Japanese
			<input id="languageId" type="radio" name="languageId" value=4 required="required"/>Mandarin
			<input id="languageId" type="radio" name="languageId" value=5 required="required"/>French
			<input id="languageId" type="radio" name="languageId" value=6 required="required"/>German -->
<br>
		<label for="rentalDuration"> Change rental duration from <b><u>${film.rentalDuration} days</u></b> to</label>
		<input id="rentalDuration" type="number" name="rentalDuration" value="${film.rentalDuration}" required/>
<br>
		<label for="rentalRate"> Change rental rate from <b><u>$${film.rentalRate}</u></b> to</label>
		<input id="rentalRate" type="number" step="0.01" name="rentalRate" value="${film.rentalRate}" required/>
<br>
		<label for="length"> Change length from <b><u>${film.length} minutes</u></b> to</label>
		<input id="length" type="number" name="length" value="${film.length}" required/>
<br>
		<label for="replacementCost"> Change replacement cost from <b><u>$${film.replacementCost}</u></b> to</label>
		<input id="replacementCost" type="number" step="0.01" name="replacementCost" value="${film.replacementCost}" required/>
<br>
		<label for="rating">Change rating from <b><u>${film.rating}</u></b> to</label>
		<select name="rating" id="rating">
			<option value="${film.rating}" selected>${film.rating}</option>
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="PG13">PG-13</option>
			<option value="R">R</option>
			<option value="NC17">NC-17</option>
		</select>
		
		
<!-- 			<input id ="rating" type="radio" name="rating" value= 1 required=required/> G
			<input id ="rating" type="radio" name="rating" value= 2 required=required/> PG
			<input id ="rating" type="radio" name="rating" value= 3 required=required/> PG-13
			<input id ="rating" type="radio" name="rating" value= 4 required=required/> R
			<input id ="rating" type="radio" name="rating" value= 5 required=required/> NC-17 -->
	<br> 
			
			
		<label for="specialFeatures">Change special features from <b><u>${film.specialFeatures}</u></b> to</label> 
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "0" /> None
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "trailers" /> Trailers
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "commentaries" /> Commentaries
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "deleted scenes" /> Deleted Scenes
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "behind the scenes" /> Behind the Scenes
	<br>
			<input type="submit" value="Update Film" />
			<input type="reset">

	</form>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>