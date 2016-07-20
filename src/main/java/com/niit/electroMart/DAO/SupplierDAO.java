package com.niit.electroMart.DAO;

import java.util.List;

import com.niit.electroMart.Model.Supplier;

public interface SupplierDAO {

	
public List<Supplier> getAllSupplier();
	
	public Supplier getSupplierById(String id);
	
	public void addSupplier(Supplier supplier);
	
	public void deleteSupplier(String id);
}
