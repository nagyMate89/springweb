package demo.spring.core;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHome() {

		return "home";
	}
	
	@RequestMapping("/admin")
	public String showAdminPage() {

		return "admin";
	}
	
	@RequestMapping("/login")
	public String showLoginPage() {

		return "login";
	}
}
