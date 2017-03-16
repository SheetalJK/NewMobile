package com.newmobile.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.newmobile.dao.UserDao;
import com.newmobile.entity.Cart;
import com.newmobile.entity.User;


@Repository
public class UserDAOImpl implements UserDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addUser(User user) 
	{
		Session session = sessionFactory.getCurrentSession();
		
		user.setEnabled(true);
		user.setRole("Role_User");
		session.saveOrUpdate(user);
				
		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		//System.out.println("create id is:"+ cart.getCartId());
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);
		
		//System.out.println("create id is:"+ cart.getCartId());
		session.saveOrUpdate(user);
	}

}
