package com.newmobile.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.newmobile.entity.Category;
import com.newmobile.serviceimpl.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/category")
	public String getCategory(Model model) 
	{

		model.addAttribute("category",new Category());
		model.addAttribute("categoryList",categoryService.listCategory());
	  //model.addAttribute("categoryListJSON", categoryService.stringCategory());
		return "CategoryForm";
	}
	
	@RequestMapping("/addcategory")
	public String addCatgory(@Valid@ModelAttribute("category") Category category, BindingResult result) 
	{
		if(result.hasErrors())
		{
			return "CategoryForm";
		}
		categoryService.addCategory(category);
		return "redirect:/category";
	}
	
	@RequestMapping(value="/editcategory-{categoryId}", method= RequestMethod.GET)
	public String editCategory(@PathVariable("categoryId") int categoryId, Model model)
	{
		Category category = categoryService.getCategoryById(categoryId);
		
		System.out.println("id is:"+ category.getCategoryId());
		model.addAttribute("category", category);
		model.addAttribute("categoryList",categoryService.listCategory());
	  //model.addAttribute("categoryString", categoryService.stringCategory());
		return "CategoryForm";
	}
	@RequestMapping("/deletecategory-{categoryId}")
	public String deleteCatgeory(@PathVariable("categoryId") int categoryId)
	{
		categoryService.deleteCategory(categoryId);
		return "redirect:/category";
	}
	
	/*public ModelAndView viewCategory(@ModelAttribute("category") Category category)
	{
		List<Category> CategoryList = categoryService.listCategory();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String categoryGson = gson.toJson(category);
		ModelAndView model = new ModelAndView("viewCategory");
		model.addObject("listCategory", categoryService.listCategory());
		model.addObject("categoryGson", categoryGson);
		return model;		
	}*/
		
}
