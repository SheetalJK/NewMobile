package com.newmobile.serviceimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newmobile.daoimpl.CategoryDAOImpl;
import com.newmobile.entity.Category;

@Service
@Transactional
public class CategoryService {
	@Autowired
	private CategoryDAOImpl categoryDAOImpl;

	public void addCategory(Category category) 
	{
		this.categoryDAOImpl.addCategory(category);
	}
		
	public List<Category> listCategory() {
		return this.categoryDAOImpl.listCategory();
	}
	
	/*public String stringCategory()
	{
		return this.categoryDAOImpl.listCategoryByJSON();
	}*/
	
	public Category getCategoryById(int categoryid)
	{
		return this.categoryDAOImpl.getCategoryById(categoryid);
	}
	
	
	public Category getCategoryByName(String categoryName) {
		return this.categoryDAOImpl.getCategoryByname(categoryName);
	}
	
	
	public Category editCategoryById(int categoryId)
	{
		return categoryDAOImpl.getCategoryById(categoryId);
	}
	
	public void deleteCategory(int categoryId)
	{
		categoryDAOImpl.deleteCategory(categoryId);
	}
	
	

}
