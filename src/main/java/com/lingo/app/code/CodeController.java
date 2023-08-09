//package com.lingo.app.code;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.lingo.app.code.Code;
//import com.lingo.app.code.CodeVo;
//
//@Controller
//public class CodeController {
//	
//	@Autowired
//	CodeServiceImpl service;
//	
//	
//	
//	@RequestMapping("/codeList")
//	 public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) {
//        List<CodeList> list = service.selectList(vo);
//        model.addAttribute("list", list); 
//        return "infra/admin/codeGroup/codeGroupList";
//	
//	}
//	
//	@RequestMapping("/codeForm")
//	public String codeForm() {
//
//
//		
//		return "infra/admin/code/codeForm";
//	}
//		
//	
//	@RequestMapping("/codeUpdt")
//	public String codeUpdt(Code dto) {
//		service.update(dto);
//		return "redirect:/codeList";
//	}
//	
//	@RequestMapping("/codeDele")
//	public String codeDele(Code dto) {
//		service.delete(dto);
//		return "redirect:/codeList";
//	}
//	
//	@RequestMapping("/codeUele")
//	public String codeUele(Code dto) {
//		service.uelete(dto);
//		return "redirect:/codeList";
//	}
//	
//	@RequestMapping("/codeInst")
//	public String codeInst(Code dto) {
//		service.insert(dto);
//		return "redirect:/codeList";
//	}
//
//}
