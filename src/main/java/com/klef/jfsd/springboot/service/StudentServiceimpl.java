package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AssignmentRepoitory;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceimpl implements StudentService {
	@Autowired
	 private StudentRepository studentRepository;

	@Autowired
	 private AssignmentRepoitory assignmentRepoitory;




	@Override
	public Student checkstudentlogin(String email, String pwd) {
		return studentRepository.checkstudentlogin(email, pwd);
	}
	
	@Autowired
	private FacultyCourseMappingRepository facultyCourseMappingRepository;
	
	
	
	
	
	
	@Override
	public List<Student> ViewAllStudents() {
		return studentRepository.findAll();
	}
	
	public String submitAssignment(Assignment assignment) {
		assignmentRepoitory.save(assignment);
		return "submission Added Successfully";

	}

	
	
}
