package com.newmobile.dao;

import java.util.List;

import com.newmobile.entity.SubCategory;

public interface SubCategoryDao {

	public void subAddCategory(SubCategory subcategory);

	public List<SubCategory>subListCategory();
	public SubCategory subGetCategoryById(int subCategoryid);
	
}
