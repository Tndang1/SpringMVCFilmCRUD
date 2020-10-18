package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface DatabaseAccessorInterface {

	Actor findActorById(int actorId);

	Film findFilmById(int filmId);

	List<Film> findFilmBySearch(String search);

	List<Actor> findActorsByFilmId(int filmId);

	Film createFilm(Film film);

	boolean deleteFilm(Film film);

	boolean editFilm(Film film);

}