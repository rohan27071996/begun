package com.pack.dao;

import java.util.List;

import com.pack.model.Login;
import com.pack.model.Product;
import com.pack.model.Profile;

public interface VendorDao {
	public Profile verifyVendor(Login lo);
	public List<Product> listAllProducts();
	public int removeProductById(String pid);
	public Product fetchProductById(String pid);
	public int addProduct(Product p);
	public int updateStatus(String username);
}
