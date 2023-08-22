package com.lingo.app.submit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SubmitController {

	@Autowired
	SubmitServiceImpl service;
	
	@RequestMapping("/submitInsert")
	public String submitInsert(Submit dto) {
		service.insert(dto);
		return "redirect:/quiz";
	}
	
	
}
