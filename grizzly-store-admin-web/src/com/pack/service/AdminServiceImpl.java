package com.pack.service;

import com.pack.dao.AdminDaoImpl;
import com.pack.model.Login;

public class AdminServiceImpl implements AdminService {

	@Override
	public int verifyAdmin(Login lo) {
		// TODO Auto-generated method stub
		AdminDaoImpl a1=new AdminDaoImpl();
		int i=a1.verifyAdmin(lo);
		return i;
	}

}
