package com.lingo.app.infra;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		return "/infra/user/index/index";
	}
	
	@RequestMapping("/materials")
	public String materials() {
		return "/infra/user/index/materials";
	}
	
	@RequestMapping("/chatting")
	public String chatting() {
		return "infra/chatting/chatting";
	}
	
	@RequestMapping("/begginner")
	public String bigginer() {
		return "/infra/user/index/begginner";
	}
	
	@RequestMapping("/intermediate")
	public String interdadiate() {
		return "/infra/user/index/intermediate";
	}
	
	@RequestMapping("/advanced")
	public String advanced() {
		return "/infra/user/index/advanced";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "/infra/user/index/contact";
	}
	@RequestMapping("/testScores")
	public String testScores() {
		return "/infra/user/index/testScores";
	}


}