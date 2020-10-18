<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
    
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
    <c:when test="${filmAdded.id > 0}">
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
  
  <form action="AddFilm.do" method="GET">
	Add Another Film to database:
	
<br>
	<br>
	
	<label for="title"> Enter a title</label> 
	<input id ="title" type="text" name="title"/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->

	<label for="description"> 
	<br>
	Enter a description</label> 
	<input id ="description" type="text" name="description" required=required/> 
	

	<label for="releaseYear"> 
	<br>
	Enter a release year:</label> 
	<input id ="releaseYear" type="text" name="releaseYear" required=required/> 



<label for="langId"> 
<br>
Enter a Language </label> 
	<input id ="langId" type="radio" name="langId" value= "1" required=required/> English
	<input id ="langId" type="radio" name="langId" value= "2" required=required/> Italian 
	<input id ="langId" type="radio" name="langId" value= "3" required=required/> Japanese
	<input id ="langId" type="radio" name="langId" value= "4" required=required/> Mandarin
	<input id ="langId" type="radio" name="langId" value= "5" required=required/> French
	<input id ="langId" type="radio" name="langId" value= "6" required=required/> German



<!-- rental duration?? -->	
<label for="rentalDuration"> 
<br>
Enter a rental duration</label> 
	<input id ="rentalDuration" type="text" name="rentalDuration" required=required/> 
	
	<label for="rentalRate"> <br>
	Enter a rental rate</label> 
	<input id ="rentalRate" type="text" name="rentalRate" required=required/> 
	
	<label for="length"> 
	<br>
	Enter a length</label> 
	<input id ="length" type="text" name="length" required=required/> 
	
	<label for="replacementCost"> 
	<br>
	Enter a replacement cost</label> 
	<input id ="replacementCost" type="text" name="replacementCost" required=required/> 
	
	<label for="rating"> 
	<br>
	Enter a rating</label> 
	<input id ="rating" type="text" name="rating" required=required/> 
	
	<label for="specialFeatures"> 
	<br>
	Enter a special features</label> 
	<input id ="specialFeatures" type="text" name="specialFeatures" required=required/> 
	
	<br>
	<input type="submit" value="Add Film" />
	</form>
		
	
<!-- Delete this Film  -->

	<p>Delete this film<p>
<form action="DeleteFilm.do" method="GET">
	
		<input type="radio" name="deleteFilm" value="${filmAdded.id}"/> Delete Film
		<input type="submit" value="Delete Film" />
	</form>
	
	

  
	<!--Update this Film -->
	
	<p>Edit a film<p>
	
<form action = "UpdateFilm.do" method = "GET">

	<input id="id" type="hidden" name="id" value="${film.id}"/>
	
	<label for="title"> Change title from <b><u>${filmAdded.title}</u></b> to</label>
	<input id ="title" type="text" name="title"/> 
<br>
	<label for="description"> Change description from <b><u>${filmAdded.description}</u></b> to</label> 
	<input id ="description" type="text" name="description" required=required/> 
<br>
	<label for="releaseYear"> Change release year from <b><u>${filmAdded.releaseYear}</u></b> to</label> 
	<input id ="releaseYear" type="text" name="releaseYear" required=required/> 
<br>
<label for="languageId"> Change language from <b><u>${filmAdded.languageId}</u></b> to </label> 
	<input id ="languageId" type="radio" name="languageId" value= 1 required=required/> 1-English
	<input id ="languageId" type="radio" name="languageId" value= 2 required=required/> 2-Japanese
	<input id ="languageId" type="radio" name="languageId" value= 3 required=required/> 3-Italian
	<input id ="languageId" type="radio" name="languageId" value= 4 required=required/> 4-Mandarin
	<input id ="languageId" type="radio" name="languageId" value= 5 required=required/> 5-French
	<input id ="languageId" type="radio" name="languageId" value= 6 required=required/> 6-German
<br>
<label for="rentalDuration"> Change rental duration from <b><u>${filmAdded.rentalDuration}</u></b> days to</label> 
	<input id ="rentalDuration" type="text" name="rentalDuration" required=required/> 
	<br>
	<label for="rentalRate"> Change rental rate from <b><u>$${filmAdded.rentalRate}</u></b> to</label> 
	<input id ="rentalRate" type="text" name="rentalRate" required=required/> 
	<br>
	<label for="length"> Change length from <b><u>${filmAdded.length}</u></b> minutes to</label> 
	<input id ="length" type="text" name="length" required=required/> 
	<br>
	<label for="replacementCost"> Change replacement cost from <b><u>$${filmAdded.replacementCost}</u></b> to</label> 
	<input id ="replacementCost" type="text" name="replacementCost" required=required/> 
	<br>
	<label for="rating"> Change rating from <b><u>${filmAdded.rating}</u></b> to</label> 
	<input id ="rating" type="text" name="rating" required=required/> 
	<br>
	<label for="specialFeatures"> Change special features from <b><u>${filmAdded.specialFeatures}</u></b> to</label> 
	<input id ="specialFeatures" type="text" name="specialFeatures" required=required/> 
<br>
	<input type="submit" value="Update Film" />
	
</form>



</body>
</html>