<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body> 

<!-- CONFIRM FILM ADDED -->
	<c:choose>
    <c:when test="${filmAdded}">
    <p> Your film had been added<p>
     </c:when>
    <c:otherwise>
      <p>Your film was not added</p>
    </c:otherwise>
  </c:choose>
  
  <%-- <c:choose>
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
      <p>No state found</p>
    </c:otherwise>
  </c:choose> --%>
  
  <!-- Create new film  -->
  
  <p> Add another film:<p>
  <form action="AddFilm.do" method="GET">
	Add Film to the database:
	
	<label for="title"> Enter a title</label> 
	<input id ="title" type="text" name="title"/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->
	<!-- Can repeat this for all fields or use defaults
	 -->
	<label for="description"> Enter a description</label> 
	<input id ="description" type="text" name="description" required=required/> 
	

	<label for="releaseYear"> Enter a release year:</label> 
	<input id ="releaseYear" type="text" name="releaseYear" required=required/> 



<label for="langId"> Enter a Language </label> 
	<input id ="langId" type="radio" name="langId" value= 1 required=required/> English
	<input id ="langId" type="radio" name="langId" value= 2 required=required/> Italian 
	<input id ="langId" type="radio" name="langId" value= 3 required=required/> Japanese
	<input id ="langId" type="radio" name="langId" value= 4 required=required/> Mandarin
	<input id ="langId" type="radio" name="langId" value= 5 required=required/> French
	<input id ="langId" type="radio" name="langId" value= 6 required=required/> German



<!-- rental duration?? -->	
<label for="rentalDuration"> Enter a rental duration</label> 
	<input id ="rentalDuration" type="text" name="rentalDuration" required=required/> 
	
	<label for="rentalRate"> Enter a rental rate</label> 
	<input id ="rentalRate" type="text" name="rentalRate" required=required/> 
	
	<label for="length"> Enter a length</label> 
	<input id ="length" type="text" name="length" required=required/> 
	
	<label for="replacementCost"> Enter a replacement cost</label> 
	<input id ="replacementCost" type="text" name="replacementCost" required=required/> 
	
	<label for="rating"> Enter a rating</label> 
	<input id ="rating" type="text" name="rating" required=required/> 
	
	<label for="specialFeatures"> Enter a special features</label> 
	<input id ="specialFeatures" type="text" name="specialFeatures" required=required/> 
	
		<input type="submit" value="Add Film" />
	</form>
	
	
<!-- Delete this Film  -->

	<p>Delete this film<p>
<form action="DeleteFilm.do" method="GET">
	
		<input type="radio" name="deleteFilm" value=${filmAdded}/> Delete Film
		<input type="submit" value="Delete Film" />
	</form>
	
	

  
	<!--Update this Film -->
	
	<p>Edit a film<p>
<form action="UpdateFilm.do" method="GET" >
<label for="title"> Change title from ${filmAdded.title} to</label> 
	<input id ="title" type="text" name="title"/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->
	Can repeat this for all fields or use defaults
	
	<label for="description"> Change description from ${filmAdded.description} to</label> 
	<input id ="description" type="text" name="description" required=required/> 
	

	<label for="releaseYear"> Change description from ${filmAdded.releaseYear} to</label> 
	<input id ="releaseYear" type="text" name="releaseYear" required=required/> 



<label for="langId"> Change description from ${filmAdded.languageId} to </label> 
	<input id ="langId" type="radio" name="langId" value= 1 required=required/> English
	<input id ="langId" type="radio" name="langId" value= 2 required=required/> Italian 
	<input id ="langId" type="radio" name="langId" value= 3 required=required/> Japanese
	<input id ="langId" type="radio" name="langId" value= 4 required=required/> Mandarin
	<input id ="langId" type="radio" name="langId" value= 5 required=required/> French
	<input id ="langId" type="radio" name="langId" value= 6 required=required/> German



<!-- rental duration?? -->	
<label for="rentalDuration"> Change description from ${filmAdded.rentalDuration} to</label> 
	<input id ="rentalDuration" type="text" name="rentalDuration" required=required/> 
	
	<label for="rentalRate"> Change description from ${filmAdded.rentalRate} to</label> 
	<input id ="rentalRate" type="text" name="rentalRate" required=required/> 
	
	<label for="length"> Change description from ${filmAdded.length} to</label> 
	<input id ="length" type="text" name="length" required=required/> 
	
	<label for="replacementCost"> Change description from ${filmAdded.replacementCost} to</label> 
	<input id ="replacementCost" type="text" name="replacementCost" required=required/> 
	
	<label for="rating"> Change description from ${filmAdded.rating} to</label> 
	<input id ="rating" type="text" name="rating" required=required/> 
	
	<label for="specialFeatures"> Change description from ${filmAdded.specialFeatures} to</label> 
	<input id ="specialFeatures" type="text" name="specialFeatures" required=required/> 
	
	<input type="submit" value="Update Film" />



</body>
</html>