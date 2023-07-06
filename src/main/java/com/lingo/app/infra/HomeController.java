package com.lingo.app.infra;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/home")
	public String home() {
		return "/home";
	}
	
	@RequestMapping(value = "/chatting")
	public String chatting() {
		return "infra/chatting/chatting";
	}
	
}
