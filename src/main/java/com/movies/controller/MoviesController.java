package com.movies.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.movies.controller.model.Movie;
import com.movies.service.IMoviesService;

@Controller
public class MoviesController {
	
	private IMoviesService moviesService;
	
	
	public MoviesController(){
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("service-dao.xml");
		moviesService=(IMoviesService)applicationContext.getBean("MoviesService");
	}
	
	@GetMapping("upload-movie")
	public String uploadMovie(){
		return "upload-movie";
	}
	@GetMapping("movies")
	public String showMovies(Model  model){
		List<Movie> movies=moviesService.findMovies();
		model.addAttribute("dmovies", movies);
		return "movies";
	}
	
	@PostMapping("upload-movie")
	public String uploadMoviePost(HttpServletRequest req){
		String title=req.getParameter("title");
		String email=req.getParameter("email");
		String language=req.getParameter("language");
		String director=req.getParameter("director");
		String year=req.getParameter("year");
		String photo=req.getParameter("photo");
		Movie movie=new Movie();
		movie.setDirector(director);
		movie.setEmail(email);
		movie.setLanguage(language);
		movie.setPhoto(photo);
		movie.setTitle(title);
		movie.setYear(year);
		System.out.println(movie);
		System.out.println("Saving movie inside the database!");
		moviesService.addMovie(movie);
		req.setAttribute("message","Hey! your data is uploaded successfully into the database!");
		return "upload-movie";
	}
}
