package com.niit.tlc.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.tlc.model.User;
import com.niit.tlc.service.UserService;


@Controller
public class ApplicationController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String indexView()
	{
		return "index";
	}

	
	
	@GetMapping("/registration")
	public String signUpForm(ModelMap theSignUpModel)
	{
		theSignUpModel.addAttribute("customer",new User());
		return "registration";
	}
	
	@PostMapping("/register")
	public ModelAndView signUpProcess(@ModelAttribute("customer") User newUser)
	{
		
		ModelAndView model=new ModelAndView("index");
		newUser.setRegisteredDate(new Date());
		newUser.setLoginDate(new Date());
		userService.save(newUser);
		return model;
		
				
	}
	
	
	@GetMapping("/login")
	public String loginForm(ModelMap theLoginModel)
	{
		theLoginModel.addAttribute("customer", new User());
		return "login";
	}
	@PostMapping("/signIn")
	public ModelAndView loginProcess(HttpServletRequest request,@ModelAttribute("customer") User loginUser)
	{
		ModelAndView model=null;
		
		User activeUser=userService.login(loginUser);
		if(activeUser==null)
		{
			model=new ModelAndView("login");
			model.addObject("error","Email or Password Incorrect");
		}
		else
		{
			request.getSession().setAttribute("userDetails", activeUser);
			model=new ModelAndView("searchCustomer");
			model.addObject("customerlist",userService.findAll());
		}
		return model;
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
}
