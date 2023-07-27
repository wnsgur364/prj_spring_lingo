package com.lingo.app.quiz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lingo.app.answer.AnswerServiceImpl;
import com.lingo.app.answer.AnswerVo;

@Controller
public class QuizController {

	@Autowired
	QuizServiceImpl qService;
	@Autowired
	AnswerServiceImpl aService;
	
	@RequestMapping("/NewFile")
	public String quiz(QuizVo qvo, Model qModel, AnswerVo avo, Model aModel) {
		qModel.addAttribute("quiz", qService.selectList(qvo));
		aModel.addAttribute("answer", aService.selectList(avo));
		
		return "/infra/user/index/NewFile";
	}
}
