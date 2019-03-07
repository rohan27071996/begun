package com.pack.service;

import java.util.List;

import com.pack.model.Login;
import com.pack.model.Product;
import com.pack.model.Profile;

public interface VendorService {
	public Profile verifyVendor(Login lo);
	public List<Product> listAllProducts();
	public int removeProductById(String pid);
	public Product fetchProductById(String pid);
	public int addProduct(Product p);
	public int updateStatus(String username);
}
