package com.movies.dao;

import java.util.List;

import com.movies.controller.model.Movie;

public interface IMoviesDao {

	public void addMovie(Movie movie);
	public List<Movie> findMovies();

}
