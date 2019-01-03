package com.movies.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movies.controller.model.Movie;
import com.movies.dao.IMoviesDao;

@Service("MoviesService")
public class MoviesService implements IMoviesService {

	@Autowired
	private IMoviesDao moviesDao;

	@Override
	public void addMovie(Movie movie) {
		moviesDao.addMovie(movie);
	}

	@Override
	public List<Movie> findMovies() {
		return moviesDao.findMovies();
	}
	
	
}
