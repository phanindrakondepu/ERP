package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService
{
   public List<Employee> ViewAllEmployees();
   public Admin checkadminlogin(String uname,String pwd);
   public Employee displayempbyid(int eid);
   public long empcount();
   public String deleteemp(int eid);
   public String updateemployeestatus(String status,int eid);
   
   
   public String addstudent(Student c );
   public String deletestudent(int eid);
   public List<Student> ViewAllStudents();
   
   
   
   
   
   public List<Course> displayAllCourses();
   public List<Faculty> displayAllFaculty();
   
   public Faculty displayFacultyById(int fid);
   public Course displayCourseById(int cid); 
   
   public String facultyCourseMapping(FacultyCourseMapping fcm);
   public List<FacultyCourseMapping> displayFacultyCourseMapping();
   
   public long checkFacultyCourseMapping(Faculty f,Course c,int section);
   
   
   

}
