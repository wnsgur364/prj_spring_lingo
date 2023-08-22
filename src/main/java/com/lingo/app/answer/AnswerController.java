package com.lingo.app.answer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AnswerController {

	
	@Autowired
	AnswerServiceImpl service;
	
	@RequestMapping("/answerList")
	 public String answerList(@ModelAttribute("vo") AnswerVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
    	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
        List<Answer> list = service.selectList(vo);
        model.addAttribute("list", list); 
		}else {
			
		}
        return "infra/admin/answer/answerList";
	
	}
	
	@RequestMapping("/answerForm")
	public String answerForm(AnswerVo vo, Model model) {

		Answer item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		
		return "infra/admin/answer/answerForm";
	}
		
	
	@RequestMapping("/answerUpdt")
	public String answerUpdt(Answer dto) {
		service.update(dto);
		return "redirect:/answerList";
	}
	
	@RequestMapping("/answerDele")
	public String answerDele(Answer dto) {
		service.delete(dto);
		return "redirect:/answerList";
	}
	
	@RequestMapping("/answerInst")
	public String answerInst(Answer dto) {
		service.insert(dto);
		return "redirect:/answerList";
	}
	
	
	
}
