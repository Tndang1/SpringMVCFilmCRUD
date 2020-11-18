<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>Spring MVC CRUD</title>
</head>
<h3 style="text-align: center; font-family: Avenir-light; font-size:80px ">F I L M S</h3>
<br>
<br>
<h3 style="text-align: center; font-family: Avenir-light; font-size:20px ">EXPLORE OUR FILM DATABASE</h3>

<br>
<br>
<div class= "container-sm">
<!-- Film By Id -->
<div style="text-align: center">
	<form action="GetFilmId.do" method="GET">
<p style= "font-family: Avenir-light">FIND A FILM BY IT'S ID</p>	
		<br>
		<input type="number" min="0" name="filmID" required=required/> 
		<input type="submit" value="Submit" class ="btn btn-light" />
	</form>
	<br>
	</div>
	
	
	
<!-- Film By keyword -->
<div style="text-align: center;">
	<form action="GetFilmByKeyword.do" method="GET">
<p style= "font-family: Avenir-light">GET FILMS BY KEYWORD</p>	
<br>
		<input type="text" name="keyword" value=""/> 
		<input type="submit" value="Submit" class ="btn btn-light" />
	</form>
	</div>

<div style="text-align: left; ">
<!-- Create New Film -->
	<br>
	<br>
	<form action="AddFilm.do" method="GET">
	<p style="font-family: Avenir-light; font-size:40px; text-align:center "> CREATE A NEW FILM</p>
	<br>
	<br>
	
	<label for="title" style="font-family: Avenir-light"> Enter a title</label> 
	<input id ="title" type="text" name="title" value=""/> 
	
	<!-- Language ID already coded in DAO. We may not need any of this. Can use default values  -->
<br>
	<label for="description"  style="font-family: Avenir-light">Enter a description</label> 
	<input id ="description" type="text" name="description" value=""/> 
		<br>
	
	

	<label for="releaseYear"  style="font-family: Avenir-light"> 
	<br>
	Enter a release year:</label> 
	<input id ="releaseYear" type="number" min="1901" max="2155" name="releaseYear" required=required placeholder = "1990"/> 



<br>
	<label for="languageId"  style="font-family: Avenir-light">Enter a Language </label>

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
	<label for="rentalDuration"  style="font-family: Avenir-light">Enter a rental duration</label> 
	<input id ="rentalDuration" type="number" min="0" max="255" name="rentalDuration" required=required/> 
<br>
	<label for="rentalRate"  style="font-family: Avenir-light">Enter a rental rate</label> 
	<input id ="rentalRate" type="number" min="0" max="99.99" step="0.01" name="rentalRate" required=required/> 
<br>
	<label for="length" style="font-family: Avenir-light"> Enter a length</label> 
	<input id ="length" type="number" min="0" max="65535" name="length" required=required/> 
<br>
	<label for="replacementCost"  style="font-family: Avenir-light">Enter a replacement cost</label> 
	<input id ="replacementCost" type="number" min="0" max="999.99" step="0.01" name="replacementCost" required=required/> 
<br>
	<label for="rating"  style="font-family: Avenir-light">Enter a Rating </label>
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
	<label for="specialFeatures" style="font-family: Avenir-light"> Enter a special features</label> 
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "trailers" /> Trailers
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "commentaries" /> Commentaries
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "deleted scenes" /> Deleted Scenes
	<input id ="specialFeatures" type="radio" name="specialFeatures" value= "behind the scenes" /> Behind the Scenes
	
<br>
<br>

	<input type="submit" value="Add Film" class ="btn btn-light" />
	<input type="reset" class ="btn btn-light">
	</form>
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


</body>
</html>