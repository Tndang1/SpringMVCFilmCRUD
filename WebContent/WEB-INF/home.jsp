<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC CRUD</title>
</head>
<h3>Films</h3>

<!-- Film By Id -->
	<form action="GetFilmId.do" method="GET">
		<input type="text" name="filmID"/> 
		<input type="submit" value="Get Film ID" />
	</form>
	
	
<!-- Film By keyword -->
	<form action="GetFilmByKeyword.do" method="GET">
		<input type="text" name="filmKeyword"/> 
		<input type="submit" value="Get Film ID" />
	</form>
	

<!-- Create New Film -->
	
	<form action="AddFilm.do" method="GET">
	Add Film to Database:
	
	<label for="title"> Enter a title</label> 
	<input id ="title" type="text" name="title"/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->
	Can repeat this for all fields or use defaults
	
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
	

</body>
</html>