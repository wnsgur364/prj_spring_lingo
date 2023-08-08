package com.lingo.app.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping ("/indexAdmin")
	public String indexAdmin() {
		return "/infra/admin/modules/indexAdmin";
	}
	
	@RequestMapping ("/tables")
	public String tables() {
		return "/infra/admin/modules/tables";
	}

		
			
}
