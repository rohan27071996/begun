package com.pack.service;
import java.util.List;
import com.pack.dao.StudentDaoImpl;
import com.pack.model.Student;

public class StudentServiceImpl implements StudentService {

	@Override
	public int insertStudent(Student s) {
		// TODO Auto-generated method stub
		StudentDaoImpl s1=new StudentDaoImpl();
		int i=s1.insertStudent(s);
		return i;
	}

	@Override
	public List<Student> listAllStudent(Student s) {
		// TODO Auto-generated method stub
		StudentDaoImpl st=new StudentDaoImpl();
		List<Student> l=st.listAllStudent(s);
		return l;
	}

}
