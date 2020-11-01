package com.assignment.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.assignment.bean.Feedback;
import com.assignment.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@GetMapping(path="/")
	public String homePage() {
		
		return "home";
	}
	
	@GetMapping(path="/addFeedback")
	public String addFeedback(ModelMap model,Feedback feedback) {
		model.addAttribute("feedback", feedback);
		return "addFeedback";
	}
	
	@GetMapping(path="/showFeedback")
	public String showFeedback(ModelMap model) {
		
		List<Feedback> list = userService.showFeedback();
		model.addAttribute("userFeedbackList", list);
		return "showFeedbackBootstrap";
	}
	
	@PostMapping(path="/saveFeedback")
	public String saveFeedback(@Valid @ModelAttribute("feedback") Feedback feedback,BindingResult result, ModelMap model) {
		if(result.hasErrors()) {
			return "addFeedback";
		}
		Integer id = userService.save(feedback);
		
		if(id ==0) {
			model.addAttribute("message", "Record not saved....");
			model.addAttribute("msgBgColor", "red");
			return "addFeedback";
		}
		return "redirect:/showFeedback";
	}

}
//testing



