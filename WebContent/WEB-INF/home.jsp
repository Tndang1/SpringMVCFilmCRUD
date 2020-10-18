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
		<br>
		<input type="text" name="filmID"/> 
		<input type="submit" value="Submit" />
	</form>
	<br>
	
	
	
<!-- Film By keyword -->
	<form action="GetFilmByKeyword.do" method="GET">
	Get Film by Keyword
	<br>
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
	<input id ="releaseYear" type="text" name="releaseYear" required=required value ="Please enter a four digit number"/> 



<label for="languageId"> 
<br>
Enter a Language </label> 
	<input id ="languageId" type="radio" name="languageId" value= 1 required=required/> English
	<input id ="languageId" type="radio" name="languageId" value= 2 required=required/> Italian 
	<input id ="languageId" type="radio" name="languageId" value= 3 required=required/> Japanese
	<input id ="languageId" type="radio" name="languageId" value= 4 required=required/> Mandarin
	<input id ="languageId" type="radio" name="languageId" value= 5 required=required/> French
	<input id ="languageId" type="radio" name="languageId" value= 6 required=required/> German



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
	Enter a Rating </label> 
	<input id ="rating" type="radio" name="rating" value= 1 required=required/> G
	<input id ="rating" type="radio" name="rating" value= 2 required=required/> PG
	<input id ="rating" type="radio" name="rating" value= 3 required=required/> PG-13
	<input id ="rating" type="radio" name="rating" value= 4 required=required/> R
	<input id ="rating" type="radio" name="rating" value= 5 required=required/> NC-17
	
	
	<label for="specialFeatures"> 
	<br>
	Enter a special features</label> 
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "trailers" /> Trailers
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "commentaries" /> Commentaries
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "deleted scenes" /> Deleted Scenes
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "behind the scenes" /> Behind the Scenes
	
	<br>
	<input type="submit" value="Add Film" />
	</form>
	

</body>
</html>