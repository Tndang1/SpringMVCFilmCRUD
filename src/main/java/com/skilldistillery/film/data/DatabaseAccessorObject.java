package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Component
public class DatabaseAccessorObject implements DatabaseAccessorInterface {
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static String user = "student";
	private static String pass = "student";
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public DatabaseAccessorObject() {
		
	}

	public Film filmInfoInsert(ResultSet rs) throws SQLException {
		Film film = null;
		int filmIdCheck = rs.getInt(1);
		String title = rs.getString(2);
		String desc = rs.getString(3);
		int releaseYear = rs.getInt(4);
		int langId = rs.getInt(5);
		int rentDur = rs.getInt(6);
		double rate = rs.getDouble(7);
		int length = rs.getInt(8);
		double repCost = rs.getDouble(9);
		String rating = rs.getString(10);
		String features = rs.getString(11);
		String language = rs.getString(12);
		String category = rs.getString(13);
		film = new Film(filmIdCheck, title, desc, releaseYear, langId, rentDur, rate, length, repCost, rating, features,
				language, category);
		return film;
	}

	@Override
	public Film findFilmById(int filmId) {
		Film film = null;
		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT film.*, language.name, category.name FROM film LEFT JOIN language on film.language_id = language.id LEFT JOIN film_category on film.id = film_category.film_id LEFT JOIN category on film_category.category_id = category.id WHERE film.id = ?";
//			String sql = "SELECT * FROM film LEFT JOIN language ON language.id = film.language_id  LEFT JOIN film_category ON film_category.film_id = film.id LEFT JOIN category ON category.id = film_category.category_id WHERE film.id =?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				film = filmInfoInsert(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return film;
	}

	@Override
	public List<Film> findFilmBySearch(String search) {
		Film film = null;
		List<Film> filmList = new ArrayList<Film>();
		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT film.*, language.name, category.name FROM film LEFT JOIN language on film.language_id = language.id LEFT JOIN film_category on film.id = film_category.film_id LEFT JOIN category on film_category.category_id = category.id WHERE film.title LIKE ? OR film.description LIKE ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, "%" + search + "%");
			stmt.setString(2, "%" + search + "%");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				film = filmInfoInsert(rs);
				filmList.add(film);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return filmList;
	}

	@Override
	public Actor findActorById(int actorId) {
		Actor actor = null;
		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT * FROM actor WHERE id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, actorId);
			ResultSet actorResult = stmt.executeQuery();
			if (actorResult.next()) {
				actor = new Actor();
				actor.setId(actorResult.getInt(1));
				actor.setFirstName(actorResult.getString(2));
				actor.setLastName(actorResult.getString(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return actor;
	}

	@Override
	public List<Actor> findActorsByFilmId(int filmId) {
		List<Actor> actors = new ArrayList<Actor>();
		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT * FROM actor" + " JOIN film_actor ON actor.id = film_actor.actor_id"
					+ " JOIN film ON film_actor.film_id = film.id" + " WHERE film.id = ?";

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int actorId = rs.getInt(1);
				String fName = rs.getString(2);
				String lName = rs.getString(3);
				Actor actor = new Actor(actorId, fName, lName);
				actors.add(actor);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return actors;
	}

	@Override
	public Film createFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);
			String sql = "INSERT INTO film (title, language_id)" + " VALUE (?, 1)";
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, film.getTitle());
			int updateCount = stmt.executeUpdate();
			if (updateCount == 1) {
				ResultSet key = stmt.getGeneratedKeys();
				if (key.next()) {
					int newFilmId = key.getInt(1);
					film.setId(newFilmId);
				}
			} else {
				film = null;
			}
			conn.commit();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			throw new RuntimeException("Error inserting film " + film);
		}
		return film;

	}

	@Override
	public boolean deleteFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);
			String sql = "DELETE from film_actor WHERE film_id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, film.getId());
			stmt.executeUpdate();
			sql = "DELETE FROM film WHERE id = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, film.getId());
			stmt.executeUpdate();
			conn.commit();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		}
		return true;
	}

	@Override
	public boolean editFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);
			String sql = "UPDATE film SET title = ?, description = ?, release_year = ?, language_id = ?,"
					+ " rental_duration = ?, rental_rate = ?, length = ?, replacement_cost = ?, rating = ?"
					+ " WHERE film.id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, film.getLanguageId());
			stmt.setInt(5, film.getRentalDuration());
			stmt.setDouble(6, film.getRentalRate());
			stmt.setInt(7, film.getLanguageId());
			stmt.setDouble(8, film.getReplacementCost());
			stmt.setString(9, film.getRating());
//			stmt.setString(10, film.getSpecialFeatures());
			stmt.setInt(10, film.getId());
			stmt.executeUpdate();
			conn.commit();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} // ROLLBACK TRANSACTION ON ERROR
				catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		}
		return true;
	}

}
