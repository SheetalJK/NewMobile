package com.newmobile.dao;

import java.util.List;

import com.newmobile.entity.Supplier;

public interface SupplierDao 
{
	public void addSupplier(Supplier supplier);
	
	public List<Supplier> listSupplier();
	public Supplier getSupplierById(int supplierId);
	
	
	

}
