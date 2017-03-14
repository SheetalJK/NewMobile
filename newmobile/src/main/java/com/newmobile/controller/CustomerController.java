package com.newmobile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newmobile.entity.Customer;
import com.newmobile.serviceimpl.CustomerService;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value="/registrationForm")
	public String getRegistrationForm(Model model)
	{
		model.addAttribute("customer",new Customer());
		return "registerCustomer";		
	}
	/*@RequestMapping("/registerCustomer")
	public String registerCustomer(@ModelAttribute(value="customer") Customer customer, BindingResult result, Model model)
	{
		if(result.hasErrors())
			return "registerCustomer";
		try{
			customerService.saveCutomer(customer);
		}
		catch(Exception e)
		{
			model.addAttribute("duplicateUsername", "Username already exists");
			return "registerCustomer";
		}		
		return "home";
	}*/


}
