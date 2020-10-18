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
	Get Film by ID
		<input type="text" name="filmID"/> 
		<input type="submit" value="Submit" />
	</form>
	
	
	
<!-- Film By keyword -->
	<form action="GetFilmByKeyword.do" method="GET">
	Get Film by Keyword
		<input type="text" name="keyword"/> 
		<input type="submit" value="Submit" />
	</form>
	

<!-- Create New Film -->
	<br>
	<br>
	<form action="AddFilm.do" method="GET">
	Add Film to Database:
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
	

</body>
</html>