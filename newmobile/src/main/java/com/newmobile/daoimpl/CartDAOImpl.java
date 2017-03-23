package com.newmobile.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.newmobile.dao.CartDao;
import com.newmobile.entity.Cart;
import com.newmobile.entity.CartItem;

@Repository
public class CartDAOImpl implements CartDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addtoCart(CartItem cartItem) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}

	public List<Cart> listCart() 
	{
		List<Cart> clist = sessionFactory.getCurrentSession().createQuery("from Cart").getResultList();
		return clist;
	}

}
