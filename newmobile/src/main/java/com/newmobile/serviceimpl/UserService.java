package com.newmobile.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newmobile.daoimpl.UserDAOImpl;
import com.newmobile.entity.User;

@Service
@Transactional
public class UserService 
{
	@Autowired
	private UserDAOImpl userDaoImpl;
	
	public void addUser(User user) 
	{
		this.userDaoImpl.addUser(user);
	}
}
