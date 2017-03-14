package com.newmobile.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newmobile.dao.SupplierDao;
import com.newmobile.entity.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addSupplier(Supplier supplier)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(supplier);
	}
	
	public List<Supplier> listSupplier()
	{
		Session session = this.sessionFactory.getCurrentSession();
		List<Supplier> SupplierList = session.createQuery("from Supplier").getResultList();
		return SupplierList;
	}
	
	
	public void removeSupplier(int supplierid)
	{
		
		Supplier supplier = sessionFactory.getCurrentSession().load(Supplier.class, new Integer(supplierid));
		if(null!=supplier)
		{
			sessionFactory.getCurrentSession().delete(supplier);
		}
	}
	@SuppressWarnings("unchecked")
	public Supplier getSupplierByName(String supplierName)
	{
		
		List<Supplier> slist = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierName = "+"'"+supplierName+"'").getResultList();
		return slist.get(0);
	}
	@SuppressWarnings("unchecked")
	public Supplier getSupplierById(int supplierid)
	{
		String hql = "from Supplier where supplierId="+supplierid;
		List<Supplier>slist = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return slist.get(0);
	}
	
	public void deleteSupplier(int supplierId) 
	{
		Supplier s=new Supplier();
		s.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(s);
		
	}
}
