package com.newmobile.dao;

import java.util.List;

import com.newmobile.entity.Product;

public interface ProductDao 
{
	public void addProduct(Product product);
	public List<Product>listProduct();
	public Product getProductById(int productid);
	
	public Product getProductByName(String productName);
	public String listProductByJSON();
}
