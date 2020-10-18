<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film by ID</title>
</head>
<body>

	<!-- Display  Film  -->
	<c:choose>
		<c:when test="${! empty film}">
			<h3>Film Info</h3>
			<ul>
				<li>ID# ${film.id} ${film.title}
				<li>Rated: ${film.rating} : ${film.description}</li>
				<li>Released: ${film.releaseYear} ${film.language} Length: ${film.length} minutes</li>
				<li>Rental Duration: ${film.rentalDuration} days Rental Rate: $${film.rentalRate} Replacement Cost $${film.replacementCost}</li>
				<li>Special Features: ${film.specialFeatures}</li>
				<li>Featuring: 
				<c:forEach items="${actorList}" var="actor">
					*${actor.fullName}*
				</c:forEach>
				</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>

	<!-- Delete this Film  -->

	<p>
	<form action="DeleteFilm.do" method="GET">
		<button name="deleteFilm" type="submit" value="${film.id}">Delete
			Film</button>
	</form>

	<!--Update this Film -->

	<p>
	<h2>Edit film</h2>
	<p>
	<form action="UpdateFilm.do" method="GET">

		<input id="id" type="hidden" name="id" value="${film.id}" /> <label
			for="title"> Change title from <b><u>${film.title}</b></u> to</label> <input
			id="title" type="text" name="title" /> <br> <label
			for="description"> Change description from
			<b><u>${film.description}</b></u> to</label> <input id="description" type="text"
			name="description" /> <br> <label for="releaseYear">
			Change release year from <b><u>${film.releaseYear}</u></b> to</label> <input
			id="releaseYear" type="text" name="releaseYear" /> <br> <label
			for="languageId"> Change language from <b><u>${film.language}</u></b>
			to </label> <input id="languageId" type="radio" name="languageId" value=1 />
		English <input id="languageId" type="radio" name="languageId" value=2 />
		Italian <input id="languageId" type="radio" name="languageId" value=3 />
		Japanese <input id="languageId" type="radio" name="languageId" value=4 />
		Mandarin <input id="languageId" type="radio" name="languageId" value=5 />
		French <input id="languageId" type="radio" name="languageId" value=6 />
		German <br> <label for="rentalDuration"> Change rental
			duration from <b><u>${film.rentalDuration} days</u></b> to</label> <input id="rentalDuration"
			type="text" name="rentalDuration" /> <br> <label
			for="rentalRate"> Change rental rate from <b><u>$${film.rentalRate}</u></b>
			to</label> <input id="rentalRate" type="text" name="rentalRate" /> <br>
		<label for="length"> Change length from <b><u>${film.length} minutes</u></b> to</label> <input
			id="length" type="text" name="length" /> <br> <label
			for="replacementCost"> Change replacement cost from
			<b><u>$${film.replacementCost}</u></b> to</label> <input id="replacementCost" type="text"
			name="replacementCost" /> <br> <label for="rating">
			Change rating from <b><u>${film.rating}</u></b> to</label> <input id="rating" type="text"
			name="rating" /> <br> <label for="specialFeatures">
			Change special features from <b><u>${film.specialFeatures}</u></b> to</label> <input
			id="specialFeatures" type="text" name="specialFeatures" /> <br>
		<input type="submit" value="Update Film" />

	</form>

	<!-- Confirm film updated -->

	<c:choose>
		<c:when test="${filmUpdated}">
			<p>Your film had been updated
			<p>
		</c:when>
		<c:otherwise>
			<p>Your film has not been updated</p>
		</c:otherwise>
	</c:choose>
</body>
</html>