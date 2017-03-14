package com.newmobile.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newmobile.daoimpl.ProductDAOImpl;
import com.newmobile.entity.Product;

@Service
@Transactional
public class ProductService 
{
	@Autowired
	private ProductDAOImpl productDAOImpl;
	
	public void addProduct(Product Product)
	{
		this.productDAOImpl.addProduct(Product);
	}
	
	@Transactional
	public List<Product> listProduct()
	{
		return this.productDAOImpl.listProduct();
	}
	
	public Product getProductById(int productId)
	{
		return this.productDAOImpl.getProductById(productId);
	}
	
	public void getProductByName(String productName)
	{
		this.productDAOImpl.getProductByName(productName);
	}
	
	public Product editProductById(int productId)
	{
		return productDAOImpl.getProductById(productId);
	}
	
	public void deleteProduct(int productId)
	{
		productDAOImpl.deleteProduct(productId);
	}

}
