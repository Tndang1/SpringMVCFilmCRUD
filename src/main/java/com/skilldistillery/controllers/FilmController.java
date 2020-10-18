package com.skilldistillery.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.DatabaseAccessorObject;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private DatabaseAccessorObject dao;

<<<<<<< HEAD:src/main/java/com/skilldistillery/films/controllers/FilmController.java
	public void setFilmDAO(FilmDAO filmDAO) {
		this.FilmDAO = filmDAO;
=======
	public void setFilmDAO(DatabaseAccessorObject filmDAO) {
		this.dao = filmDAO;
>>>>>>> 9586caab52d6e0855d9c0aeb27ec4803be6348be:src/main/java/com/skilldistillery/controllers/FilmController.java
	}

	@RequestMapping(path = "GetFilmId.do", method = RequestMethod.GET)
	public ModelAndView getFilmId(int filmID) {
		ModelAndView mv = new ModelAndView();
<<<<<<< HEAD:src/main/java/com/skilldistillery/films/controllers/FilmController.java
		Film filmToAdd = dao.findFilmByID(int filmId);
=======
		Film filmToAdd = dao.findFilmById(filmID);
>>>>>>> 9586caab52d6e0855d9c0aeb27ec4803be6348be:src/main/java/com/skilldistillery/controllers/FilmController.java
		mv.addObject("film", filmToAdd);
		mv.setViewName("WEB-INF/displayfilmbyid.jsp");
		return mv;
	}
	
	@RequestMapping(path = "index.do")
	public String index() {
		return "WEB-INF/home.jsp";
	}

	@RequestMapping(path = "GetFilmByKeyword.do", method = RequestMethod.GET)
	public ModelAndView getFilmByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
<<<<<<< HEAD:src/main/java/com/skilldistillery/films/controllers/FilmController.java
		Film filmReturned = dao.findFilmByID(keyword);
		mv.addObject("film", filmReturned);
=======
		List<Film> filmReturned = dao.findFilmBySearch(keyword);
		mv.addObject("filmList", filmReturned);
>>>>>>> 9586caab52d6e0855d9c0aeb27ec4803be6348be:src/main/java/com/skilldistillery/controllers/FilmController.java
		mv.setViewName("WEB-INF/displayfilmbykeyword.jsp");
		return mv;
	}


	@RequestMapping(path = "AddFilm.do", method = RequestMethod.GET)
	public ModelAndView addFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		Film filmAdded = dao.createFilm(film);
		mv.addObject("filmAdded", filmAdded);
		mv.setViewName("WEB-INF/displayaddedfilm.jsp");
		return mv;
	}

	@RequestMapping(path = "DeleteFilm.do", method = RequestMethod.GET)
	public ModelAndView deleteFilm(int deleteFilm) {
		ModelAndView mv = new ModelAndView();
		boolean filmDeleted = dao.deleteFilm(dao.findFilmById(deleteFilm));
		mv.addObject("filmDeleted", filmDeleted);
		mv.setViewName("WEB-INF/deletedfilm.jsp");
		return mv;
	}

	@RequestMapping(path = "UpdateFilm.do", method = RequestMethod.GET)
	public ModelAndView updateFilm(int id, String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures,
			String language, String category) {
		Film updatedFilm = new Film(id, title, description, releaseYear, languageId, 
				rentalDuration, rentalRate, length, replacementCost, rating, specialFeatures, language, category);
		ModelAndView mv = new ModelAndView();
<<<<<<< HEAD:src/main/java/com/skilldistillery/films/controllers/FilmController.java
		boolean filmUpdated = dao.updateFilm(film);
		mv.addObject("filmUpdated", filmAdded);
=======
		boolean filmUpdated = dao.editFilm(updatedFilm);
		mv.addObject("filmAdded", filmUpdated);
>>>>>>> 9586caab52d6e0855d9c0aeb27ec4803be6348be:src/main/java/com/skilldistillery/controllers/FilmController.java
		mv.setViewName("WEB-INF/updatedfilm.jsp");
		return mv;
	}
}