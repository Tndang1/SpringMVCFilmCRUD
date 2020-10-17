<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film by keyword</title>
</head>
<body>

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
	
	
<!--Confirm Update on Film -->
	<c:choose>
    <c:when test="${filmDeleted}">
    <p> Your film had been deleted<p>
     </c:when>
    <c:otherwise>
      <p>Your film was not deleted</p>
    </c:otherwise>
  </c:choose>
  
  
	<!--Update ths Film -->
	
	<p>Edit a film<p>
<form action="UpdateFilm.do" method="GET" >
<label for="title"> Change title from ${film.title} to</label> 
	<input id ="title" type="text" name="title"/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->
	Can repeat this for all fields or use defaults
	
	<label for="description"> Change description from ${film.description} to</label> 
	<input id ="description" type="text" name="description" required=required/> 
	

	<label for="releaseYear"> Change description from ${film.releaseYear} to</label> 
	<input id ="releaseYear" type="text" name="releaseYear" required=required/> 



<label for="langId"> Change description from ${film.filmlangId} to </label> 
	<input id ="langId" type="radio" name="langId" value= 1 required=required/> English
	<input id ="langId" type="radio" name="langId" value= 2 required=required/> Italian 
	<input id ="langId" type="radio" name="langId" value= 3 required=required/> Japanese
	<input id ="langId" type="radio" name="langId" value= 4 required=required/> Mandarin
	<input id ="langId" type="radio" name="langId" value= 5 required=required/> French
	<input id ="langId" type="radio" name="langId" value= 6 required=required/> German



<!-- rental duration?? -->	
<label for="rentalDuration"> Change description from ${film.rentalDuration} to</label> 
	<input id ="rentalDuration" type="text" name="rentalDuration" required=required/> 
	
	<label for="rentalRate"> Change description from ${film.rentalRate} to</label> 
	<input id ="rentalRate" type="text" name="rentalRate" required=required/> 
	
	<label for="length"> Change description from ${film.length} to</label> 
	<input id ="length" type="text" name="length" required=required/> 
	
	<label for="replacementCost"> Change description from ${film.replacementCost} to</label> 
	<input id ="replacementCost" type="text" name="replacementCost" required=required/> 
	
	<label for="rating"> Change description from ${film.rating} to</label> 
	<input id ="rating" type="text" name="rating" required=required/> 
	
	<label for="specialFeatures"> Change description from ${film.specialFeatures} to</label> 
	<input id ="specialFeatures" type="text" name="specialFeatures" required=required/> 
	
	<input type="submit" value="Update Film" />

	
<!-- Confirm film updated -->

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