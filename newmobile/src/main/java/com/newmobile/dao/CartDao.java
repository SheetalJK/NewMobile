package com.newmobile.dao;

import java.util.List;

import com.newmobile.entity.Cart;
import com.newmobile.entity.CartItem;


public interface CartDao 
{
	public void addtoCart(CartItem cartItem);
	public List<Cart> listCart();
}
