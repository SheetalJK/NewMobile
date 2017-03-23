package com.newmobile.dao;

import java.util.List;

import com.newmobile.entity.User;

public interface UserDao 
{
 public void addUser(User user); 
 public List<User> listUser();
 public User getUserById(int userId);
 public User getUserByName(String username);

}
