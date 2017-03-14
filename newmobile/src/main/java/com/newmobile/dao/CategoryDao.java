package com.newmobile.dao;

import java.util.List;

import com.newmobile.entity.Category;

public interface CategoryDao 
{

	public void addCategory(Category category);
	
	public List<Category> listCategory();
	public Category getCategoryById(int categoryId);
	public void removeCategory(int categoryId);
	
}
