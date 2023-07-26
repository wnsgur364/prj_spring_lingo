package com.lingo.app.quiz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuizController {

	@RequestMapping("/quiz") 
	public String quiz() {
		return "/infra/user/index/quiz";
	}
	
}
