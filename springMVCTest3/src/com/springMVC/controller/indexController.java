package com.springMVC.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.report.model.dept;
import com.report.service.deptService;

@Controller
public class indexController{
	@Autowired
	private deptService deptService;
	
	@RequestMapping( value="/index")
	public ModelAndView index(HttpServletRequest arg0, HttpServletResponse arg1)
			throws Exception {
		// TODO Auto-generated method stub
		ModelAndView model=new ModelAndView();
		
		dept dept=deptService.getAllDept("P0003501");
		System.out.println("xxx:"+dept.getName());
		
		model.addObject("demoStr", dept.getName());
		model.setViewName("index");
		return model;
	}
}
