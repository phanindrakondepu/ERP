package com.klef.jfsd.springboot.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class EmployeeSeviceImpl  implements EmployeeService
{
	@Autowired
	
	  private EmployeeRepository employeeRepository;
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public String EmployeeRegistration(Employee emp) {
		
		employeeRepository.save(emp);
		return "Employee Registered Successfully";
	}

	@Override
	public Employee checkregistrationlogin(String email, String pwd) {
		
		return employeeRepository.checkregistrationlogin(email, pwd);

	}

	@Override
	public String updateEmployeeProfile(Employee employee) 
	{
		Employee e = employeeRepository.findById(employee.getId()).get();
	    
	    e.setContact(employee.getContact());
	    e.setDateofbirth(employee.getDateofbirth());
	    e.setDepartment(employee.getDepartment());
	    e.setGender(employee.getGender());
	    e.setLocation(employee.getLocation());
	    e.setName(employee.getName());
	    e.setPassword(employee.getPassword());
	    e.setSalary(employee.getSalary());
	    
	    employeeRepository.save(e);
	    
	    return "Employee Updated Successfully";
	}

	@Override
	public Employee displayEmployeeId(int eid) {
		
		return employeeRepository.findById(eid).get();
	}
	  	
	
	
	
	
	
	
	
}
