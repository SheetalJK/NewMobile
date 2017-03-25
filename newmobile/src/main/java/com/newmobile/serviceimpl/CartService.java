package com.newmobile.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.JsonElement;
import com.newmobile.daoimpl.CartDAOImpl;
import com.newmobile.entity.Cart;
import com.newmobile.entity.CartItem;
import com.newmobile.entity.Category;

@Service
@Transactional
public class CartService 
{
	@Autowired
	private CartDAOImpl cartDAOImpl;
	
	public void addtoCart(CartItem cartItem) 
	{
		cartDAOImpl.addtoCart(cartItem);
	}
	
	public List<CartItem> getCartListByUserId(int userId)
	{
		return this.cartDAOImpl.getCartListByUserId(userId);
		
	}
	public String cartItemListByJSON(int userId) 
	{
		return this.cartDAOImpl.cartItemListByJSON(userId);
	}
}
