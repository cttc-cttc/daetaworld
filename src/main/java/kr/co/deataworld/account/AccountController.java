package kr.co.deataworld.account;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String name, String password, HttpSession session) {
		logger.info("name : " + name + " / password : " + password);
		if(name.equals("admin") && password.equals("admin123")) {
			session.setAttribute("loginUser", name);
		} else {
			return "redirect:login";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
