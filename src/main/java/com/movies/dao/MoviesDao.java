package com.movies.dao;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.movies.controller.model.Movie;

/**
 * 
 * @author Nagendra
 *
 */

@Repository("MoviesDao")
public class MoviesDao extends JdbcDaoSupport implements IMoviesDao {
	
	@Value("${app.email}")
	private String email;
	
	@Autowired
	//byType
	public void pcreateJdbcTemplate(DataSource dataSource) {
		super.setDataSource(dataSource);
	}
	
	@Override
	public List<Movie> findMovies(){
		String sql="select mid,title,email,language,director,year,photo,doe from movies_tbl";
		List<Movie> movies=super.getJdbcTemplate().query(sql,new BeanPropertyRowMapper(Movie.class));
		return movies;
	}

	@Override
	public void addMovie(Movie movie){
			//it;s constructor
			Timestamp timestamp=new Timestamp(new Date().getTime());
			String sql="insert into movies_tbl(title,email,language,director,year,photo,doe) values(?,?,?,?,?,?,?)";
			Object[] data=new Object[]{movie.getTitle(),movie.getEmail(),movie.getLanguage(),movie.getDirector(),movie.getYear(),movie.getPhoto(),timestamp};
			super.getJdbcTemplate().update(sql,data);
			System.out.println("Hey! movies_tbl has been saved successfully into the database!");
	}
}
