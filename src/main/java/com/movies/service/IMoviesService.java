package com.movies.service;

import java.util.List;

import com.movies.controller.model.Movie;

public interface IMoviesService {
	public void addMovie(Movie movie);
	public List<Movie> findMovies();
}
