package com.newmobile.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class SubCategory 
{
@Id	
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int subCategoryid;
private String subCategoryname;
private String subCategorydescription;
private int categoryId;

@ManyToOne
@JoinColumn(name="categoryId", updatable=false, insertable=false, nullable=false)
private Category category;

public Category getCategory()
{
	return category;
}
public void setCategory(Category category)
{
	this.category = category;
}

public int getSubCategoryid() 
{
	return subCategoryid;
}
public void setSubCategoryId(int subCategoryid) 
{
	this.subCategoryid = subCategoryid;
}
public String getSubCategoryname() {
	return subCategoryname;
}
public void setSubCategoryname(String subCategoryname) 
{
	this.subCategoryname = subCategoryname;
}
public String getSubCategorydescription() 
{
	return subCategorydescription;
}
public void setSubCategorydescription(String subCategorydescription) 
{
	this.subCategorydescription = subCategorydescription;
}
public int getCategoryid() 
{
	return categoryId;
}
public void setCategoryid(int categoryId) 
{
	this.categoryId = categoryId;
}

}