package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Student;



public interface EmployeeService 
{
  public String EmployeeRegistration(Employee emp);
  public Employee checkregistrationlogin(String email,String pwd);
  public String updateEmployeeProfile(Employee employee);
  public Employee displayEmployeeId(int eid);
  
  
  
 
 
  
}
