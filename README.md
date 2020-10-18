## Spring MVC Film C.R.U.D. Project


## Pierce Steward, Kayalyn Edmeade, Thomas Dang

## Overview

In this project, we used CRUD concepts to create an app that allows a user to create, read, update  or delete film items found in our database.

Tools and technologies used:

Spring MVC
Gradle
Java
JSTL
mySQL
HTML
CSS ?
JSP ?


User input
On the landing home.jsp page, the user is prompted to enter information to either create a new film, find a film by it's id, or find a film using a keyword. Depending on where the user is redirected, the user is presented with more options to either delete a film, update a film, create another film, etc.  

Web Content

In our web content folder, we created series of .jsp folders that correspond to different web pages (e.g. deletedfilm.jsp, displayaddedfilm.jsp). The main landing page is home.jsp where the user is  prompted input a film ID, film keyword, or info to create a film.

*DAO

Our database accessor object and interface contain methods for the creation, deletion , or editing of a film. Other methods call to finding an actor by film id, finding a film by its id, etc. Film information for the DAO is pulled from a database using mySQL language.

*Entities

Our film and actor classes hold variables for describing film and actor objects. These variables include title, firstName, lastname, language, releaseYear etc. (For the corresponding entity)

Controller

Our controller class maps the incoming user information to .jsp's found in our web content folder. Calling on the DAO, different controller methods execute unique paths redirecting content to display information for the user via the .jsp's.


## Lessons learned
We all learned work together on a team project. We learned how to coording pushes and pulls, and also troubleshooting errors that arose. 
