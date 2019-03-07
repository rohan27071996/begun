package com.pack.service;

import java.util.List;

import com.pack.dao.VendorDaoImpl;
import com.pack.model.Login;
import com.pack.model.Product;
import com.pack.model.Profile;

public class VendorServiceImpl implements VendorService {

	@Override
	public Profile verifyVendor(Login lo) {
		// TODO Auto-generated method stub
		VendorDaoImpl a1=new VendorDaoImpl();
		Profile p=a1.verifyVendor(lo);
		return p;
	}

	@Override
	public List<Product> listAllProducts() {
		// TODO Auto-generated method stub
		VendorDaoImpl a=new VendorDaoImpl();
		List<Product> l=a.listAllProducts();
		return l;
	}

	@Override
	public int removeProductById(String pid) {
		// TODO Auto-generated method stub
		VendorDaoImpl a=new VendorDaoImpl();
		int i=a.removeProductById(pid);
		return i;
	}

	@Override
	public Product fetchProductById(String pid) {
		// TODO Auto-generated method stub
		VendorDaoImpl a=new VendorDaoImpl();
		Product p=a.fetchProductById(pid);
		return p;
	}

	@Override
	public int addProduct(Product p) {
		// TODO Auto-generated method stub
		VendorDaoImpl s=new VendorDaoImpl();
		int i=s.addProduct(p);
		return i;
	}

	@Override
	public int updateStatus(String username) {
		VendorDaoImpl s=new VendorDaoImpl();
		int i=s.updateStatus(username);
		return i;
	}

}
