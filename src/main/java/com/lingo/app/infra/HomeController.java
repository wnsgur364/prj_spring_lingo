package com.lingo.app.infra;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/index")
	public String index() {
		return "/infra/user/index/index";
	}
	
	@RequestMapping("/material")
	public String material() {
		return "/infra/user/index/materials";
	}
	
	@RequestMapping("/chatting")
	public String chatting() {
		return "infra/chatting/chatting";
	}
	
	@RequestMapping("/begginer")
	public String bigginer() {
		return "/infra/user/index/begginer";
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
	
}
