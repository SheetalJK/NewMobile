package com.newmobile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newmobile.serviceimpl.CategoryService;


@Controller
public class MainController 
{
	@Autowired
	CategoryService categoryService;
	
@RequestMapping("/")
	public String getHome(Model model)
	{
		model.addAttribute("categoryList", categoryService.listCategory());
		return "index";
	}

	

}
