package com.niit.electroMart.Service;

import java.util.List;
import java.util.Map;

import com.niit.electroMart.Model.Supplier;

public interface SupplierService {
	
public List<Supplier> getAllSupplier();
	
	public Supplier getSupplierById(String id);
	
	public void addSupplier(Supplier supplier);
	
	public void deleteSupplier(String id);

	public Map<String, String> getSuppliers();
}
