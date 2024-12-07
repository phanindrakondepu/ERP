package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
  private EmployeeRepository employeeRepository;
  
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private StudentRepository studentRepository;
  
	@Override
	public List<Employee> ViewAllEmployees() {
		
		return employeeRepository.findAll();
	}


	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		 
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public Employee displayempbyid(int eid) {
		return employeeRepository.findById(eid).get();
	}

	@Override
	public long empcount() {
	  return employeeRepository.count();	
	}

	@Override
	public String deleteemp(int eid) {
		 employeeRepository.deleteById(eid);
		 return "Employee Deleted Successfully";
	}

	@Override
	public String updateemployeestatus(String status, int eid) {
		
		 employeeRepository.updateEmployeeStatus(status, eid);
		 return  "Employee Status Update Successfully";
	}


	@Override
	public String addstudent(Student c) {
		studentRepository.save(c);
		
		return "Student Added Successfully";
	}

   
	@Override
	public String deletestudent(int eid) {
		studentRepository.deleteById(eid);
		 return "Student Deleted Successfully";
	
	}


	@Override
	public List<Student> ViewAllStudents() {
		return studentRepository.findAll();
	}
	
	
	
	
	
	
	
	
	
	
	
	@Autowired
    private CourseRepository courseRepository;
    
	@Autowired
    private FacultyRepository facultyRepository;
	
	@Autowired
	private FacultyCourseMappingRepository facultyCourseMappingRepository;
	
	@Override
	public List<Faculty> displayAllFaculty() 
	{
		return facultyRepository.findAll();
	}


	@Override
	public List<Course> displayAllCourses() 
	{
		return courseRepository.findAll();
	}

	@Override
	public Faculty displayFacultyById(int fid) 
	{
		return facultyRepository.findById(fid).get();
	}

	@Override
	public Course displayCourseById(int cid) 
	{
		return courseRepository.findById(cid).get();
	}

	@Override
	public String facultyCourseMapping(FacultyCourseMapping fcm) 
	{
		facultyCourseMappingRepository.save(fcm);
		return "Faculty Course Mapping Done";
	}

	@Override
	public List<FacultyCourseMapping> displayFacultyCourseMapping() 
	{
		return (List<FacultyCourseMapping>) facultyCourseMappingRepository.findAll();
	}


	@Override
	public long checkFacultyCourseMapping(Faculty f, Course c, int section) 
	{
		return facultyCourseMappingRepository.checkfcoursemapping(f, c, section);
	}
	
	
	
	
	
	
	
	
	
	
	

}
