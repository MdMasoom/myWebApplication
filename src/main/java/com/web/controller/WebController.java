//package com.web.controller;
//
//import java.io.IOException;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//@Controller
//public class WebController {
//	
//	@RequestMapping(value="/", method=RequestMethod.GET)
//	public void index(HttpServletRequest request, HttpServletResponse response){
//		String homeUrl = request.getRequestURL().toString()+"home";
//		//System.out.println(homeUrl);
//		try {
//			response.sendRedirect(homeUrl);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		//return "index";
//	}
//	
//	@RequestMapping(value="/home", method=RequestMethod.GET)
//	public String home(){
//		return "index";
//	}
//	
//	@RequestMapping(value="/signup", method=RequestMethod.GET)
//	public String register(){
//		return "register";
//	}
//
//}
