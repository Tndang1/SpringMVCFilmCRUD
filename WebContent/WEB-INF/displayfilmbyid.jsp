<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film by keyword</title>
</head>
<body>

<<<<<<< HEAD
  <!-- Display  Film  -->
  <c:choose>
    <c:when test="${! empty film}">
      <ul>
       <li>${film.filmId}</li>
        <li>${film.title}</li>
        <li>${film.description}</li>
        <li>${film.releaseYear}</li>
        <li>${film.langId}</li>
        <li>${film.rentalDuration}</li>
        <li>${film.rentalRate}</li>
        <li>${film.length}</li>
        <li>${film.replacementCost}</li>
        <li>${film.rating}</li>
        <li>${film.specialFeatures}</li>
        <li>${film.language}</li>
        <li>${film.specialFeatures}</li>
        
      </ul>
    </c:when>
    <c:otherwise>
      <p>No film found</p>
    </c:otherwise>
  </c:choose>
  
  <!-- Delete this Film  -->

	<p>Delete this film<p>
<form action="DeleteFilm.do" method="GET">
	
		<input type="radio" name="deleteFilm" value=${film}/> Delete Film
		<input type="submit" value="Delete Film" />
	</form>
	
	

	<!--Update this Film -->
	
	<p>Edit a film<p>
<form action="UpdateFilm.do" method="GET" >
<label for="title"> Change title from ${film.title} to</label> 
	<input id ="title" type="text" name="title"/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->
	Can repeat this for all fields or use defaults
	
	<label for="description"> Change description from ${film.description} to</label> 
	<input id ="description" type="text" name="description" required=required/> 
	
=======
	<!-- Display  Film  -->
	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<%-- <li>${film.id}</li>
				<li>${film.title}</li>
				<li>${film.description}</li>
				<li>${film.releaseYear}</li>
				<li>${film.languageId}</li>
				<li>${film.rentalDuration}</li>
				<li>${film.rentalRate}</li>
				<li>${film.length}</li>
				<li>${film.replacementCost}</li>
				<li>${film.rating}</li>
				<li>${film.specialFeatures}</li>
				<li>${film.language}</li>
				<li>${film.specialFeatures}</li> --%>
				<li>${film}</li>
>>>>>>> 9586caab52d6e0855d9c0aeb27ec4803be6348be

			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>

	<!-- Delete this Film  -->

	<p>
	<form action="DeleteFilm.do" method="GET">
		<button name="deleteFilm" type="submit" value="${film.id}">Delete Film</button>
	</form>

	<!--Update this Film -->

	<p>Edit a film
	<p>
<form action = "UpdateFilm.do" method = "GET">

	<input id="id" type="hidden" name="id" value="${film.id}"/>
	
	<label for="title"> Change title from ${film.title} to</label>
	<input id ="title" type="text" name="title"/> 
<br>
	<label for="description"> Change description from ${film.description} to</label> 
	<input id ="description" type="text" name="description"/> 
<br>
	<label for="releaseYear"> Change release year from ${film.releaseYear} to</label> 
	<input id ="releaseYear" type="text" name="releaseYear"/> 
<br>
<label for="languageId"> Change language id from ${film.languageId} to </label> 
	<input id ="languageId" type="radio" name="languageId" value= 1 /> English
	<input id ="languageId" type="radio" name="languageId" value= 2 /> Italian 
	<input id ="languageId" type="radio" name="languageId" value= 3 /> Japanese
	<input id ="languageId" type="radio" name="languageId" value= 4 /> Mandarin
	<input id ="languageId" type="radio" name="languageId" value= 5 /> French
	<input id ="languageId" type="radio" name="languageId" value= 6 /> German
<br>
<label for="rentalDuration"> Change rental duration from ${film.rentalDuration} to</label> 
	<input id ="rentalDuration" type="text" name="rentalDuration" /> 
	<br>
	<label for="rentalRate"> Change rental rate from ${film.rentalRate} to</label> 
	<input id ="rentalRate" type="text" name="rentalRate" /> 
	<br>
	<label for="length"> Change length from ${film.length} to</label> 
	<input id ="length" type="text" name="length" /> 
	<br>
	<label for="replacementCost"> Change replacement cost from ${film.replacementCost} to</label> 
	<input id ="replacementCost" type="text" name="replacementCost" /> 
	<br>
	<label for="rating"> Change rating from ${film.rating} to</label> 
	<input id ="rating" type="text" name="rating" /> 
	<br>
	<label for="specialFeatures"> Change special features from ${film.specialFeatures} to</label> 
	<input id ="specialFeatures" type="text" name="specialFeatures" /> 
<br>
	<input type="submit" value="Update Film" />
<<<<<<< HEAD


  
  
  
=======
	
</form>

		<!-- Confirm film updated -->

		<c:choose>
			<c:when test="${filmUpdated}">
				<p>Your film had been updated
				<p>
			</c:when>
			<c:otherwise>
				<p>Your film was not updated</p>
			</c:otherwise>
		</c:choose>
>>>>>>> 9586caab52d6e0855d9c0aeb27ec4803be6348be
</body>
</html>