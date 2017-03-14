package com.newmobile.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.newmobile.dao.CategoryDao;
import com.newmobile.entity.Category;

@Repository
public class CategoryDAOImpl implements CategoryDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void addCategory(Category category) 
	{
		
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	public List<Category> listCategory() 
	{
		
		List<Category> CategoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return CategoryList;
	}
	
	/*public String listCategoryByJSON() {
		List<Category> categoryList = this.sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		Gson g=new Gson();
		String categoryListJSON=g.toJson(categoryList);
		return categoryListJSON;
	}*/
    
	/*@SuppressWarnings("unchecked")
	public String stringCategory() 
	{		
		List<Category> categoryJList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		//Gson gson = new Gson();
		String categoryGson = gson.toJson(categoryJList);
		//String CategoryJList = gson.toJson(categoryJList);
		return categoryGson;
	}*/
	
	public void removeCategory(int categoryid) 
	{
		
		Category category = sessionFactory.getCurrentSession().load(Category.class, new Integer(categoryid));
		if(null != category)
		{
			sessionFactory.getCurrentSession().delete(category);
		}
	}
	
	@SuppressWarnings("unchecked")
	public Category getCategoryByname(String categoryName) {
			
		List<Category> clist = sessionFactory.getCurrentSession().createQuery("from Category where categoryName = " + "'"+categoryName+"'").getResultList();
		return clist.get(0);
	}
	
	@SuppressWarnings("unchecked")
	public Category getCategoryById(int categoryId) 
	{
		//Session session = this.sessionFactory.getCurrentSession();		
		String hql = "from Category where categoryId="+categoryId;
		List<Category> clist = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return clist.get(0);
	}
	
	public void deleteCategory(int categoryId) 
	{
		Category c=new Category();
		c.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(c);
	}

	

}
