package demo.spring.core;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import demo.spring.dao.User;
import demo.spring.service.UsersService;

@Controller
public class LoginController {
	
	private UsersService usersService;
	
	
	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping("/createaccount")
	public String createAccount(Model model) {
	
		model.addAttribute("user", new User());
		return "createaccount";
	}
	
	@RequestMapping("/loggedout")
	public String showLoggedOut() {
		return "loggedout";
	}

	@RequestMapping("/newaccount")
	public String doCreateAccount(Model model, @Valid User user, BindingResult result) {
	
		

		if (result.hasErrors()) {
			return "createaccount";
		} 
		
		if (!(user.getPassword().equals(user.getConfirmPass()))) {
			return "createaccount";
		}
		
		user.setEnabled(true);
		user.setAuthority("USER");
		try {
			usersService.create(user);
			
		} catch (DuplicateKeyException e) {
			result.rejectValue("name", "DuplicateKey.user.username ", "This username already exists!");
			return "createaccount";
		}
		
		
		
		
		
		return "accountcreated";
}
}