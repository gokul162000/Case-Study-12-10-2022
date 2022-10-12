package com.gl.caseStudy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.gl.caseStudy.bean.CompanyShare;
import com.gl.caseStudy.service.ShareService;


@RestController
public class ShareController {
	@Autowired
	private ShareService service;
	
	@GetMapping("/index")
	public ModelAndView showIndexPage() {
		ModelAndView mv=new ModelAndView();
		List<CompanyShare> cshareList=service.findAll();
		
		mv.addObject("cshareList",cshareList);
		return mv;
	
	
	}
	
	@GetMapping("/company-entry")
	public ModelAndView showCourseEntryPage() {
		CompanyShare share=new CompanyShare();
		ModelAndView mv=new ModelAndView("companyEntryPage");
		mv.addObject("cshareRecord", share);
		return mv;
	}
	@PostMapping("/company")
	public ModelAndView saveNewCourse(@ModelAttribute("cshareRecord") CompanyShare share) {
		long id=service.generateShareId();
		share.setCompanyId(id);
		service.save(share);
		return new ModelAndView("redirect:/index");
	}
	
	@GetMapping("delete-company/{id}")
	public ModelAndView deleteAcourse(@PathVariable long id) {
		service.delete(id);
		return new ModelAndView("redirect:/index");
	}
	@GetMapping("/edit-share/{id}")
	public ModelAndView showCourseEditPage(@PathVariable long id) {
		CompanyShare share=service.findById(id);
		ModelAndView mv = new ModelAndView("cshareEditPage");
		mv.addObject("cshareRecord", share);
		return mv;
	}
	@PostMapping("/edit-share/company-edit")
	public ModelAndView editCourse(@ModelAttribute("cshareRecord") CompanyShare share) {
		
		service.save(share);
		return new ModelAndView("redirect:/index");

		}

}
