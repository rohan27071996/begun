package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.pack.DBUtility;
import com.pack.model.Login;

public class AdminDaoImpl implements AdminDao {

	@Override
	public int verifyAdmin(Login lo) {
		// TODO Auto-generated method stub
		Connection con=null;
		PreparedStatement ps=null;
		int i=0;
		String username="";
		try
		{
			/*con=DBUtility.getConnection();*/
			con=DBUtility.getDataSource().getConnection();
			con.setAutoCommit(false);
			username=lo.getUsername();
			ps=con.prepareStatement("select username,password,status from login");
			ResultSet rs=ps.executeQuery();
			rs.next();
			if(lo.getUsername().equals(rs.getString("username")) && lo.getPassword().equals(rs.getString("password")) && rs.getString("status").equals("Valid"))
			{
				ps=con.prepareStatement("select name from profiles where profile.id=");
				return 1;
			}
			else
			{
				if(lo.getUsername()==rs.getString("username"))
				{
					return 2;
				}
				else if(lo.getPassword()==rs.getString("password"))
				{
					return 3;
				}
				else
					return 0;
					
			}
				
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			try
			{
				if(con!=null)
				{
					con.close();
					ps.close();
				}
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		return i;
	}

}
