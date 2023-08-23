package com.lingo.app.learning;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LearningController {

	
	@Autowired
	LearningServiceImpl service;
	
	@RequestMapping("/learningList")
	 public String learningList(@ModelAttribute("vo") LearningVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
    	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
        List<Learning> list = service.selectList(vo);
        model.addAttribute("list", list); 
		}else {
			
		}
        return "infra/admin/learning/learningList";
	
	}
	
	@RequestMapping("/learningForm")
	public String learningForm(LearningVo vo, Model model) {

		Learning item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		
		return "infra/admin/learning/learningForm";
	}
		
	
	@RequestMapping("/learningUpdt")
	public String learningrUpdt(Learning dto) {
		service.update(dto);
		return "redirect:/learningList";
	}
	
	@RequestMapping("/learningDele")
	public String learningDele(Learning dto) {
		service.delete(dto);
		return "redirect:/learningList";
	}
	
	@RequestMapping("/learningInst")
	public String learningInst(Learning dto) {
		service.insert(dto);
		return "redirect:/learningList";
	}
}
