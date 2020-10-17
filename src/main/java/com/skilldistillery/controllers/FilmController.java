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

	public void setFilmDAO(DatabaseAccessorObject filmDAO) {
		this.dao = filmDAO;
	}

	@RequestMapping(path = "GetFilmId.do", method = RequestMethod.GET)
	public ModelAndView getFilmId(int filmID) {
		ModelAndView mv = new ModelAndView();
		Film filmToAdd = dao.findFilmById(filmID);
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
		List<Film> filmReturned = dao.findFilmBySearch(keyword);
		mv.addObject("filmList", filmReturned);
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
	public ModelAndView updateFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		boolean filmAdded = dao.editFilm(film);
		mv.addObject("filmAdded", filmAdded);
		mv.setViewName("WEB-INF/updatedfilm.jsp");
		return mv;
	}
}