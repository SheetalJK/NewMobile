package com.newmobile.controller;

import java.security.Principal;

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
import org.springframework.web.bind.annotation.RequestMethod;
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
		
		return "Login";		
	}
	@RequestMapping("/login")
	public String getuserLogin(Model model, Principal principal)
	{
			return "Login";		
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication!=null)
		{
			new SecurityContextLogoutHandler().logout(request,response,authentication);
		}
		return "Login";
	}
	
	/*@RequestMapping("/login")
	public String getuserLogin(@RequestParam(value="logout", required = false) Model model, Principal principal)
	{
			if(logout!=null)
			return "Login";		
	}*/
}
	
	

