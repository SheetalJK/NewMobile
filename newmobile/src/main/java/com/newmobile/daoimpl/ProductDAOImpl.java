package com.newmobile.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.newmobile.dao.ProductDao;
import com.newmobile.entity.Product;


@Repository
public class ProductDAOImpl implements ProductDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);		
	}

	public List<Product> listProduct() 
	{
		List<Product>listProduct = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return listProduct;
	}
	public void removeProduct(int productId) 
	{
		Product product = sessionFactory.getCurrentSession().load(Product.class,new Integer(productId));
		if(null!=product)
		{
			sessionFactory.getCurrentSession().delete(product);
		}
	}
	@SuppressWarnings("unchecked")
	public Product getProductByName(String productName)
	{
		List<Product>plist=sessionFactory.getCurrentSession().createQuery("from Product where productName = "+"'"+productName).getResultList();
		return plist.get(0);
	}
	@SuppressWarnings("unchecked")
	public Product getProductById(int productId) 
	{
		String hql="from Product where productId="+productId;
		List<Product> plist = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return plist.get(0);		
	}
	public void deleteProduct(int productId)
	{
		Product p=new Product();
		p.setProductId(productId);
		sessionFactory.getCurrentSession().delete(p);
	}
	
	@SuppressWarnings("unchecked")
	public String listProductByJSON()
	{	
		List<Product> productlist = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		Gson g= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String productlistJSON=g.toJson(productlist);
		return productlistJSON;		
	}


}
