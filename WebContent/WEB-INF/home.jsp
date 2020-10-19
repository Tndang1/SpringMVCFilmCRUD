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
		<input type="text" name="filmID" required=required/> 
		<input type="submit" value="Submit" />
	</form>
	<br>
	
	
	
<!-- Film By keyword -->
	<form action="GetFilmByKeyword.do" method="GET">
	Get Film by Keyword
	<br>
		<input type="text" name="keyword" value=""/> 
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
	<input id ="title" type="text" name="title" value=""/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->
<br>
	<label for="description">Enter a description</label> 
	<input id ="description" type="text" name="description" value=""/> 
	

	<label for="releaseYear"> 
	<br>
	Enter a release year:</label> 
	<input id ="releaseYear" type="number" min="1901" max="2155" name="releaseYear" required=required placeholder = "1990"/> 



<br>
	<label for="languageId">Enter a Language </label>

	<select name="languageId" id="languageId">
		<option value="1">English</option>
		<option value="2">Italian</option>
		<option value="3">Japanese</option>
		<option value="4">Mandarin</option>
		<option value="5">French</option>
		<option value="6">German</option>
	</select>


<!-- 	<input id ="languageId" type="radio" name="languageId" value= 1 required=required/> English
	<input id ="languageId" type="radio" name="languageId" value= 2 required=required/> Italian 
	<input id ="languageId" type="radio" name="languageId" value= 3 required=required/> Japanese
	<input id ="languageId" type="radio" name="languageId" value= 4 required=required/> Mandarin
	<input id ="languageId" type="radio" name="languageId" value= 5 required=required/> French
	<input id ="languageId" type="radio" name="languageId" value= 6 required=required/> German -->

<!-- rental duration?? -->	
<br>
	<label for="rentalDuration">Enter a rental duration</label> 
	<input id ="rentalDuration" type="number" name="rentalDuration" required=required/> 
<br>
	<label for="rentalRate">Enter a rental rate</label> 
	<input id ="rentalRate" type="number" step="0.01" name="rentalRate" required=required/> 
<br>
	<label for="length"> Enter a length</label> 
	<input id ="length" type="number" name="length" required=required/> 
<br>
	<label for="replacementCost">Enter a replacement cost</label> 
	<input id ="replacementCost" type="number" step="0.01" name="replacementCost" required=required/> 
<br>
	<label for="rating">Enter a Rating </label>
	<select name="rating" id="rating">
		<option value="G">G</option>
		<option value="PG">PG</option>
		<option value="PG13">PG-13</option>
		<option value="R">R</option>
		<option value="NC17">NC-17</option>
	</select>
		
	
<!-- 	<input id ="rating" type="radio" name="rating" value= 1 required=required/> G
	<input id ="rating" type="radio" name="rating" value= 2 required=required/> PG
	<input id ="rating" type="radio" name="rating" value= 3 required=required/> PG-13
	<input id ="rating" type="radio" name="rating" value= 4 required=required/> R
	<input id ="rating" type="radio" name="rating" value= 5 required=required/> NC-17 -->
	
<br>
	<label for="specialFeatures">Enter a special features</label> 
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "trailers" /> Trailers
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "commentaries" /> Commentaries
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "deleted scenes" /> Deleted Scenes
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "behind the scenes" /> Behind the Scenes
	
<br>
	<input type="submit" value="Add Film" />
	<input type="reset">
	</form>
	

</body>
</html>