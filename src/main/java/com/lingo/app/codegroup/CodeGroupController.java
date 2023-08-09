package com.lingo.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lingo.app.codegroup.CodeGroup;
import com.lingo.app.codegroup.CodeGroupVo;


@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	

	
	    @RequestMapping("/codeGroupList")
	    public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
	        
	    	vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	    	
			vo.setParamsPaging(service.selectOneCount(vo));
	    	
	    	
			if(vo.getTotalRows() > 0) {
	    	List<CodeGroup> list = service.selectList(vo);
	        model.addAttribute("list", list); 
			} else {
			
			}
	        return "infra/admin/codeGroup/codeGroupList";
	    }
	    
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {


		CodeGroup item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		 return "/infra/admin/codeGroup/codeGroupForm";
	}
		
	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupDele")
	public String codeGroupDele(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupUele")
	public String codeGroupUele(CodeGroup dto) {
		service.uelete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupInst")
	public String codeGroupInst(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupList";
	}

}
	
	
	

