package com.newmobile.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.newmobile.dao.CustomerDao;
import com.newmobile.entity.Authorities;
import com.newmobile.entity.Cart;
import com.newmobile.entity.Customer;
@Repository
public class CustomerDAOImpl implements CustomerDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveCustomer(Customer customer) 
	{
		customer.getUser().setEnabled(true);
		String username=customer.getUser().getUsername();
		String role="ROLE_USER";
		
		Authorities authorities = new Authorities();
		authorities.setUsername(username);
		authorities.setRole(role);
		sessionFactory.getCurrentSession().save(authorities);

		Cart cart = new Cart();
		customer.setCart(cart);		
		cart.setCustomer(customer);
		sessionFactory.getCurrentSession().save(customer);
		
		
	}

}
