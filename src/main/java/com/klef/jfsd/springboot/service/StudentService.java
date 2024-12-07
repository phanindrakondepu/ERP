package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
	 public Student checkstudentlogin(String email,String pwd);
	  
	 
	 
	 public List<Student> ViewAllStudents();
	
	 public String submitAssignment(Assignment assignment);


}
