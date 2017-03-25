package com.newmobile.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.newmobile.dao.CartDao;
import com.newmobile.entity.Cart;
import com.newmobile.entity.CartItem;
import com.newmobile.entity.Product;

@Repository
public class CartDAOImpl implements CartDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addtoCart(CartItem cartItem) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}

	/*public List<Cart> listCart() 
	{
		List<Cart> clist = sessionFactory.getCurrentSession().createQuery("from Cart").getResultList();
		return clist;
	}*/

	public List<CartItem> getCartListByUserId(int userId) {
		List<CartItem> cartList = sessionFactory.getCurrentSession().createQuery("from CartItem").getResultList();
		return cartList;
	}

	public String cartItemListByJSON(int userId) 
	{
		List<CartItem> cartList = sessionFactory.getCurrentSession().createQuery("from CartItem where userId = "+userId+" and flag = 'N'").getResultList();
		Gson g= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String clist=g.toJson(cartList);
		return clist;
	}



}
