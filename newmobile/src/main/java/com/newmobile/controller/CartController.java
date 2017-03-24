package com.newmobile.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.persistence.ManyToOne;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.newmobile.entity.Cart;
import com.newmobile.entity.CartItem;
import com.newmobile.serviceimpl.CartService;
import com.newmobile.serviceimpl.ProductService;
import com.newmobile.serviceimpl.UserService;

@Controller
public class CartController 
{
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/addtocart-{productId}")
	public String addtoCart(@PathVariable("productId") int productId, Principal p, @ModelAttribute()CartItem cartItem )
	{
		String username = p.getName();
		
		int userId = userService.getUserByName(username).getUserId();
		
		cartItem.setUserId(userId);
		cartItem.setCartId(userId);
		
		String pname = productService.getProductById(productId).getProductName();
		int price = productService.getProductById(productId).getPrice();
		cartItem.setProductName(pname);
		cartItem.setRate(price);
		
		cartItem.setQuantity(1);
		cartItem.setAmount(cartItem.getQuantity()*cartItem.getRate());
		Date d = new Date();
		cartItem.setDateofOrdered(d);
		
		cartItem.setFlag("n");
		
		cartService.addtoCart(cartItem);
		
		return "CartList";
		
	}
	@RequestMapping("/carlist")
	public String getCartList(Model model)
	{
		
		return null;
		
	}
}