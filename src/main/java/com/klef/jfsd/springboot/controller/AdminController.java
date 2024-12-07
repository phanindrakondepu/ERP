package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		
		long count =adminService.empcount();
		mv.addObject("empcount",count);
		
		return mv;
	}
	
	
	@PostMapping("checkadminlogin")
	//@ResponseBody
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		 String auname= request.getParameter("auname");
		 String apwd= request.getParameter("apwd");
		 
		Admin admin= adminService.checkadminlogin(auname, apwd);
		 if(admin!=null) {
			 //return "admin login success";
			 
			 mv.setViewName("adminhome");
				long count =adminService.empcount();
				mv.addObject("empcount",count);
				
		 }
		 else {
			 //return "admin login fail";
			 
			 mv.setViewName("adminloginfail");
			 mv.addObject("message", "Login Failed");
		 }
		 return mv;
	}
	
	
	
	@GetMapping("viewallemps")
    public ModelAndView viewallemps()
    {
      ModelAndView mv = new ModelAndView();
      List<Employee> emplist = adminService.ViewAllEmployees();
      mv.setViewName("viewallemps");
      mv.addObject("emplist",emplist);
      

		long count =adminService.empcount();
		mv.addObject("empcount",count);
      
      return mv;
    }
	
	@GetMapping("deleteemp")
    public ModelAndView deleteemp()
    {
      ModelAndView mv = new ModelAndView();
      List<Employee> emplist = adminService.ViewAllEmployees();
      mv.setViewName("deleteemp");
      mv.addObject("emplist",emplist);
      return mv;
    }
	
	@GetMapping("updateempstatus")
    public ModelAndView updateempstatus()
    {
      ModelAndView mv = new ModelAndView();
      List<Employee> emplist = adminService.ViewAllEmployees();
      mv.setViewName("updateempstatus");
      mv.addObject("emplist",emplist);
      return mv;
    }
	
	@GetMapping("updatestatus")
	public String updatestatus(@RequestParam("id") int eid ,@RequestParam("status")   String status) {
		adminService.updateemployeestatus(status, eid);
		return "redirect:/updateempstatus";
	}
	
	@GetMapping("delete")
	public String deleteoperation(@RequestParam("id") int eid) {
		adminService.deleteemp(eid);
		return "redirect:/deleteemp";
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("addstudent")
	public String addcustomer(Model m)
	{
		m.addAttribute("student", new Student());
		return  "addstudent";
	}
	
	@PostMapping("insertstudent")
	public ModelAndView insertstudent(@ModelAttribute("student") Student c)
	
	{
		
		ModelAndView mv =new ModelAndView();
		mv.setViewName("studentsuccess");
		
		String msg = adminService.addstudent(c);
		mv.addObject("message",msg);
		
		return mv ;
		
	}
	@GetMapping("viewallstudents")
    public ModelAndView viewallstudent()
    {
      ModelAndView mv = new ModelAndView();
      List<Student> emplist = adminService.ViewAllStudents();
      mv.setViewName("viewallstudents");
      mv.addObject("emplist",emplist);
      
   
      return mv;
    }
	
	@GetMapping("deletestudent")
    public ModelAndView deletestudent()
    {
      ModelAndView mv = new ModelAndView();
      List<Student> emplist = adminService.ViewAllStudents();
      mv.setViewName("deletestudent");
      mv.addObject("emplist",emplist);
      return mv;
    }
	@GetMapping("delete1")
	public String deleteoperation1(@RequestParam("id") int eid) {
		adminService.deletestudent(eid);
		return "redirect:/deletestudent";
	}
	
	
	
	
	
	
	
	
		
	 
	  
	  @GetMapping("viewallcourses")
	  public ModelAndView viewcoures(Model model)
	  {
		  ModelAndView mv = new ModelAndView("viewallcourses");
		 
		  model.addAttribute("coursedata", adminService.displayAllCourses());
		  
		  return mv;
	  }
	  
	  @GetMapping("viewallfaculty")
	  public ModelAndView viewfaculty()
	  {
		  ModelAndView mv = new ModelAndView("viewallfaculty");
		  
		  List<Faculty> facultylist = adminService.displayAllFaculty();
		  mv.addObject("facultydata", facultylist);
		  
		  return mv;
	  }
	  
	  @GetMapping("fcoursemapping")
	  public ModelAndView facultycoursemapping()
	  {
		  ModelAndView mv = new ModelAndView("facultycoursemapping");
	  	  
	      List<Course> courselist = adminService.displayAllCourses();
	      mv.addObject("coursedata", courselist);
		  
		  List<Faculty> facultylist = adminService.displayAllFaculty();
		  mv.addObject("facultydata", facultylist);
		  
		  return mv;
	  }
	  
	  @PostMapping("fcoursemappinginsert")
	  public ModelAndView fcoursemappinginsert(HttpServletRequest request)
	  {
		  String msg=null;
		  
		  ModelAndView mv = new ModelAndView("facultycoursemapping");
		  
		  int fid = Integer.parseInt(request.getParameter("fid"));
		  int cid = Integer.parseInt(request.getParameter("cid"));
		  int section = Integer.parseInt(request.getParameter("section"));
		  String ftype = request.getParameter("ftype");
		  
		  long n = adminService.checkFacultyCourseMapping(adminService.displayFacultyById(fid), adminService.displayCourseById(cid), section);
		  
		  if(n>0)
		  {
			  msg = "Mapping Already Done";
		  }
		  else
		  {
			  FacultyCourseMapping fcm = new FacultyCourseMapping();
			  
			  fcm.setCourse(adminService.displayCourseById(cid));
			  fcm.setFaculty(adminService.displayFacultyById(fid));
			  fcm.setSection(section);
			  fcm.setFacultytype(ftype);
			  
			  msg = adminService.facultyCourseMapping(fcm);
			  
		  }
		  
		  mv.addObject("message", msg);
		  
		  
		  
		  return mv;
	  }
	  
	  @GetMapping("viewfcoursemapping")
	  public ModelAndView viewfcoursemapping()
	  {
		  ModelAndView mv = new ModelAndView("viewfcoursemapping");
		  
		  List<FacultyCourseMapping> fcmlist = adminService.displayFacultyCourseMapping();
		  mv.addObject("fcmdata", fcmlist);
	 	  
		  return mv;
	  }
	  
	  
	  
	  @GetMapping("checkattendence")
	  public ModelAndView viewfcoursemapping1()
	  {
		  ModelAndView mv = new ModelAndView("checkattendence");
		  
		  List<FacultyCourseMapping> fcmlist = adminService.displayFacultyCourseMapping();
		  mv.addObject("fcmdata", fcmlist);
	 	  
		  return mv;
	  }
	
	
	
	
	
	
	
	
	
}