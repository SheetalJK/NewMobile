package com.newmobile.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.newmobile.dao.SubCategoryDao;
import com.newmobile.entity.SubCategory;
@Repository
public class SubCategoryDAOImpl implements SubCategoryDao
{
@Autowired
	private SessionFactory sessionFactory;

	
	public void subAddCategory(SubCategory subcategory) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(subcategory);
	}
	
	public List<SubCategory> subListCategory()
	{
		List<SubCategory> subListCategory = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		return subListCategory; 
			
	}
	
	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryByName(String subCategoryname)
	{
		Session session=sessionFactory.getCurrentSession();
		String str = "from SubCategory where subCategoryname = " + "'" + subCategoryname + "'";
		List<SubCategory>subCategoryByname=session.createQuery(str).getResultList();
		return subCategoryByname.get(0);
	}
	@SuppressWarnings("unchecked")
	public SubCategory subGetCategoryById(int subCategoryid)
	{
		String hql = "from SubCategory where subCategoryid="+subCategoryid;
		List<SubCategory>subcategoryList=sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		//SubCategory subcategory=(SubCategory)session.load(SubCategory.class,new Integer(subcategoryid));
		return subcategoryList.get(0);
	}
	public void deleteSubCategory(int subCategoryid)
	{
		SubCategory sc=new SubCategory();
		sc.setSubCategoryId(subCategoryid);
		sessionFactory.getCurrentSession().delete(sc);
	}
	
	
}
