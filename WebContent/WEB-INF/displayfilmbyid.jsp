<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Film Info</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<div class= "container-sm">
<div style="text-align:center">
<br>
<br>
<br>
<a href = "index.do"><p style="font-family: Avenir-light"> RETURN TO HOMEPAGE</p></a>
</div>
<br>
<br>
	<!-- Display  Film  -->
	<c:choose>
		<c:when test="${! empty film}">
			<h3 style= "text-align:center; font-family: Avenir-light">FILM INFO</h3>
			<br>
			<ul>
				<li><p style="font-family: Avenir-light">ID# ${film.id} ${film.title}</p> </li>
				<li><p style="font-family: Avenir-light">Category: ${film.category}</p></li>
				<li><p style="font-family: Avenir-light">Rated: ${film.rating} : ${film.description}</p></li>
				<li><p style="font-family: Avenir-light">Released: ${film.releaseYear} ${film.language} </p></li>
				<li><p style="font-family: Avenir-light">Length: ${film.length} minutes</p></li>
				<li><p style="font-family: Avenir-light">Rental Duration: ${film.rentalDuration} days </p></li>
				<li><p style="font-family: Avenir-light">Rental Rate: ${film.rentalRate} </p></li>
				<li><p style="font-family: Avenir-light">Replacement Cost ${film.replacementCost}</p></li>
				<li><p style="font-family: Avenir-light">Special Features: ${film.specialFeatures}</p></li>
				<li><p style="font-family: Avenir-light">Featuring:</p> 
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
<div style="text-align:center">
	<p>
	<form action="DeleteFilm.do" method="GET">
		<button name="deleteFilm" type="submit" class ="btn btn-light" value="${film.id}"><p style="font-family: Avenir-light"> Delete
			Film</p></button>
	</form>
</div>
	<!--Update this Film -->
<br> 
<br> 
<br> 
	<p>
	<h2 style= "text-align:center; font-family: Avenir-light"">EDIT FILM</h2>
	<p>
	<br>
	<form action="UpdateFilm.do" method="GET">

		<input id="id" type="hidden" name="id" value="${film.id}" />
			
		<label for="title" style="font-family: Avenir-light"> Change title from <b><u>${film.title}</u></b> to</label>
		<input id="title" type="text" name="title" value="${film.title}" required/>
<br>
		<label for="description" style="font-family: Avenir-light"> Change description from <b><u>${film.description}</u></b> to</label>
		<input id="description" size="100" type="text" name="description" value="${film.description}" required/>
<br>
		<label for="releaseYear" style="font-family: Avenir-light">Change release year from <b><u>${film.releaseYear}</u></b> to</label>
		<input id="releaseYear" type="number" min="1901" max="2155" name="releaseYear" value="${film.releaseYear}" required/>
<br>
		<label for="languageId" style="font-family: Avenir-light"> Change language from <b><u>${film.language}</u></b> to </label>
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
		<input id="rentalDuration" type="number" min="0" max="255" name="rentalDuration" value="${film.rentalDuration}" required/>
<br>
		<label for="rentalRate"> Change rental rate from <b><u>$${film.rentalRate}</u></b> to</label>
		<input id="rentalRate" type="number" min="0" max="99.99" step="0.01" name="rentalRate" value="${film.rentalRate}" required/>
<br>
		<label for="length"> Change length from <b><u>${film.length} minutes</u></b> to</label>
		<input id="length" type="number" min="0" max="65535" name="length" value="${film.length}" required/>
<br>
		<label for="replacementCost"> Change replacement cost from <b><u>$${film.replacementCost}</u></b> to</label>
		<input id="replacementCost" type="number" min="0" max="999.99" step="0.01" name="replacementCost" value="${film.replacementCost}" required/>
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
	<br>
	<div style="text-align: center">
			<input type="submit" value="Update Film" class ="btn btn-light"/>
			<input type="reset" class ="btn btn-light">
</div>
	</form>
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