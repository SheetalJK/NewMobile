package com.newmobile.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newmobile.dao.CustomerDao;
import com.newmobile.daoimpl.CustomerDAOImpl;
import com.newmobile.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService 
{
	@Autowired
	private CustomerDao customerDao;
	
	public void saveCutomer(Customer customer) 
	{
		customerDao.saveCustomer(customer);	
	}

}
