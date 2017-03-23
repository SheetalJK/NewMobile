package com.newmobile.serviceimpl;

import java.util.List;

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
	public List<User> listUser() 
	{
		return this.userDaoImpl.listUser();		
	}
	public User getUserById(int userId)
	{
		return this.userDaoImpl.getUserById(userId);
	}
	public User getUserByName(String username) 
	{
		return this.userDaoImpl.getUserByName(username);		
	}
	
	
}
