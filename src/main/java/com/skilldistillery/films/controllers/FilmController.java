package com.skilldistillery.films.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//import filmDAO

@Controller
public class FilmController {

	@Autowired
	private FilmDAO dao;

	public void setFilmDAO(FilmDAO filmDAO) {
		this.filmDAO = filmDAO;
	}

	@RequestMapping(path = "GetFilmId.do", method = RequestMethod.GET)
	public ModelAndView getFilmId(int filmID) {
		ModelAndView mv = new ModelAndView();
		Film filmToAdd = dao.findFilmByID(filmId);
		mv.addObject("film", filmToAdd);
		mv.setViewName("WEB-INF/displayfilm.jsp");
		return mv;
	}

	@RequestMapping(path = "GetFilmByKeyword.do", method = RequestMethod.GET)
	public ModelAndView getFilmByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		Film filmReturned = dao.findFilmByID(keyword);
		mv.addObject("film", filmReturned);
		mv.setViewName("WEB-INF/displayfilm.jsp");
		return mv;
	}


	@RequestMapping(path = "AddFilm.do", method = RequestMethod.GET)
	public ModelAndView addFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		boolean filmAdded = dao.addNewFilm(film);
		mv.addObject("filmAdded", filmAdded);
		mv.setViewName("WEB-INF/displayaddedfilm.jsp");
		return mv;
	}

	@RequestMapping(path = "DeleteFilm.do", method = RequestMethod.GET)
	public ModelAndView deleteFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		boolean filmDeleted = dao.deleteFilm(film);
		mv.addObject("filmDeleted", filmDeleted);
		mv.setViewName("WEB-INF/deletedfilm.jsp");
		return mv;
	}

	@RequestMapping(path = "UpdateFilm.do", method = RequestMethod.GET)
	public ModelAndView updateFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		boolean filmAdded = dao.updateFilm(film);
		mv.addObject("filmAdded", filmAdded);
		mv.setViewName("WEB-INF/updatedfilm.jsp");
		return mv;
	}
}