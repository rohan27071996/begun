package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pack.DBUtility;

import com.pack.model.Student;

public class StudentDaoImpl implements StudentDao {

	@Override
	public int insertStudent(Student s) {
		// TODO Auto-generated method stub
		Connection con=null;
		PreparedStatement ps=null;
		int i=0;
		try
		{
			con=DBUtility.getConnection();
			con.setAutoCommit(false);
			ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
			ps.setString(1, s.getId());
			ps.setString(2, s.getName());
			ps.setString(3, s.getGender());
			ps.setString(4, s.getCourse());
			ps.setString(5, s.getAddr());
			i=ps.executeUpdate();
			con.commit();
			
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

	@Override
	public List<Student> listAllStudent(Student s) {
		// TODO Auto-generated method stub
		Connection con=null;
		PreparedStatement ps=null;
		int i=0;
		List<Student> l=new ArrayList<>();
		try
		{
			con=DBUtility.getConnection();
			con.setAutoCommit(false);
			ps=con.prepareStatement("select stuid,sname,gender,course,address from student");
			ResultSet rs=ps.executeQuery();
			l=new ArrayList<>();
			while(rs.next())
			{
				Student st=new Student();
				st.setId(rs.getString("stuid"));
				st.setName(rs.getString("sname"));
				st.setGender(rs.getString("gender"));
				st.setCourse(rs.getString("course"));
				st.setAddr(rs.getString("address"));
				l.add(st);
			}
			con.commit();	
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
		return l;
	}
}
