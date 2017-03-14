package com.newmobile.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.newmobile.entity.Category;
import com.newmobile.entity.SubCategory;
import com.newmobile.serviceimpl.CategoryService;
import com.newmobile.serviceimpl.SubCategoryService;

@Controller
public class SubCategoryController 
{
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/subcategory")
	public String subGetCategory(Model model)
	{
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.listCategory());
		model.addAttribute("subCategoryList",subCategoryService.subListCategory());
		return"SubCategoryForm";
	}
	
	@RequestMapping("/addsubcategory")
	public String addSubCategory(@ModelAttribute("subCategory")SubCategory subCategory, HttpSession session)
	{	
		/*Category category= new Category();
				
		category =	categoryService.getCategoryByName(subCategory.getCategory().getCategoryName());
		categoryService.addCategory(category);*/
	    	
		Category c = categoryService.getCategoryByName(subCategory.getCategory().getCategoryName());
		subCategory.setCategory(c);
		subCategory.setCategoryid(c.getCategoryId());
		
		if(session.getAttribute("subcategoryId") != null )
		{
		subCategory.setSubCategoryId((Integer) session.getAttribute("subcategoryId"));
		}
		session.removeAttribute("subcategoryId");
		subCategoryService.subAddCategory(subCategory);
		return "redirect:/subcategory";
		
	}
	@RequestMapping(value="/editsubcategory-{subCategoryid}",method= RequestMethod.GET)
	public String editSubCategory(@PathVariable("subCategoryid")int subCategoryid,Model model, HttpSession session)
	{
		SubCategory subcategory=subCategoryService.subGetCategoryById(subCategoryid);
		
		System.out.println("name is : "+ subcategory.getSubCategoryname());
		System.out.println("id is:"+subcategory.getSubCategoryid());
		session.setAttribute("subcategoryId", subcategory.getSubCategoryid());
		model.addAttribute("subCategory", subcategory);
		model.addAttribute("subCategoryList",subCategoryService.subListCategory());
		model.addAttribute("categoryList",categoryService.listCategory());
		
		return "SubCategoryForm";
	}
	@RequestMapping("/deletesubcategory-{subCategoryid}")
	public String deleteSubCategory(@PathVariable("subCategoryid") int subCategoryid)
	{
		subCategoryService.deleteSubCategory(subCategoryid);
		return"redirect:/subcategory";
	}

}
