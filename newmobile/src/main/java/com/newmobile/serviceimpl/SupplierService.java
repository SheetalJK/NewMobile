package com.newmobile.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newmobile.daoimpl.SupplierDAOImpl;
import com.newmobile.entity.Supplier;

@Service
@Transactional
public class SupplierService 
{
	@Autowired
	private SupplierDAOImpl supplierDAOImpl;
	
	public void addSupplier(Supplier supplier)
	{
		this.supplierDAOImpl.addSupplier(supplier);
	}
		
	public List<Supplier> listSupplier()
	{
		return this.supplierDAOImpl.listSupplier();
	}
	
	public Supplier getSupplierById(int supplierid)
	{
		return this.supplierDAOImpl.getSupplierById(supplierid);
	}
	
	public Supplier getSupplierByName(String supplierName)
	{
		return this.supplierDAOImpl.getSupplierByName(supplierName);
	}
	public Supplier editSupplierById(int supplierId)
	{
		return supplierDAOImpl.getSupplierById(supplierId);
	}
	public void deleteSupplier(int supplierId)
	{
		supplierDAOImpl.deleteSupplier(supplierId);
	}
	

	
}
