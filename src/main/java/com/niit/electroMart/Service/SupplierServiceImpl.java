package com.niit.electroMart.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electroMart.DAO.SupplierDAO;
import com.niit.electroMart.Model.Supplier;


@Service
public class SupplierServiceImpl implements SupplierService{
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	public void setSupplierDAO(SupplierDAO supplierDAO){
		this.supplierDAO = supplierDAO;
	}

	@Override
	@Transactional
	public List<Supplier> getAllSupplier() {
		
		return this.supplierDAO.getAllSupplier();
	}

	@Override
	@Transactional
	public Supplier getSupplierById(String id) {
		return this.supplierDAO.getSupplierById(id);
	}

	@Override
	@Transactional
	public void addSupplier(Supplier supplier) {
		this.supplierDAO.addSupplier(supplier);
		
	}

	

	@Override
	@Transactional
	public void deleteSupplier(String id) {
		this.supplierDAO.deleteSupplier(id);
		
	}
	
	@Override
	@Transactional
	public Map<String, String> getSuppliers() {
		List<Supplier> supplierList = this.supplierDAO.getAllSupplier();
		Map<String, String> suppliers = new LinkedHashMap<String, String>();
		
		for (Supplier supplier : supplierList) {
			suppliers.put(supplier.getId(), supplier.getName());
		}
		
		return suppliers;
	}

	
}



