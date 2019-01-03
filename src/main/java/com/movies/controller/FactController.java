package com.movies.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller // means this class will act as model!
public class FactController {
	
	@GetMapping("/cal-fact")
	public String calFact(HttpServletRequest request){
		String num=request.getParameter("num");
		int sum=1;
		for(int x=2;x<=Integer.parseInt(num);x++){
			sum=sum*x;
		}
		request.setAttribute("result",sum);
	    /*<property name="prefix" value="/"/>
        <property name="suffix" value=".jsp"/>
		*/return "result";  //  /result.jsp
	}
	

}
