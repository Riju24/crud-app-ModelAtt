package com.cognizant.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping(value="index", method=RequestMethod.GET)
	public ModelAndView up()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="up", method=RequestMethod.POST)
	public ModelAndView upda()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("display");
		return mv;
	}
}
