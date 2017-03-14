package com.newmobile.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newmobile.daoimpl.SubCategoryDAOImpl;
import com.newmobile.entity.SubCategory;

@Service
@Transactional
public class SubCategoryService {
@Autowired
	private SubCategoryDAOImpl subCategoryDAOImpl;

	public void subAddCategory(SubCategory SubCategory)
	{
		subCategoryDAOImpl.subAddCategory(SubCategory);
	}
	
	@Transactional
	public List<SubCategory> subListCategory()
	{
		return subCategoryDAOImpl.subListCategory();
	}
	public SubCategory subGetCategoryById(int subcategoryid)
	{
		return subCategoryDAOImpl.subGetCategoryById(subcategoryid);
	}
	
	@Transactional
	public SubCategory subGetCategoryByName(String subcategoryname)
	{
		return subCategoryDAOImpl.getSubCategoryByName(subcategoryname);
	}
	
	public SubCategory editSubCategoryById(int subCategoryid)
	{
		return subCategoryDAOImpl.subGetCategoryById(subCategoryid);
	}
	public void deleteSubCategory(int subCategoryid)
	{
		subCategoryDAOImpl.deleteSubCategory(subCategoryid);
	}
}