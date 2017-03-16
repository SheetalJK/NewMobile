package com.newmobile.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.newmobile.entity.User;
import com.newmobile.serviceimpl.UserService;

@Controller
public class UserController 
{
	@Autowired
	private UserService userService;

	@RequestMapping("/registrationpage")
	public String userRegistrationPage(Model model)
	{
		model.addAttribute("user", new User());
		return "RegistrationPage";		
	}
	@RequestMapping("/adduser")
	public String addUser(@ModelAttribute ("user") User user)
	{
		userService.addUser(user);
		
		return "redirect/Login";		
	}
	@RequestMapping("/login")
	public String getuserLogin()	
	{
		return "Login";		
	}
	
	
}
