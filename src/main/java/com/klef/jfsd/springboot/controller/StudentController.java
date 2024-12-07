package com.klef.jfsd.springboot.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.EmployeeService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	
	@GetMapping("studentlogin")
	  public ModelAndView emplogin()
	  {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("studentlogin");
	      return mv;
	  }
	@GetMapping("studenthome")
	  public ModelAndView emphome()
	  {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("studenthome");
	      return mv;
	  }
	  
	  @GetMapping("studentprofile")
	  public ModelAndView empprofile()
	  {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("studentprofile");
	      return mv;
	  }
	  
	  @PostMapping("checkstudentlogin")
		//@ResponseBody
		public ModelAndView checkstudentlogin(HttpServletRequest request)
		{
		     ModelAndView mv = new ModelAndView();

			 String eemail= request.getParameter("eemail");
			 String epwd= request.getParameter("epwd");
			 
			Student emp= studentService.checkstudentlogin(eemail, epwd);
			 if(emp!=null) {
				 
				// return "Employee login success";
				 HttpSession session =  request.getSession();
				 session.setAttribute("student", emp);  // employee is session variable
				 
				 // session.setMaxInactiveInterval(5);
				 
				 
				 mv.setViewName("studenthome");
			 }
			 else {
				// return "Employee login fail";
				 mv.setViewName("studentlogin");
				 mv.addObject("message", "Login Failed");
			 }
			 return mv;
		}
	  
	 
	  
	 
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	 
	  
	  @GetMapping("payments")
	  public ModelAndView payments()
	  {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("payments");
		  
	      return mv;
	  }
	  
	  
	  
	  @GetMapping("timetable")
	  public ModelAndView timetable()
	  {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("timetable");
	      return mv;
	  }
	  
	

	  @GetMapping("studentcontact")
	  public ModelAndView empcontactus()
	  {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("studentcontact");
	      return mv;
	  }
	   
	  
	
	  @GetMapping("viewallstudentswithdata")
	    public ModelAndView viewallstudent1()
	    {
	      ModelAndView mv = new ModelAndView();
	      List<Student> emplist = studentService.ViewAllStudents();
	      mv.setViewName("viewallstudentswithdata");
	      mv.addObject("emplist",emplist);
	      
	   
	      return mv;
	    }
	  
	  
	  
	  @GetMapping("StudentData")
	    public ModelAndView viewallstudent2()
	    {
	      ModelAndView mv = new ModelAndView();
	      List<Student> emplist = studentService.ViewAllStudents();
	      mv.setViewName("StudentData");
	      mv.addObject("emplist",emplist);
	      
	   
	      return mv;
	    }
	  
	  
	  
	  
	  @GetMapping("submitAssignment")
	   public ModelAndView submitAssignment()
	   {
		   ModelAndView mv = new ModelAndView("submitAssignment");
		   return mv;
	   }
	  
	  @PostMapping("addAssignment")
	  public ModelAndView addAssignment(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
	      ModelAndView mv = new ModelAndView();
	      try {
	          String name = request.getParameter("name");
	          String description = request.getParameter("description");
	          LocalDate submissionDate = LocalDate.parse(request.getParameter("date"));
	          byte[] fileData = file.getBytes();
	          
	          Assignment assignment = new Assignment();
	          assignment.setAssignmentName(name);
	          assignment.setDescription(description);
	          assignment.setSubmissionDate(submissionDate);
	          // Handle file storage if required
	          
	          String message = studentService.submitAssignment(assignment);
	          mv.setViewName("successassignment");
	          mv.addObject("message", message);
	      } catch (Exception e) {
	          mv.setViewName("assignmentError");
	          mv.addObject("message", e.getMessage());
	      }
	      return mv;
	  }
	
}
